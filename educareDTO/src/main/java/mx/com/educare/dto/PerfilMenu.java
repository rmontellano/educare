/**
 *  Clase DTO para obtener PuestoRespuesta
 */
package mx.com.educare.dto;

import java.io.Serializable;

/**
 * @author  tonyocampoc@gmail.com
 *
 */
public class PerfilMenu implements Serializable {

	/**
	 * Instancia de PuestoRespuesta
	 */
	public PerfilMenu() {
	}

	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = 6273309747557667032L;

	/**
	 * The idPerfil.
	 */
	private int idPerfil;

	/**
	 * The idMenu.
	 */
	private int idMenu;

	/**
	 * The orden.
	 */
	private int orden;

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
	 * @return the idMenu
	 */
	public int getIdMenu() {
		return idMenu;
	}

	/**
	 * @param idMenu the idMenu to set
	 */
	public void setIdMenu(int idMenu) {
		this.idMenu = idMenu;
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
