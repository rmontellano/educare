package mx.com.educare.util;

import java.util.ArrayList;
import java.util.List;

import mx.com.educare.constantes.Constantes;
import mx.com.educare.dto.Grado;

/**
 * clase que contendra los metodos de las distintas validaciones del sistema.
 * @author Isela
 * @version 1.0
 */
public class ValidadorReglas {
	
	/**
	 * convierte un string a un entero
	 * @param uid id de transaccion
	 * @param grado valor a convertir en entero
	 * @return  Integer resultado
	 */
	public static Integer validarGrado (String uid, String grado) {
		Integer valor = null;
		if (grado != null && !grado.trim().isEmpty()) {
			valor = Integer.parseInt(grado);
		} else {
			valor = 0;
		}
		return valor;
		
	}
	
	/**
	 * metodo que extrae los valores distintos de una colleccion segun su valor entero
	 * @param uid id unico de transaccion
	 * @param grado collecion
	 * @return List<Grado> regresa una lista de secciones
	 */
	public static List<Grado> comboUltimoGrado (String uid, List<Grado> listGradoPet) {	
		if (listGradoPet != null && listGradoPet.size() > 0) {
			for (Grado grado : listGradoPet) {
				if (grado != null && grado.getUltimoGrado() == 0) {
					grado.setDescripcion(Constantes.NO.getString());
				} else {
					grado.setDescripcion(Constantes.SI.getString());
				}
			}
		}	
		return listGradoPet;
	}

}
