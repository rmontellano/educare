/**
 * Clase DTO para obtener el grado
 */
package mx.com.educare.dto;

import java.io.Serializable;

/**
 * @author tonyocampoc@gmail.com
 *
 */
public class Grado implements Serializable {

	/**
	 * Instancia de Grado
	 */
	public Grado() {
	}

	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = -6681367391022921616L;

	/**
	 * The idGrado.
	 */
	private Integer idGrado;
	/**
	 * The idSeccion.
	 */
	private Integer idSeccion;
	/**
	 * The numGrado.
	 */
	private Integer numGrado;
	/**
	 * The ultimoGrado.
	 */
	private Integer ultimoGrado;
	/**
	 * The status.
	 */
	private Integer status;
	/**
	 * The descripcion.
	 */
	private String descripcion;

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
	 * @return the numGrado
	 */
	public Integer getNumGrado() {
		return numGrado;
	}
	/**
	 * @param numGrado the numGrado to set
	 */
	public void setNumGrado(Integer numGrado) {
		this.numGrado = numGrado;
	}
	/**
	 * @return the ultimoGrado
	 */
	public Integer getUltimoGrado() {
		return ultimoGrado;
	}
	/**
	 * @param ultimoGrado the ultimoGrado to set
	 */
	public void setUltimoGrado(Integer ultimoGrado) {
		this.ultimoGrado = ultimoGrado;
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
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Grado [idGrado=" + idGrado + ", idSeccion=" + idSeccion + ", numGrado=" + numGrado + ", ultimoGrado="
				+ ultimoGrado + ", status=" + status + ", descripcion=" + descripcion + "]";
	}	
}
