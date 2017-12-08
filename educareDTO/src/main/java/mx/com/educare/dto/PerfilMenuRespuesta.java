/**
 *
 */
package mx.com.educare.dto;

import java.io.Serializable;

import mx.com.educare.dto.util.EncabezadoRespuesta;

/**
 * @author ca.ocampo
 *
 */
public class PerfilMenuRespuesta implements Serializable {

	/**
	 * Instancia de PerfilMenuRespuesta
	 */
	public PerfilMenuRespuesta() {
	}

	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = -7787032845339866337L;

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
