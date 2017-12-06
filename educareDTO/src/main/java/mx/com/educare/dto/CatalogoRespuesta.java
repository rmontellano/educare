/**
 * Clase DTO para obtener el CatalogoRespuesta
 */
package mx.com.educare.dto;

import java.util.List;

import mx.com.educare.dto.util.EncabezadoRespuesta;
import mx.com.educare.dto.util.ObjetoValor;

/**
 * @author tonyocampoc@gmail.com
 *
 */
public class CatalogoRespuesta extends ObjetoValor {

	/**
	 * Instancia de CatalogoRespuesta
	 */
	public CatalogoRespuesta() {
	}

	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = -4880491964064839505L;

	/** The header. */
	private EncabezadoRespuesta header;

	/** The Catalogo. */
	List<Catalogo> catalogo;

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
	 * @return the catalogo
	 */
	public List<Catalogo> getCatalogo() {
		return catalogo;
	}

	/**
	 * @param catalogo the catalogo to set
	 */
	public void setCatalogo(List<Catalogo> catalogo) {
		this.catalogo = catalogo;
	}
}
