/**
 * Clase DTO para obtener PuestoRespuesta
 */
package mx.com.educare.dto;

import java.io.Serializable;

import mx.com.educare.dto.util.EncabezadoRespuesta;

/**
 * @author tonyocampoc@gmail.com
 *
 */
public class PuestoRespuesta implements Serializable{

	/**
	 * Instancia de PuestoRespuesta
	 */
	public PuestoRespuesta() {
	}

	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = 1325699155811434490L;

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
