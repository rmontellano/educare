/**
 * Clase DTO para obtener el Criterio
 */
package mx.com.educare.dto;

import java.io.Serializable;

/**
 * @author tonyocampoc@gmail.com
 *
 */
public class Criterio implements Serializable {

	/**
	 * Instancia de Grupo
	 */
	public Criterio() {
	}

	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = 4690141436696195217L;

	/**
	 * The idCriterio.
	 */
	private int idCriterio;

	/**
	 * The idCriterio.
	 */
	private int tipoCriterio;

	/**
	 * The descripcion.
	 */
	private String descripcion;

	/**
	 * The calculoCriterio.
	 */
	private int calculoCriterio;

	/**
	 * The status.
	 */
	private int status;

	/**
	 * @return the idCriterio
	 */
	public int getIdCriterio() {
		return idCriterio;
	}

	/**
	 * @param idCriterio the idCriterio to set
	 */
	public void setIdCriterio(int idCriterio) {
		this.idCriterio = idCriterio;
	}

	/**
	 * @return the tipoCriterio
	 */
	public int getTipoCriterio() {
		return tipoCriterio;
	}

	/**
	 * @param tipoCriterio the tipoCriterio to set
	 */
	public void setTipoCriterio(int tipoCriterio) {
		this.tipoCriterio = tipoCriterio;
	}

	/**
	 * @return the descripcion
	 */
	public String getDescripcion() {
		return descripcion;
	}

	/**
	 * @param descripcion the descripcion to set
	 */
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	/**
	 * @return the calculocriterio
	 */
	public int getCalculoCriterio() {
		return calculoCriterio;
	}

	/**
	 * @param calculocriterio the calculocriterio to set
	 */
	public void setCalculoCriterio(int calculocriterio) {
		this.calculoCriterio = calculocriterio;
	}

	/**
	 * @return the status
	 */
	public int getStatus() {
		return status;
	}

	/**
	 * @param status the status to set
	 */
	public void setStatus(int status) {
		this.status = status;
	}

}
