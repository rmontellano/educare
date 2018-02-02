/**
 * Clase DTO para obtener el grupo
 */

package mx.com.educare.dto;

import java.io.Serializable;

/**
 * @author tonyocampoc@gmail.com
 *
 */
public class Grupo implements Serializable{

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
	private Integer idGrupo;

	/**
	 * The nomGrupo.
	 */
	private String nombreGrupo;

	/**
	 * The descripcion.
	 */
	private String descripcion;

	/**
	 * The capacidad.
	 */
	private Integer capacidad;

	/**
	 * The idgrado.
	 */
	private Integer idGrado;

	/**
	 * The tipoGrupo.
	 */
	private Integer tipoGrupo;

	/**
	 * The status.
	 */
	private Integer status;
	/**
	 * numero grado.
	 */
	private Integer numeroGrado;

	/**
	 * The seccion
	 */
	private String descripcionSeccion;
	/**
	 * grado y descripcion seccion
	 */
	private String descripcionGrado;
	/**
	 * grado y nombre grupo
	 */
	private String decripcionNombreGrupo;
	/**
	 * The idSeccion.
	 */
	private Integer idSeccion;
	/**
	 * @return the idGrupo
	 */
	public Integer getIdGrupo() {
		return idGrupo;
	}
	/**
	 * @param idGrupo the idGrupo to set
	 */
	public void setIdGrupo(Integer idGrupo) {
		this.idGrupo = idGrupo;
	}
	/**
	 * @return the nombreGrupo
	 */
	public String getNombreGrupo() {
		return nombreGrupo;
	}
	/**
	 * @param nombreGrupo the nombreGrupo to set
	 */
	public void setNombreGrupo(String nombreGrupo) {
		this.nombreGrupo = nombreGrupo;
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
	public Integer getCapacidad() {
		return capacidad;
	}
	/**
	 * @param capacidad the capacidad to set
	 */
	public void setCapacidad(Integer capacidad) {
		this.capacidad = capacidad;
	}
	/**
	 * @return the idGrado
	 */
	public Integer getIdGrado() {
		return idGrado;
	}
	/**
	 * @param idGrado the idGrado to set
	 */
	public void setIdGrado(Integer idGrado) {
		this.idGrado = idGrado;
	}
	/**
	 * @return the tipoGrupo
	 */
	public Integer getTipoGrupo() {
		return tipoGrupo;
	}
	/**
	 * @param tipoGrupo the tipoGrupo to set
	 */
	public void setTipoGrupo(Integer tipoGrupo) {
		this.tipoGrupo = tipoGrupo;
	}
	/**
	 * @return the status
	 */
	public Integer getStatus() {
		return status;
	}
	/**
	 * @param status the status to set
	 */
	public void setStatus(Integer status) {
		this.status = status;
	}
	/**
	 * @return the numeroGrado
	 */
	public Integer getNumeroGrado() {
		return numeroGrado;
	}
	/**
	 * @param numeroGrado the numeroGrado to set
	 */
	public void setNumeroGrado(Integer numeroGrado) {
		this.numeroGrado = numeroGrado;
	}
	/**
	 * @return the descripcionSeccion
	 */
	public String getDescripcionSeccion() {
		return descripcionSeccion;
	}
	/**
	 * @param descripcionSeccion the descripcionSeccion to set
	 */
	public void setDescripcionSeccion(String descripcionSeccion) {
		this.descripcionSeccion = descripcionSeccion;
	}
	/**
	 * @return the idSeccion
	 */
	public Integer getIdSeccion() {
		return idSeccion;
	}
	/**
	 * @param idSeccion the idSeccion to set
	 */
	public void setIdSeccion(Integer idSeccion) {
		this.idSeccion = idSeccion;
	}
	/**
	 * @return the descripcionGrado
	 */
	public String getDescripcionGrado() {
		return descripcionGrado;
	}
	/**
	 * @param descripcionGrado the descripcionGrado to set
	 */
	public void setDescripcionGrado(String descripcionGrado) {
		this.descripcionGrado = descripcionGrado;
	}
	/**
	 * @return the decripcionNombreGrupo
	 */
	public String getDecripcionNombreGrupo() {
		return decripcionNombreGrupo;
	}
	/**
	 * @param decripcionNombreGrupo the decripcionNombreGrupo to set
	 */
	public void setDecripcionNombreGrupo(String decripcionNombreGrupo) {
		this.decripcionNombreGrupo = decripcionNombreGrupo;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Grupo [idGrupo=" + idGrupo + ", nombreGrupo=" + nombreGrupo + ", descripcion=" + descripcion
				+ ", capacidad=" + capacidad + ", idGrado=" + idGrado + ", tipoGrupo=" + tipoGrupo + ", status="
				+ status + ", numeroGrado=" + numeroGrado + ", descripcionSeccion=" + descripcionSeccion
				+ ", descripcionGrado=" + descripcionGrado + ", decripcionNombreGrupo=" + decripcionNombreGrupo
				+ ", idSeccion=" + idSeccion + "]";
	}
}
