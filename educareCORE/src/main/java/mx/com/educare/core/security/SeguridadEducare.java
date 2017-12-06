/**
 * 
 */
package mx.com.educare.core.security;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.TimeZone;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import javax.naming.NamingException;

import org.apache.commons.codec.binary.Base64;
import org.apache.log4j.Logger;

import com.sun.xml.xsom.impl.scd.ParseException;

import mx.com.educare.constantes.Constantes;

/**
 * @author hsamano
 *
 */
public class SeguridadEducare {
	private static final Logger LOGGER = Logger.getLogger(SeguridadEducare.class);
	/**
	 * Trasnformación a hex
	 */
	private static final int HEX_FORMAT = 16;
	/**
	 * Llave Secreta
	 */
	private static SecretKeySpec secretKey;
    /**
     * Llave en bytes
     */
    private static byte[] key;
    
    /**
     * Llave por default para encriptar y desencriptar información AES
     * esta es necesaria agregarla para usar los metodos decrypt y encrypt.
     * @param llave para generar el Digest
     * @throws UnsupportedEncodingException
     * @throws NoSuchAlgorithmException
     */
    public static void setKey(String llave) throws UnsupportedEncodingException, NoSuchAlgorithmException {
        MessageDigest sha = null;
        key = llave.getBytes("UTF-8");
        LOGGER.info("key.length del metodo setKey : " + key.length);
        sha = MessageDigest.getInstance("SHA-256");
        key = sha.digest(key);
        key = Arrays.copyOf(key, HEX_FORMAT); // Usa solo los primeros 128 bits
        secretKey = new SecretKeySpec(key, "AES");
    }
    /**
     * Encripta una cadena en AES y la devuelve en String
     * @param strParaEncriptar .
     * @return String
     */
    public static String encrypt(String strParaEncriptar) {
        try {
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(Cipher.ENCRYPT_MODE, secretKey);
            return Base64.encodeBase64String(cipher.doFinal(strParaEncriptar.getBytes("UTF-8")));
        } catch (Exception e) {
            LOGGER.error("Error mientras se encriptaba: " + e.toString());
        }
        return null;
    }
    /**
     * Desencripta una cadena AES y devuelve en String
     * @param strParaDesencriptar .
     * @return String
     */
    public static String decrypt(String strParaDesencriptar) {
        try {
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5PADDING");
            cipher.init(Cipher.DECRYPT_MODE, secretKey);
            return new String(cipher.doFinal(Base64.decodeBase64(strParaDesencriptar)));
        } catch (Exception e) {
            LOGGER.error("Error mientras se desencriptaba: " + e.toString());
        }
        return null;
    }
	/**
	 * Obtiene el HASH de cualquier cadena en SHA-256
	 * @param cadena para hacer Hashing SHA2
	 * @return String SHA-256
	 * @throws NoSuchAlgorithmException
	 */
	public static String getSHA256(final String cadena) throws NoSuchAlgorithmException {

        MessageDigest md = MessageDigest.getInstance("SHA-256");
        try {
			md.update(cadena.getBytes("UTF-8"));
		} catch (UnsupportedEncodingException es) {
			throw new NoSuchAlgorithmException(es.getMessage());
		}

        byte[] byteData = md.digest();

        //Convertir el byte al formato hex
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < byteData.length; i++) {
         sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, HEX_FORMAT).substring(1));
        }

    	return sb.toString();
	}
	/**
	 * Se genera un token nuevo incluyendo el numero de persona y la
	 * clave del Token que esta se encuentra en la clase Constantes.
	 * @param idEmpleado id del empleado para generar unico Token
	 * @param claveToken Palabla clave a concatenar en el token
	 * @return String Token
	 * @throws NoSuchAlgorithmException
	 * @throws NamingException
	 * @throws UnsupportedEncodingException
	 */
	public String generaToken(final String noPersona, final String claveToken)
			throws NoSuchAlgorithmException, NamingException, UnsupportedEncodingException {
		String sha2IdPersona = this.generaSha2Token(noPersona, claveToken);
		Calendar fecha = Calendar.getInstance(TimeZone.getTimeZone("America/Mexico_City"));
		//Caducidad
		fecha.add(Calendar.DATE, Constantes.TOKEN_DAYS.getInt());
        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yy");
        String strFecha = sdf.format(fecha.getTime());
        //System.out.println("String de la fecha: " + strFecha);
        String[] dateStr = null;
        dateStr = strFecha.split("-");
        String strUltimoNivel = dateStr[2] + sha2IdPersona + dateStr[0] + dateStr[1];

        //Clave para desencriptar token
        SeguridadEducare.setKey(Constantes.AES_PWD.getString());

        return SeguridadEducare.encrypt(strUltimoNivel.trim());
	}
	/**
	 * Genera el ultimo SHA2 para obtener la cadena a encriptar,
	 * este es el ultomo Hash que se hace para agregar la fecha de
	 * caducidad del Token.
	 * @param idEmpleado Clave del epmpleado
	 * @param claveToken Clave educare
	 * @return String Sha256
	 * @throws NoSuchAlgorithmException
	 */
	private String generaSha2Token(final String idEmpleado, final String claveToken) throws NoSuchAlgorithmException {
		String empleado = SeguridadEducare.getSHA256(idEmpleado);
		return SeguridadEducare.getSHA256(claveToken + "-" + empleado);
	}
	/**
	 * Se valida el Token obteniendo la fecha del mismo, para saber si aún es valido.
	 * @param token Token para validación de la caducidad
	 * @return boolean
	 * @throws ParseException
	 * @throws NoSuchAlgorithmException
	 * @throws UnsupportedEncodingException
	 * @throws java.text.ParseException 
	 */
	public boolean validaFechaToken(final String token)
			throws ParseException, UnsupportedEncodingException, NoSuchAlgorithmException, java.text.ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yy");
		GregorianCalendar fechaActual = new GregorianCalendar(TimeZone.getTimeZone("America/Mexico_City"));
		Calendar fechaToken = Calendar.getInstance(TimeZone.getTimeZone("America/Mexico_City"));

		//Clave para desencriptar token
        SeguridadEducare.setKey(Constantes.AES_PWD.getString());


        String strDesencriptado = SeguridadEducare.decrypt(token.trim());
        LOGGER.debug("strDesencriptado : " + strDesencriptado);

        String dateTokenStr = strDesencriptado.substring(Constantes.ANIO_STR_I.getInt(), Constantes.ANIO_STR_F.getInt());

        dateTokenStr = strDesencriptado.substring(Constantes.DIA_STR_I.getInt(), Constantes.DIA_STR_F.getInt())
        		+ "-" + strDesencriptado.substring(Constantes.MES_STR_I.getInt(), Constantes.MES_STR_F.getInt()) + "-" + dateTokenStr;
        LOGGER.debug("dateTokenStr : " + dateTokenStr);

        fechaToken.setTime(sdf.parse(dateTokenStr));

        int dias = 0;
        if (fechaToken.get(Calendar.YEAR) == fechaActual.get(Calendar.YEAR)) {
        	dias = fechaToken.get(Calendar.DAY_OF_YEAR) - fechaActual.get(Calendar.DAY_OF_YEAR) + 1;
        } else {
	        int rangoAnyos = fechaToken.get(Calendar.YEAR) - fechaActual.get(Calendar.YEAR);
	        for (int i = 0; i <= rangoAnyos; i++) {
	        	int diasAnio = fechaActual.isLeapYear(fechaActual.get(Calendar.YEAR))
	        			? Constantes.ANIO_BISIESTO.getInt() : Constantes.ANIO_NORMAL.getInt();
	        	if (i == 0) {
	        		dias = 1 + dias + (diasAnio - fechaActual.get(Calendar.DAY_OF_YEAR));
        		} else if (i == rangoAnyos) {
        			dias = dias + fechaToken.get(Calendar.DAY_OF_YEAR);
        		} else {
        			dias = dias + diasAnio;
        		}
	        }
        }
        LOGGER.info("Dias de diferencia : " + dias);

        return dias <= 0 ? false : true;
	}
	/**
	 * Valida el ultimo Hash del token con la información origen,
	 * para esto se necesita el numero de persona, la clave de Finsol
	 * que se encuentra en Constantes y el token ya desencriptado, no
	 * recibe el token directo AES.
	 * @param idEmpleado Clave del empleado para validar
	 * @param clave Clave EWducare para validar
	 * @param token Token a validar
	 * @return boolean
	 * @throws NoSuchAlgorithmException
	 */
	public boolean validaTokenDecrypt(final String idEmpleado, final String clave, final String token)
			throws NoSuchAlgorithmException {
		String sha2Token = this.getSha2Token(token);
		System.out.println("sha2Token : " + sha2Token);
		String sha2Generado = this.generaSha2Token(idEmpleado, clave);
		System.out.println("sha2Generado : " + sha2Generado);
		return sha2Token.equals(sha2Generado) ? true : false;
	}
	/**
	 * Se obtiene el ultimo hash del token para validarlo
	 * esto es del token ya desencriptado.
	 * @param token desencriptado
	 * @return Sha256
	 */
	private String getSha2Token(final String token) {
		return token.substring(Constantes.SHA2_STR_I.getInt(), Constantes.SHA2_STR_F.getInt());
	}

}
