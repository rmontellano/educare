/**
 * Clase DTO para obtener las materias
 */
package mx.com.educare.dto;

import java.io.Serializable;


/**
 * @author tonyocampoc@gmail.com
 *
 */
public class Materia implements Serializable{

	/**
	 * Instancia de Materia
	 */
	public Materia() {
	}

	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = -6681367391022921616L;

	/**
	 * The idMateria.
	 */
	private String idMateria;

	/**
	 * The nombre.
	 */
	private String nombre;

	/**
	 * The creditos.
	 */
	private int creditos;

	/**
	 * The claveSep.
	 */
	private String claveSep;

	/**
	 * The tipoMat.
	 */
	private int tipoMat;

	/**
	 * The tipoGrupo.
	 */
	private int tipoGrupo;

	/**
	 * The tipoCaptura.
	 */
	private int tipoCaptura;

	/**
	 * The idGrado.
	 */
	private int idGrado;

	/**
	 * The status.
	 */
	private int status;

	/**
	 * @return the idMateria
	 */
	public String getIdMateria() {
		return idMateria;
	}

	/**
	 * @param idMateria the idMateria to set
	 */
	public void setIdMateria(String idMateria) {
		this.idMateria = idMateria;
	}

	/**
	 * @return the nombre
	 */
	public String getNombre() {
		return nombre;
	}

	/**
	 * @param nombre the nombre to set
	 */
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	/**
	 * @return the creditos
	 */
	public int getCreditos() {
		return creditos;
	}

	/**
	 * @param creditos the creditos to set
	 */
	public void setCreditos(int creditos) {
		this.creditos = creditos;
	}

	/**
	 * @return the claveSep
	 */
	public String getClaveSep() {
		return claveSep;
	}

	/**
	 * @param claveSep the claveSep to set
	 */
	public void setClaveSep(String claveSep) {
		this.claveSep = claveSep;
	}

	/**
	 * @return the tipoMat
	 */
	public int getTipoMat() {
		return tipoMat;
	}

	/**
	 * @param tipoMat the tipoMat to set
	 */
	public void setTipoMat(int tipoMat) {
		this.tipoMat = tipoMat;
	}

	/**
	 * @return the tipoGrupo
	 */
	public int getTipoGrupo() {
		return tipoGrupo;
	}

	/**
	 * @param tipoGrupo the tipoGrupo to set
	 */
	public void setTipoGrupo(int tipoGrupo) {
		this.tipoGrupo = tipoGrupo;
	}

	/**
	 * @return the tipoCaptura
	 */
	public int getTipoCaptura() {
		return tipoCaptura;
	}

	/**
	 * @param tipoCaptura the tipoCaptura to set
	 */
	public void setTipoCaptura(int tipoCaptura) {
		this.tipoCaptura = tipoCaptura;
	}

	/**
	 * @return the idGrado
	 */
	public int getIdGrado() {
		return idGrado;
	}

	/**
	 * @param idGrado the idGrado to set
	 */
	public void setIdGrado(int idGrado) {
		this.idGrado = idGrado;
	}

	/**
	 * @return the status
	 */
	public int getStatus() {
		return status;
	}

	/**
	 * @param status the status to set
	 */
	public void setStatus(int status) {
		this.status = status;
	}



}
