/**
 *
 */
package mx.com.educare.constantes;

/**
 * Clase que contiene las constantes de la conexión.
 *
 * @author tonyocampoc@gmail.com
 *
 */
public enum ConstantesConexion {
	/**
	 * Ruta del archivo de configuraci&oacute;n de IBatis.
	 */
	IBATIS_CONFIG("mx/com/educare/dao/config/ConfigEducare.xml");
	/**
	 * variable que obtiene el valor de nuestros archivos de configuracion.
	 */
	private String valor;

	/**
	 * Construtor de la clase ConstantesConexion que le asigna valor a la. variable
	 * valor
	 *
	 * @param ruta    que se le asigna a cada constante
	 */
	private ConstantesConexion(final String ruta) {
         valor = ruta;
	}

	/**
	 * M&eacute;todo que regresa el valor de nuestras constantes.
	 * @return valor de nuestras contantes
	 */
	public String getValor() {
		return valor;
	}
}
