/**
 * Clase DTO para obtener el Menu
 */
package mx.com.educare.dto;

import java.io.Serializable;

/**
 * @author tonyocampoc@gmail.com
 *
 */
public class Menu implements Serializable {

	/**
	 * Instancia de Menu
	 */
	public Menu() {
	}

	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = 7201803023659966404L;

	/**
	 * The idMenu.
	 */
	private int idMenu;

	/**
	 * The idPadre.
	 */
	private int idPadre;

	/**
	 * The menu.
	 */
	private String menu;

	/**
	 * The descripcion.
	 */
	private String descripcion;

	/**
	 * The pagina.
	 */
	private String pagina;

	/**
	 * The status.
	 */
	private String status;

	/**
	 * The submenus.
	 */
	private String submenus;

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
	 * @return the idPadre
	 */
	public int getIdPadre() {
		return idPadre;
	}

	/**
	 * @param idPadre the idPadre to set
	 */
	public void setIdPadre(int idPadre) {
		this.idPadre = idPadre;
	}

	/**
	 * @return the menu
	 */
	public String getMenu() {
		return menu;
	}

	/**
	 * @param menu the menu to set
	 */
	public void setMenu(String menu) {
		this.menu = menu;
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
	 * @return the pagina
	 */
	public String getPagina() {
		return pagina;
	}

	/**
	 * @param pagina the pagina to set
	 */
	public void setPagina(String pagina) {
		this.pagina = pagina;
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

	/**
	 * @return the submenus
	 */
	public String getSubmenus() {
		return submenus;
	}

	/**
	 * @param submenus the submenus to set
	 */
	public void setSubmenus(String submenus) {
		this.submenus = submenus;
	}
}
