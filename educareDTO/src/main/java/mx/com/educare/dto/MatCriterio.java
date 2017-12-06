/**
 * Clase DTO para obtener las materias con criterio
 */
package mx.com.educare.dto;

import mx.com.educare.dto.util.ObjetoValor;

/**
 * @author tonyocampoc@gmail.com
 *
 */
public class MatCriterio extends ObjetoValor {

	/**
	 * Instancia de Materia
	 */
	public MatCriterio() {
	}

	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = -6681367391022921616L;

	/**
	 * The idMateriaCriterio.
	 */
	private int idMateriaCriterio;

	/**
	 * The orden.
	 */
	private int orden;

	/**
	 * The porcentaje.
	 */
	private int porcentaje;

	/**
	 * The periodo.
	 */
	private int periodo;

	/**
	 * The idMateria.
	 */
	private String idMateria;

	/**
	 * The idCriterio.
	 */
	private int idCriterio;

	/**
	 * The status.
	 */
	private int status;

	/**
	 * @return the idMateriaCriterio
	 */
	public int getIdMateriaCriterio() {
		return idMateriaCriterio;
	}

	/**
	 * @param idMateriaCriterio the idMateriaCriterio to set
	 */
	public void setIdMateriaCriterio(int idMateriaCriterio) {
		this.idMateriaCriterio = idMateriaCriterio;
	}

	/**
	 * @return the orden
	 */
	public int getOrden() {
		return orden;
	}

	/**
	 * @param orden the orden to set
	 */
	public void setOrden(int orden) {
		this.orden = orden;
	}

	/**
	 * @return the porcentaje
	 */
	public int getPorcentaje() {
		return porcentaje;
	}

	/**
	 * @param porcentaje the porcentaje to set
	 */
	public void setPorcentaje(int porcentaje) {
		this.porcentaje = porcentaje;
	}

	/**
	 * @return the periodo
	 */
	public int getPeriodo() {
		return periodo;
	}

	/**
	 * @param periodo the periodo to set
	 */
	public void setPeriodo(int periodo) {
		this.periodo = periodo;
	}

	/**
	 * @return the idMateria
	 */
	public String getIdMateria() {
		return idMateria;
	}

	/**
	 * @param idMateria the idMateria to set
	 */
	public void setIdMateria(String idMateria) {
		this.idMateria = idMateria;
	}

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
