/**
 * Clase DTO para obtener el MenuRespuesta
 */
package mx.com.educare.dto;

import java.util.List;

import mx.com.educare.dto.util.EncabezadoRespuesta;
import mx.com.educare.dto.util.ObjetoValor;

/**
 * @author tonyocampoc@gmail.com
 *
 */
public class MenuRespuesta extends ObjetoValor {

	/**
	 * Instancia de MenuRespuesta
	 */
	public MenuRespuesta() {
	}

	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = -5169332688471547665L;

	/** The header. */
	private EncabezadoRespuesta header;

	/** The Menu. */
	List<Menu> menus;

	/**
	 * @return the header
	 */
	public EncabezadoRespuesta getHeader() {
		return header;
	}

	/**
	 * @param header the header to set
	 */
	public void setHeader(EncabezadoRespuesta header) {
		this.header = header;
	}

	/**
	 * @return the menus
	 */
	public List<Menu> getMenus() {
		return menus;
	}

	/**
	 * @param menus the menus to set
	 */
	public void setMenus(List<Menu> menus) {
		this.menus = menus;
	}
}
