/**
 *
 */
package mx.com.educare.dto;

import mx.com.educare.dto.util.EncabezadoRespuesta;
import mx.com.educare.dto.util.ObjetoValor;

/**
 * @author ca.ocampo
 *
 */
public class PerfilMenuRespuesta extends ObjetoValor {

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
