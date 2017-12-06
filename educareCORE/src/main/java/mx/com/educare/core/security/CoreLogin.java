package mx.com.educare.core.security;

import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.TimeZone;

import mx.com.educare.constantes.Constantes;
import mx.com.educare.dao.factory.EducareDAOFactory;
import mx.com.educare.dto.auth.Auth;
import mx.com.educare.dto.auth.Usuario;
import mx.com.educare.dto.util.EncabezadoRespuesta;
import mx.com.educare.util.Convert;
import mx.com.educare.util.excepciones.EducareException;

public class CoreLogin {
	/**
	 * Obtener el TimeStamp Long
	 */
	private static final long VAR_LONG_TIME = 1000L;
	/**
	 * Conversión a long para el timestamp
	 */
	public static final int LONG_TRANS = 1000;

	public Auth validaCredenciales(final String q, final String uid) {
		String hashPass = null;
		String usuario = null;
		String[] parametros = null;
		Auth retorno = new Auth();

		EducareDAOFactory dao = new EducareDAOFactory();

		try {
			parametros = obtenerParametros(q);
			usuario = Convert.convertHexToString(parametros[0]);

			Usuario respuesta = dao.obtenerInstanciaDao().buscarUsuario(uid, usuario);

			if(respuesta != null) {
				hashPass = SeguridadEducare.getSHA256(Convert.convertHexToString(parametros[1]));
				if(respuesta.getContrasena().equals(hashPass)) {
					retorno.setHeader(new EncabezadoRespuesta(uid));
					retorno.setToken(this.obtenerParam(respuesta.getIdEmpleado()));
				} else {
					retorno.setHeader(new EncabezadoRespuesta("Contraseña invalida.", false));
				}
			} else {
				retorno.setHeader(new EncabezadoRespuesta("Usuario no encontrado.", false));
			}
			return retorno;
			
		} catch (Exception e) {
			retorno.setHeader(new EncabezadoRespuesta(e.getMessage(), false));
			return retorno;
		}

	}
	/**
	 * Regresa parametros de un string debidamente formateado con el char de la
	 * constante DELIMETER_PARAM y regresa esos parametros en un arreglo
	 * 
	 * @param param
	 *            string con un delimitador que existe en la constante
	 *            DELIMETER_PARAM
	 * @return String[] arreglo de parametros de 2 posiciones
	 * @throws Exception
	 *             al generar el arreglo de 2 posiciones si no viene el
	 *             delimitador correspondiente habra una exception indexOfBounds
	 */
	private String[] obtenerParametros(String param) throws EducareException {
		String[] parametros = null;
		String[] parametrosConvert = null;

		try {
			parametrosConvert = new String[2];
			parametros = param.split(Constantes.DELIMETER_PARAM.getString());

			parametrosConvert[0] = parametros[0];
			parametrosConvert[1] = parametros[1];

		} catch (Exception e) {
			System.out.println("Error debido a: " + e.getMessage());
			throw new EducareException("Error al descomponer los parametros.");
		}
		return parametrosConvert;
	}

	/**
	 * Metodo para obtener el parametro formateado para mandarlo por url el cual
	 * consta de 2 componentes el primero es un valor hexadecimal acorde al # de
	 * empleado y el segundo hace referencia a la fecha en epoch time.
	 * 
	 * @param valor
	 *            para convertir en hexadecimal y concatenar al parametro de
	 *            retorno.
	 * @return String debidamente formateado para retornarlo y tratarlo a lo
	 *         largo de la app
	 * @throws Exception
	 *             al convertir el valor en hexadecimal y/o convertir en epoch
	 *             time a hexadecimal
	 */
	private String obtenerParam(String valor) throws EducareException {
		Calendar fechaTimeStamp = Calendar.getInstance(TimeZone.getTimeZone("America/Mexico_City"));
		String param = "";
		String valorConvert = "";
		long valorConverLong = 0L;
		String valorParam;
		System.out.println("Valor de entrada : " + valor);
		try {
			valorConvert = Convert.convertStringToHex(valor);
			valorConverLong = fechaTimeStamp.getTimeInMillis() / VAR_LONG_TIME;
			valorParam = Convert.convertStringToHex(String.valueOf(valorConverLong));
			param = valorConvert + Constantes.DELIMETER_PARAM.getString() + valorParam;

		} catch (Exception e) {
			System.out.println("Error debido a: " + e.getMessage());
			throw new EducareException("Error al obtener parametros.");
		}
		return param;	
	}
	
	public Auth validaToken(final String token, final String uid) {
		String[] arrayParams = null;
		String idEmpleado = null;
		String timeStamp = null;
		String fechaRequest = null;
		String fechaServidor = null;
		Calendar fechaTimeStamp = Calendar.getInstance(TimeZone.getTimeZone("America/Mexico_City"));
		Calendar fechaActual = Calendar.getInstance(TimeZone.getTimeZone("America/Mexico_City"));
		Auth retorno = new Auth();

		try {
			arrayParams = token.split(Constantes.DELIMETER_PARAM.getString());

			idEmpleado = Convert.convertHexToString(arrayParams[0]);
			timeStamp = Convert.convertHexToString(arrayParams[1]);

			System.out.println("Persona: " + idEmpleado);
			System.out.println("Epoch: " + timeStamp + "\n >>>>>>> Long.parseLong(timeStamp) : " + Long.parseLong(timeStamp));

			fechaTimeStamp.setTimeInMillis((long) Long.parseLong(timeStamp) * LONG_TRANS);

			DateFormat dfg = SimpleDateFormat.getDateInstance(DateFormat.DATE_FIELD);

			fechaRequest = dfg.format(fechaTimeStamp.getTime());
			fechaServidor = dfg.format(fechaActual.getTime());

			System.out.println("fechaTimeStamp: " + fechaTimeStamp.getTimeInMillis());
			System.out.println("fechaActual: " + fechaActual.getTimeInMillis());

			System.out.println("Comparacion : dateEntrada - dateServidor::::  " + fechaRequest + " <=>" + fechaServidor);
		} catch (Exception e) {
			System.out.println("ERROR EN VALIDA TOKEN " + e.getMessage());
			retorno.setHeader(new EncabezadoRespuesta(e.getMessage(), false));
		}

		if (fechaRequest != null && fechaRequest.equals(fechaServidor)) {
			retorno.setHeader(new EncabezadoRespuesta(uid));
			retorno.setIdEmpleado(idEmpleado);
		} else {
			retorno.setHeader(new EncabezadoRespuesta("No es valido el token, es necesario volver a iniciar sesión", false));
		}

		return retorno;
		
	}
}
