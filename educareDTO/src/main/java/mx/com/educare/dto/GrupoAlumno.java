/**
 * Clase DTO para obtener el GrupoAlumno
 */
package mx.com.educare.dto;

import mx.com.educare.dto.util.ObjetoValor;

/**
 * @author tonyocampoc@gmail.com
 *
 */
public class GrupoAlumno extends ObjetoValor {

	/**
	 * Instancia de GrupoAlumno
	 */
	public GrupoAlumno() {
	}

	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = -2730986143742758414L;

	/**
	 * The idgrupoMateria.
	 */
	private int idgrupoMateria;
	/**
	 * The matricula.
	 */
	private int matricula;
	/**
	 * @return the idgrupoMateria
	 */
	public int getIdgrupoMateria() {
		return idgrupoMateria;
	}
	/**
	 * @param idgrupoMateria the idgrupoMateria to set
	 */
	public void setIdgrupoMateria(int idgrupoMateria) {
		this.idgrupoMateria = idgrupoMateria;
	}
	/**
	 * @return the matricula
	 */
	public int getMatricula() {
		return matricula;
	}
	/**
	 * @param matricula the matricula to set
	 */
	public void setMatricula(int matricula) {
		this.matricula = matricula;
	}
}
