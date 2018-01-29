package mx.com.educare.dto.util;

import java.io.Serializable;
import java.util.List;

import mx.com.educare.dto.Ciclo;

/**
 * 
 * @author Isela
 *
 */
public class RespuestaCiclo implements Serializable {
	/**id de transaccion*/
	private static final long serialVersionUID = 320492073458591595L;

	/** encabezado de la respuesta*/
	public EncabezadoRespuesta header;

	/**resultado de las consultas*/
	public List<Ciclo> listCiclo;

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
	public List<Ciclo> getListCiclo() {
		return listCiclo;
	}

	/**
	 * @param listGrado the listGrado to set
	 */
	public void setListCiclo(List<Ciclo> listCiclo) {
		this.listCiclo = listCiclo;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "RespuestaCiclo [header=" + header + ", listCiclo=" + listCiclo + "]";
	}
}
