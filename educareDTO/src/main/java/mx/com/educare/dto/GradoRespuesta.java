/**
 *
 */
package mx.com.educare.dto;

import java.util.List;

import mx.com.educare.dto.util.EncabezadoRespuesta;
import mx.com.educare.dto.util.ObjetoValor;

/**
 * @author tonyocampoc@gmail.com
 *
 */
public class GradoRespuesta extends ObjetoValor {

	/**
	 * Instancia de Grado
	 */
	public GradoRespuesta() {
	}

	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = -7474819634480749644L;

	/** The header. */
	private EncabezadoRespuesta header;

	/** The Grado. */
	List<Grado> grados;

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

	/**
	 * @return the grados
	 */
	public List<Grado> getGrados() {
		return grados;
	}

	/**
	 * @param grados the grados to set
	 */
	public void setGrados(List<Grado> grados) {
		this.grados = grados;
	}
}
