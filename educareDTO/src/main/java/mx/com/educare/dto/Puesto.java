/**
 * Clase DTO para obtener el Criterio
 */
package mx.com.educare.dto;

import java.io.Serializable;

/**
 * @author tonyocampoc@gmail.com
 *
 */
public class Puesto implements Serializable {

	/**
	 * Instancia de Puesto
	 */
	public Puesto() {
	}

	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = 6394552517210088888L;

	/**
	 * The idPuesto.
	 */
	private int idPuesto;

	/**
	 * The descripcion.
	 */
	private String descripcion;

	/**
	 * The status.
	 */
	private int status;

	/**
	 * @return the idPuesto
	 */
	public int getIdPuesto() {
		return idPuesto;
	}

	/**
	 * @param idPuesto the idPuesto to set
	 */
	public void setIdPuesto(int idPuesto) {
		this.idPuesto = idPuesto;
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
