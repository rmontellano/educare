/**
 * Clase DTO para obtener PerfilRespuesta
 */
package mx.com.educare.dto;

import java.io.Serializable;

import mx.com.educare.dto.util.EncabezadoRespuesta;

/**
 * @author ca.ocampo
 *
 */
public class PerfilRespuesta implements Serializable {

	/**
	 * Instancia de PerfilRespuesta
	 */
	public PerfilRespuesta() {
	}

	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = -7680321861948377040L;

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
