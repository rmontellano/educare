/**
 *
 */
package mx.com.educare.util.excepciones;

/**
 * @author aocampo
 *
 */
public class EducareException  extends Exception {
	/**
	 * serialVersion
	 */
	private static final long serialVersionUID = 4465628321430393468L;

	/**
	 * Constructor
	 * @param mensaje enviar mensaje a la Exception
	 */
	public EducareException(String mensaje) {
		super(mensaje);
	}
}
