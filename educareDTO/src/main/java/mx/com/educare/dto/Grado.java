/**
 * Clase DTO para obtener el grado
 */
package mx.com.educare.dto;

import mx.com.educare.dto.util.ObjetoValor;

/**
 * @author tonyocampoc@gmail.com
 *
 */
public class Grado extends ObjetoValor {

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
	private int idGrado;
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
	 * The status.
	 */
	private int status;
	/**
	 * The descripcion.
	 */
	private String descripcion;
	/**
	 * @return the idGrado
	 */
	public int getIdGrado() {
		return idGrado;
	}
	/**
	 * @param idGrado the idGrado to set
	 */
	public void setIdGrado(int idGrado) {
		this.idGrado = idGrado;
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
}
