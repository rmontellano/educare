package mx.com.educare.dto.util;

import java.io.Serializable;
import java.util.List;

import mx.com.educare.dto.Grupo;

/**
 * 
 * @author Isela
 *
 */
public class RespuestaGrupo implements Serializable{

	/**id de transaccion*/
	private static final long serialVersionUID = 6252799196147134404L;
	/** encabezado de la respuesta*/
	public EncabezadoRespuesta header;

	/**resultado de las consultas*/
	public List<Grupo> listGrupo;

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
	 * @return the listGrupo
	 */
	public List<Grupo> getListGrupo() {
		return listGrupo;
	}

	/**
	 * @param listGrupo the listGrupo to set
	 */
	public void setListGrupo(List<Grupo> listGrupo) {
		this.listGrupo = listGrupo;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "RespuestaGrupo [header=" + header + ", listGrupo=" + listGrupo + "]";
	}

}
