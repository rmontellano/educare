/**
 * Clase DTO para obtener el GrupoAlumnoRespuesta
 */
package mx.com.educare.dto;

import mx.com.educare.dto.util.EncabezadoRespuesta;
import mx.com.educare.dto.util.ObjetoValor;

/**
 * @author tonyocampoc@gmail.com
 *
 */
public class GrupoAlumnoRespuesta extends ObjetoValor {

	/**
	 * Instancia de GrupoAlumnoRespuesta
	 */
	public GrupoAlumnoRespuesta() {
	}

	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = -2475700645896964555L;

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
