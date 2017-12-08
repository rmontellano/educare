/**
 * Clase DTO para obtener MateriaRespuesta
 */
package mx.com.educare.dto;

import java.io.Serializable;
import java.util.List;

import mx.com.educare.dto.util.EncabezadoRespuesta;

/**
 * @author tonyocampoc@gmail.com
 *
 */
public class MateriaRespuesta implements Serializable {
	/**
	 * Instancia de MateriaRespuesta
	 */
	public MateriaRespuesta() {
	}

	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = -3507866182616449341L;

	/** The header. */
	private EncabezadoRespuesta header;

	/** The Materia. */
	List<Materia> materias;

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
	 * @return the materias
	 */
	public List<Materia> getMaterias() {
		return materias;
	}

	/**
	 * @param materias the materias to set
	 */
	public void setMaterias(List<Materia> materias) {
		this.materias = materias;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
