package mx.com.educare.dto.util;

import java.io.Serializable;
import java.util.List;

import mx.com.educare.dto.Grado;

public class RespuestaGrado implements Serializable {
	/**id de transaccion*/
	private static final long serialVersionUID = 5048444129477031287L;

	/** encabezado de la respuesta*/
	public EncabezadoRespuesta header;

	/**resultado de las consultas*/
	public List<Grado> listGrado;
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
	 * @return the listGrado
	 */
	public List<Grado> getListGrado() {
		return listGrado;
	}
	/**
	 * @param listGrado the listGrado to set
	 */
	public void setListGrado(List<Grado> listGrado) {
		this.listGrado = listGrado;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "RespuestaGrado [header=" + header + ", listGrado=" + listGrado + "]";
	}
}
