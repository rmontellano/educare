/**
 * Clase DTO para obtener EmpleadoRespuesta
 */
package mx.com.educare.dto;

import java.io.Serializable;

import mx.com.educare.dto.util.EncabezadoRespuesta;

/**
 * @author ca.ocampo
 *
 */
public class EmpleadoRespuesta  implements Serializable {

	/**
	 * Instancia de PuestoRespuesta
	 */
	public EmpleadoRespuesta() {
	}

	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = -8732824938320035939L;

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
