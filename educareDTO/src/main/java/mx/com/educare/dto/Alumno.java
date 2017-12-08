/**
 * Clase DTO para obtener el alumno
 */
package mx.com.educare.dto;

import java.io.Serializable;
import java.util.Date;

/**
 * @author tonyocampoc@gmail.com
 *
 */
public class Alumno implements Serializable {

	/**
	 * Instancia de Alumno
	 */
	public Alumno() {
	}

	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = -7298110234702111823L;	

	/**
	 * The matricula.
	 */
	private int matricula;

	/**
	 * The nombre.
	 */
	private String nombre;

	/**
	 * The apellidoPaterno.
	 */
	private String apellidoPaterno;

	/**
	 * The apellidoMaterno.
	 */
	private String apellidoMaterno;

	/**
	 * The fechaNacimiento.
	 */
	private Date fechaNacimiento;

	/**
	 * The lugarNacimiento.
	 */
	private String lugarNacimiento;

	/**
	 * The nacionalidad.
	 */
	private String nacionalidad;

	/**
	 * The direccion.
	 */
	private String direccion;

	/**
	 * The colonia.
	 */
	private String colonia;

	/**
	 * The codigoPostal.
	 */
	private String codigoPostal;

	/**
	 * The escuelaPrecedencia.
	 */
	private String escuelaPrecedencia;

	/**
	 * The fechaIngreso.
	 */
	private Date fechaIngreso;

	/**
	 * The tipoSangre.
	 */
	private String tipoSangre;	

	/**
	 * The activo.
	 */
	private int activo;

	/**
	 * The idGrupo.
	 */
	private int idGrupo;

	/**
	 * The sexo.
	 */
	private String sexo;

	/**
	 * The curp.
	 */
	private String curp;

	/**
	 * The dirImagen.
	 */
	private String dirImagen;

	/**
	 * The nia.
	 */
	private int nia;

	/**
	 * The alergias.
	 */
	private String alergias;

	/**
	 * The telefonoCasa.
	 */
	private String telefonoCasa;

	/**
	 * The telefonoCelular.
	 */
	private String telefonoCelular;

	/**
	 * The email.
	 */
	private String email;

	/**
	 * The rfc.
	 */
	private String rfc;

	/**
	 * The numeroExterior.
	 */
	private int numeroExterior;

	/**
	 * The numeroInterior.
	 */
	private String numeroInterior;
	
	/**
	 * The status.
	 */
	private int status;

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
	 * @return the apellidoPaterno
	 */
	public String getApellidoPaterno() {
		return apellidoPaterno;
	}

	/**
	 * @param apellidoPaterno the apellidoPaterno to set
	 */
	public void setApellidoPaterno(String apellidoPaterno) {
		this.apellidoPaterno = apellidoPaterno;
	}

	/**
	 * @return the apellidoMaterno
	 */
	public String getApellidoMaterno() {
		return apellidoMaterno;
	}

	/**
	 * @param apellidoMaterno the apellidoMaterno to set
	 */
	public void setApellidoMaterno(String apellidoMaterno) {
		this.apellidoMaterno = apellidoMaterno;
	}

	/**
	 * @return the fechaNacimiento
	 */
	public Date getFechaNacimiento() {
		return fechaNacimiento;
	}

	/**
	 * @param fechaNacimiento the fechaNacimiento to set
	 */
	public void setFechaNacimiento(Date fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}

	/**
	 * @return the lugarNacimiento
	 */
	public String getLugarNacimiento() {
		return lugarNacimiento;
	}

	/**
	 * @param lugarNacimiento the lugarNacimiento to set
	 */
	public void setLugarNacimiento(String lugarNacimiento) {
		this.lugarNacimiento = lugarNacimiento;
	}

	/**
	 * @return the nacionalidad
	 */
	public String getNacionalidad() {
		return nacionalidad;
	}

	/**
	 * @param nacionalidad the nacionalidad to set
	 */
	public void setNacionalidad(String nacionalidad) {
		this.nacionalidad = nacionalidad;
	}

	/**
	 * @return the direccion
	 */
	public String getDireccion() {
		return direccion;
	}

	/**
	 * @param direccion the direccion to set
	 */
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	/**
	 * @return the colonia
	 */
	public String getColonia() {
		return colonia;
	}

	/**
	 * @param colonia the colonia to set
	 */
	public void setColonia(String colonia) {
		this.colonia = colonia;
	}

