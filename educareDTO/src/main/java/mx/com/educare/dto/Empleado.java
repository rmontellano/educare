/**
 * Clase DTO para obtener Empleado
 */
package mx.com.educare.dto;

import java.io.Serializable;
import java.util.Date;

/**
 * @author tonyocampoc@gmail.com
 *
 */
public class Empleado implements Serializable {
	/**
	 * Instancia de Empleado
	 */
	public Empleado() {
	}

	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = 3775988549030681725L;

	/**
	 * The idEmpleado.
	 */
	private String idEmpleado;

	/**
	 * The nombre.
	 */
	private String nombre;

	/**
	 * The direccion.
	 */
	private String direccion;

	/**
	 * The email.
	 */
	private String email;

	/**
	 * The telefonoCasa.
	 */
	private String telefonoCasa;

	/**
	 * The telefonoCelular.
	 */
	private String telefonoCelular;

	/**
	 * The colonia.
	 */
	private String colonia;

	/**
	 * The codigoPostal.
	 */
	private String codigoPostal;

	/**
	 * The codigoPostal.
	 */
	private Date fechaIngreso;

	/**
	 * The fechaNacimiento.
	 */
	private Date fechaNacimiento;

	/**
	 * The tipoSangre.
	 */
	private String tipoSangre;

	/**
	 * The dirImagen.
	 */
	private String dirImagen;

	/**
	 * The sexo.
	 */
	private String sexo;

	/**
	 * The curp.
	 */
	private String curp;

	/**
	 * The idPuesto.
	 */
	private int idPuesto;

	/**
	 * The activo.
	 */
	private int activo;

	/**
	 * The apellidoPaterno.
	 */
	private String apellidoPaterno;

	/**
	 * The apellidoMaterno.
	 */
	private String apellidoMaterno;

	/**
	 * The rfc.
	 */
	private String rfc;

	/**
	 * The nombreContacto.
	 */
	private String nombreContacto;

	/**
	 * The telefonoContacto.
	 */
	private String telefonoContacto;

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
	 * @return the idPuesto
	 */
	public int getIdPuesto() {
		return idPuesto;
	}

	/**
	 * @param idPuesto the idPuesto to set
	 */
	public void setIdPuesto(int idPuesto) {
		this.idPuesto = idPuesto;
	}

	/**
	 * @return the activo
	 */
	public int getActivo() {
		return activo;
	}

	/**
	 * @param activo the activos to set
	 */
	public void setActivos(int activo) {
		this.activo = activo;
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
	 * @return the nombreContacto
	 */
	public String getNombreContacto() {
		return nombreContacto;
	}

	/**
	 * @param nombreContacto the nombreContacto to set
	 */
	public void setNombreContacto(String nombreContacto) {
		this.nombreContacto = nombreContacto;
	}

	/**
	 * @return the telefonoContacto
	 */
	public String getTelefonoContacto() {
		return telefonoContacto;
	}

	/**
	 * @param telefonoContacto the telefonoContacto to set
	 */
	public void setTelefonoContacto(String telefonoContacto) {
		this.telefonoContacto = telefonoContacto;
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

	/**
	 * @param activo the activo to set
	 */
	public void setActivo(int activo) {
		this.activo = activo;
	}

}
