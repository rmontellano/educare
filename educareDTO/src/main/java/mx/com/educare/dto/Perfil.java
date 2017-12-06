/**
 * Clase DTO para obtener el Perfil
 */
package mx.com.educare.dto;

import mx.com.educare.dto.util.ObjetoValor;

/**
 * @author tonyocampoc@gmail.com
 *
 */
public class Perfil extends ObjetoValor {

	/**
	 * Instancia de Perfil
	 */
	public Perfil() {
	}

	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = -5761360633468813384L;

	/**
	 * The idPerfil.
	 */
	private int idPerfil;

	/**
	 * The nombre.
	 */
	private String nombre;

	/**
	 * The descripcion.
	 */
	private String descripcion;

	/**
	 * The status.
	 */
	private String status;

	/**
	 * @return the idPerfil
	 */
	public int getIdPerfil() {
		return idPerfil;
	}

	/**
	 * @param idPerfil the idPerfil to set
	 */
	public void setIdPerfil(int idPerfil) {
		this.idPerfil = idPerfil;
	}

	/**
	 * @return the nombre
	 */
	public String getNombre() {
		return nombre;
	}

	/**
	 * @param nombre the nombre to set
	 */
	public void setNombre(String nombre) {
		this.nombre = nombre;
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
	public String getStatus() {
		return status;
	}

	/**
	 * @param status the status to set
	 */
	public void setStatus(String status) {
		this.status = status;
	}
}