	/**
	 * @return the codigoPostal
	 */
	public String getCodigoPostal() {
		return codigoPostal;
	}

	/**
	 * @param codigoPostal the codigoPostal to set
	 */
	public void setCodigoPostal(String codigoPostal) {
		this.codigoPostal = codigoPostal;
	}

	/**
	 * @return the escuelaPrecedencia
	 */
	public String getEscuelaPrecedencia() {
		return escuelaPrecedencia;
	}

	/**
	 * @param escuelaPrecedencia the escuelaPrecedencia to set
	 */
	public void setEscuelaPrecedencia(String escuelaPrecedencia) {
		this.escuelaPrecedencia = escuelaPrecedencia;
	}

	/**
	 * @return the fechaIngreso
	 */
	public Date getFechaIngreso() {
		return fechaIngreso;
	}

	/**
	 * @param fechaIngreso the fechaIngreso to set
	 */
	public void setFechaIngreso(Date fechaIngreso) {
		this.fechaIngreso = fechaIngreso;
	}

	/**
	 * @return the tipoSangre
	 */
	public String getTipoSangre() {
		return tipoSangre;
	}

	/**
	 * @param tipoSangre the tipoSangre to set
	 */
	public void setTipoSangre(String tipoSangre) {
		this.tipoSangre = tipoSangre;
	}

	/**
	 * @return the activo
	 */
	public int getActivo() {
		return activo;
	}

	/**
	 * @param activo the activo to set
	 */
	public void setActivo(int activo) {
		this.activo = activo;
	}

	/**
	 * @return the idGrupo
	 */
	public int getIdGrupo() {
		return idGrupo;
	}

	/**
	 * @param idGrupo the idGrupo to set
	 */
	public void setIdGrupo(int idGrupo) {
		this.idGrupo = idGrupo;
	}

	/**
	 * @return the sexo
	 */
	public String getSexo() {
		return sexo;
	}

	/**
	 * @param sexo the sexo to set
	 */
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	/**
	 * @return the curp
	 */
	public String getCurp() {
		return curp;
	}

	/**
	 * @param curp the curp to set
	 */
	public void setCurp(String curp) {
		this.curp = curp;
	}

	/**
	 * @return the dirImagen
	 */
	public String getDirImagen() {
		return dirImagen;
	}

	/**
	 * @param dirImagen the dirImagen to set
	 */
	public void setDirImagen(String dirImagen) {
		this.dirImagen = dirImagen;
	}

	/**
	 * @return the nia
	 */
	public int getNia() {
		return nia;
	}

	/**
	 * @param nia the nia to set
	 */
	public void setNia(int nia) {
		this.nia = nia;
	}

	/**
	 * @return the alergias
	 */
	public String getAlergias() {
		return alergias;
	}

	/**
	 * @param alergias the alergias to set
	 */
	public void setAlergias(String alergias) {
		this.alergias = alergias;
	}

	/**
	 * @return the telefonoCasa
	 */
	public String getTelefonoCasa() {
		return telefonoCasa;
	}

	/**
	 * @param telefonoCasa the telefonoCasa to set
	 */
	public void setTelefonoCasa(String telefonoCasa) {
		this.telefonoCasa = telefonoCasa;
	}

	/**
	 * @return the telefonoCelular
	 */
	public String getTelefonoCelular() {
		return telefonoCelular;
	}

	/**
	 * @param telefonoCelular the telefonoCelular to set
	 */
	public void setTelefonoCelular(String telefonoCelular) {
		this.telefonoCelular = telefonoCelular;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the rfc
	 */
	public String getRfc() {
		return rfc;
	}

	/**
	 * @param rfc the rfc to set
	 */
	public void setRfc(String rfc) {
		this.rfc = rfc;
	}

	/**
	 * @return the numeroExterior
	 */
	public int getNumeroExterior() {
		return numeroExterior;
	}

	/**
	 * @param numeroExterior the numeroExterior to set
	 */
	public void setNumeroExterior(int numeroExterior) {
		this.numeroExterior = numeroExterior;
	}

	/**
	 * @return the numeroInterior
	 */
	public String getNumeroInterior() {
		return numeroInterior;
	}

	/**
	 * @param numeroInterior the numeroInterior to set
	 */
	public void setNumeroInterior(String numeroInterior) {
		this.numeroInterior = numeroInterior;
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
