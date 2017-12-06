package mx.com.educare.dto.auth;

import mx.com.educare.dto.util.EncabezadoRespuesta;
import mx.com.educare.dto.util.ObjetoValor;
/**
 * 
 * @author hsamano
 *
 */
public class Auth extends ObjetoValor {

	/**
	 * Serializable
	 */
	private static final long serialVersionUID = -3955721366121052426L;
	
	/**
	 * Encabezado
	 */
	private EncabezadoRespuesta header;
	
	/**
	 * Guardar token para peticiones
	 */
	private String token;

	/**
	 * Id del empleado 
	 */
	private String idEmpleado;

	/**
	 * @return the token
	 */
	public String getToken() {
		return token;
	}

	/**
	 * @param token the token to set
	 */
	public void setToken(String token) {
		this.token = token;
	}

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
	 * @return the idEmpleado
	 */
	public String getIdEmpleado() {
		return idEmpleado;
	}

	/**
	 * @param idEmpleado the idEmpleado to set
	 */
	public void setIdEmpleado(String idEmpleado) {
		this.idEmpleado = idEmpleado;
	}

}
