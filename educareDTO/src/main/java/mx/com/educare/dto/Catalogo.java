/**
 * Clase DTO para obtener el Catalogo
 */
package mx.com.educare.dto;

import mx.com.educare.dto.util.ObjetoValor;

/**
 * @author tonyocampoc@gmail.com
 *
 */
public class Catalogo extends ObjetoValor {

	/**
	 * Instancia de Catalogo
	 */
	public Catalogo() {
	}

	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = -7051640222992651359L;

	/**
	 * int idOpcion
	 */
	private int idOpcion;
	/**
	 * int idCatalogo
	 */
	private int idCatalogo;
	/**
	 * String descripcion
	 */
	private String descripcion;
	/**
	 * String status
	 */
	private String status;
	/**
	 * String tipoCategoria
	 */
	private String tipoCategoria;
	/**
	 * String descTipoCat
	 */
	private String descTipoCat;
	/**
	 * @return the idOpcion
	 */
	public int getIdOpcion() {
		return idOpcion;
	}
	/**
	 * @param idOpcion the idOpcion to set
	 */
	public void setIdOpcion(int idOpcion) {
		this.idOpcion = idOpcion;
	}
	/**
	 * @return the idCatalogo
	 */
	public int getIdCatalogo() {
		return idCatalogo;
	}
	/**
	 * @param idCatalogo the idCatalogo to set
	 */
	public void setIdCatalogo(int idCatalogo) {
		this.idCatalogo = idCatalogo;
	}
	/**
	 * @return the descripcion
	 */
	public String getDescripcion() {
		return descripcion;
	}
	/**
	 * @param descripcion the descripcion to set
	 */
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	/**
	 * @return the status
	 */
	public String getStatus() {
		return status;
	}
	/**
	 * @param status the status to set
	 */
	public void setStatus(String status) {
		this.status = status;
	}
	/**
	 * @return the tipoCategoria
	 */
	public String getTipoCategoria() {
		return tipoCategoria;
	}
	/**
	 * @param tipoCategoria the tipoCategoria to set
	 */
	public void setTipoCategoria(String tipoCategoria) {
		this.tipoCategoria = tipoCategoria;
	}
	/**
	 * @return the descTipoCat
	 */
	public String getDescTipoCat() {
		return descTipoCat;
	}
	/**
	 * @param descTipoCat the descTipoCat to set
	 */
	public void setDescTipoCat(String descTipoCat) {
		this.descTipoCat = descTipoCat;
	}
}

