package mx.com.educare.dto;

import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 
 * @author Isela
 *
 */
public class Ciclo  implements Serializable {
	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = -5831444325034092733L;
	/**
	 * The idCiclo.
	 */
	private Integer idCiclo;
	/**
	 * The idSeccion.
	 */
	private Integer idSeccion;
	/**
	 * The actual.
	 */
	private Integer actual;
	/**
	 * The status.
	 */
	private Integer status;
	/**
	 * The nombre.
	 */
	private String nombre;
	/**
	 * descripcion de la seccion.
	 */
	private String descripcionSeccion;
	/**
	 * descripcion de ciclo actual.
	 */
	private String descripcionActual;
	/**
	 * fecha de inicicio del ciclo
	 */
	private String fechaInicio;
	/**
	 * fecha fin del ciclo
	 */
	private String fechaFin;
	/**
	 * @return the idCiclo
	 */
	public Integer getIdCiclo() {
		return idCiclo;
	}
	/**
	 * @param idCiclo the idCiclo to set
	 */
	public void setIdCiclo(Integer idCiclo) {
		this.idCiclo = idCiclo;
	}
	/**
	 * @return the idSeccion
	 */
	public Integer getIdSeccion() {
		return idSeccion;
	}
	/**
	 * @param idSeccion the idSeccion to set
	 */
	public void setIdSeccion(Integer idSeccion) {
		this.idSeccion = idSeccion;
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
	 * @return the actual
	 */
	public Integer getActual() {
		return actual;
	}
	/**
	 * @param actual the actual to set
	 */
	public void setActual(Integer actual) {
		this.actual = actual;
	}
	/**
	 * @return the status
	 */
	public Integer getStatus() {
		return status;
	}
	/**
	 * @param status the status to set
	 */
	public void setStatus(Integer status) {
		this.status = status;
	}
	/**
	 * @return the descripcionSeccion
	 */
	public String getDescripcionSeccion() {
		return descripcionSeccion;
	}
	/**
	 * @param descripcionSeccion the descripcionSeccion to set
	 */
	public void setDescripcionSeccion(String descripcionSeccion) {
		this.descripcionSeccion = descripcionSeccion;
	}
	/**
	 * @return the descripcionActual
	 */
	public String getDescripcionActual() {
		return descripcionActual;
	}
	/**
	 * @param descripcionActual the descripcionActual to set
	 */
	public void setDescripcionActual(String descripcionActual) {
		this.descripcionActual = descripcionActual;
	}
	/**
	 * @return the fechaInicio
	 */
	public String getFechaInicio() {
		return fechaInicio;
	}
	/**
	 * @param fechaInicio the fechaInicio to set
	 */
	public void setFechaInicio(String fechaInicio) {
		this.fechaInicio = formatoFecha(fechaInicio);
	}
	/**
	 * @return the fechaFin
	 */
	public String getFechaFin() {
		return fechaFin;
	}
	/**
	 * @param fechaFin the fechaFin to set
	 */
	public void setFechaFin(String fechaFin) {
		this.fechaFin = formatoFecha(fechaFin);
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Ciclo [idCiclo=" + idCiclo + ", idSeccion=" + idSeccion + ", nombre=" + nombre + ", actual=" + actual
				+ ", status=" + status + ", descripcionSeccion=" + descripcionSeccion + ", descripcionActual="
				+ descripcionActual + ", fechaInicio=" + fechaInicio + ", fechaFin=" + fechaFin + "]";
	}
	
	/**
	 * 
	 * @param fecha 
	 * @return String fromato nuevo
	 */
	private String formatoFecha(String fecha) {
		String fechaFormateada = null;
		if (fecha != null) {
			// el que parsea
			SimpleDateFormat parseador = new SimpleDateFormat("yyyy-MM-dd");
			// el que formatea
			SimpleDateFormat formateador = new SimpleDateFormat("yyyy/MM/dd");
	
			Date date;
			try {
				date = parseador.parse(fecha);
				fechaFormateada  = formateador.format(date);
			} catch (ParseException e) {
				e.printStackTrace();
			}
			
		}
		return fechaFormateada;
	}

}
