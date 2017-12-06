/**
 * Clase DTO para obtener el CriterioRespuesta
 */
package mx.com.educare.dto;

import java.util.List;

import mx.com.educare.dto.util.EncabezadoRespuesta;
import mx.com.educare.dto.util.ObjetoValor;

/**
 * @author tonyocampoc@gmail.com
 *
 */
public class CriterioRespuesta extends ObjetoValor {

	/**
	 * Instancia de Criterio
	 */
	public CriterioRespuesta() {
	}

	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = 8557508964064914759L;

	/** The header. */
	private EncabezadoRespuesta header;

	/** The criterios. */
	List<Criterio> criterios;

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
	 * @return the criterios
	 */
	public List<Criterio> getCriterios() {
		return criterios;
	}

	/**
	 * @param criterios the criterios to set
	 */
	public void setCriterios(List<Criterio> criterios) {
		this.criterios = criterios;
	}
}
