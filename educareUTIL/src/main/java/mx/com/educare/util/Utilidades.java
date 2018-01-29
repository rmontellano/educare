package mx.com.educare.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import mx.com.educare.log.LogHandler;

/**
 * 
 * @author Isela
 *
 */
public class Utilidades {

	public static String formatoFecha(String fecha) {
		String fechaFormateada = null;
		if (fecha != null) {
			// el que parsea
			SimpleDateFormat parseador = new SimpleDateFormat("dd-MM-yy");
			// el que formatea
			SimpleDateFormat formateador = new SimpleDateFormat("dd/MM/yy");
	
			Date date;
			try {
				date = parseador.parse(fecha);
				fechaFormateada  = formateador.format(date);
			} catch (ParseException e) {
				e.printStackTrace();
			}
			
		}
		return fechaFormateada;
	}
}
