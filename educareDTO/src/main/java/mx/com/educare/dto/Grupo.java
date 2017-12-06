/**
 * Clase DTO para obtener el grupo
 */

package mx.com.educare.dto;

import mx.com.educare.dto.util.ObjetoValor;

/**
 * @author tonyocampoc@gmail.com
 *
 */
public class Grupo extends ObjetoValor {

	/**
	 * Instancia de Grupo
	 */
	public Grupo() {
	}

	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * The idGrupo.
	 */
	private int idGrupo;

	/**
	 * The nomGrupo.
	 */
	private String nomGrupo;

	/**
	 * The descripcion.
	 */
	private String descripcion;

	/**
	 * The capacidad.
	 */
	private int capacidad;

	/**
	 * The idgrado.
	 */
	private int idgrado;

	/**
	 * The tipoGrupo.
	 */
	private int tipoGrupo;

	/**
	 * The status.
	 */
	private int status;

	/**
	 * The seccion
	 */
	private String seccion;
	/**
	 * The idSeccion.
	 */
	private int idSeccion;
	/**
	 * The numGrado.
	 */
	private int numGrado;
	/**
	 * The ultimoGrado.
	 */
	private int ultimoGrado;


	/**
	 * @return the idGrupo
	 */
	public int getIdGrupo() {
		return idGrupo;
	}

	/**
	 * @param idGrupo the idGrupo to set
	 */
	public void setIdGrupo(int idGrupo) {
		this.idGrupo = idGrupo;
	}

	/**
	 * @return the nomGrupo
	 */
	public String getNomGrupo() {
		return nomGrupo;
	}

	/**
	 * @param nomGrupo the nomGrupo to set
	 */
	public void setNomGrupo(String nomGrupo) {
		this.nomGrupo = nomGrupo;
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
	 * @return the capacidad
	 */
	public int getCapacidad() {
		return capacidad;
	}

	/**
	 * @param capacidad the capacidad to set
	 */
	public void setCapacidad(int capacidad) {
		this.capacidad = capacidad;
	}

	/**
	 * @return the idgrado
	 */
	public int getIdgrado() {
		return idgrado;
	}

	/**
	 * @param idgrado the idgrado to set
	 */
	public void setIdgrado(int idgrado) {
		this.idgrado = idgrado;
	}

	/**
	 * @return the tipoGrupo
	 */
	public int getTipoGrupo() {
		return tipoGrupo;
	}

	/**
	 * @param tipoGrupo the tipoGrupo to set
	 */
	public void setTipoGrupo(int tipoGrupo) {
		this.tipoGrupo = tipoGrupo;
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

	/**
	 * @return the seccion
	 */
	public String getSeccion() {
		return seccion;
	}

	/**
	 * @param seccion the seccion to set
	 */
	public void setSeccion(String seccion) {
		this.seccion = seccion;
	}

	/**
	 * @return the idSeccion
	 */
	public int getIdSeccion() {
		return idSeccion;
	}

	/**
	 * @param idSeccion the idSeccion to set
	 */
	public void setIdSeccion(int idSeccion) {
		this.idSeccion = idSeccion;
	}

	/**
	 * @return the numGrado
	 */
	public int getNumGrado() {
		return numGrado;
	}

	/**
	 * @param numGrado the numGrado to set
	 */
	public void setNumGrado(int numGrado) {
		this.numGrado = numGrado;
	}

	/**
	 * @return the ultimoGrado
	 */
	public int getUltimoGrado() {
		return ultimoGrado;
	}

	/**
	 * @param ultimoGrado the ultimoGrado to set
	 */
	public void setUltimoGrado(int ultimoGrado) {
		this.ultimoGrado = ultimoGrado;
	}
}
