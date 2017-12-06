/**
 * Clase DTO para obtener AlumnoRespuesta
 */
package mx.com.educare.dto;

import mx.com.educare.dto.util.EncabezadoRespuesta;
import mx.com.educare.dto.util.ObjetoValor;

/**
 * @author tonyocampoc@gmail.com
 *
 */
public class AlumnoRespuesta extends ObjetoValor {

	/**
	 * Instancia de AlumnoRespuesta
	 */
	public AlumnoRespuesta() {
	}

	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = -6470025492861447969L;

	/** The header. */
	private EncabezadoRespuesta header;

	/**
	 * @return the header
	 */
	public EncabezadoRespuesta getHeader() {
		return header;
	}

	/**
	 * @param header the header to set
	 */
	public void setHeader(EncabezadoRespuesta header) {
		this.header = header;
	}
}
