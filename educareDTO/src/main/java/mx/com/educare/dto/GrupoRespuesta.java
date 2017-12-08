/**
 * Clase DTO para obtener el GrupoRespuesta
 */
package mx.com.educare.dto;

import java.io.Serializable;
import java.util.List;

import mx.com.educare.dto.util.EncabezadoRespuesta;

/**
 * @author tonyocampoc@gmail.com
 *
 */
public class GrupoRespuesta implements Serializable {

	/**
	 * Instancia de GrupoRespuesta
	 */
	public GrupoRespuesta() {
	}

	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = 4099352442071816927L;

	/** The header. */
	private EncabezadoRespuesta header;

	/** The Grupo. */
	List<Grupo> grupos;

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
	 * @return the grupos
	 */
	public List<Grupo> getGrupos() {
		return grupos;
	}

	/**
	 * @param grupos the grupos to set
	 */
	public void setGrupos(List<Grupo> grupos) {
		this.grupos = grupos;
	}
}
