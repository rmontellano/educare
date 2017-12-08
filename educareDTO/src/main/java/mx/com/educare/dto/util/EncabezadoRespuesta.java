package mx.com.educare.dto.util;

import java.io.Serializable;

/**
 *
 * Encapsula los datos del header de Response de la ejecucion de una operacion.
 *
 * @author tonyocampoc@gmail.com
 *
 */
public class EncabezadoRespuesta implements Serializable {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** The estatus. */
	private boolean status;

	/** The mensaje. */
	private String  mensaje;

	/** The codigo. */
	private String  codigo;

	/** The uid. */
	private String  uid;

	/**
	 * Instancia una nueva encabezado respuesta.
	 */
	public EncabezadoRespuesta( ) {
		super();
		this.status = true;
	}

	/**
	 * Instancia una nueva encabezado respuesta.
	 *
	 * @param uid the uid
	 */
	public EncabezadoRespuesta( final String uid) {
		super();
		this.status = true;
		this.uid = uid;
	}
	
	public EncabezadoRespuesta( final String mensaje, final boolean estatus) {
		super();
		this.mensaje = mensaje;
		this.status = estatus;
	}

	/**
	 * Checks if is estatus.
	 *
	 * @return the estatus
	 */
	public boolean isStatus() {
		return status;
	}

	/**
	 * Establece estatus.
	 *
	 * @param estatus the estatus to set
	 */
	public void setStatus(final boolean status) {
		this.status = status;
	}

	/**
	 * Obtiene mensaje.
	 *
	 * @return the mensaje
	 */
	public String getMensaje() {
		return mensaje;
	}

	/**
	 * Establece mensaje.
	 *
	 * @param mensaje the mensaje to set
	 */
	public void setMensaje(final String mensaje) {
		this.mensaje = mensaje;
	}

	/**
	 * Obtiene codigo.
	 *
	 * @return the codigo
	 */
	public String getCodigo() {
		return codigo;
	}

	/**
	 * Establece codigo.
	 *
	 * @param codigo the codigo to set
	 */
	public void setCodigo(final String codigo) {
		this.codigo = codigo;
	}

	/**
	 * Obtiene uid.
	 *
	 * @return the uID
	 */
	public String getUid() {
		return uid;
	}

	/**
	 * Establece uid.
	 *
	 * @param uID the uID to set
	 */
	public void setUid(final String uid) {
		this.uid = uid;
	}


}
