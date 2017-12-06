/**
 * Clase DTO para obtener EmpleadoRespuesta
 */
package mx.com.educare.dto;

import mx.com.educare.dto.util.EncabezadoRespuesta;
import mx.com.educare.dto.util.ObjetoValor;

/**
 * @author ca.ocampo
 *
 */
public class EmpleadoRespuesta  extends ObjetoValor {

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
