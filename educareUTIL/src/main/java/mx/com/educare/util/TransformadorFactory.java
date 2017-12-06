package mx.com.educare.util;

/**
 * Clase que nos permite implementar el Daofactory
 * @author aocampo
 */

public class TransformadorFactory {
	/**
	 * M&eacute;todo que permite crear una instancia de RedOperativaDaoImpl
	 * @return RedOperativaDAO que crear una instancia de RedOperativaDaoImpl
	 */
	public Transformador crearTransformador() {
		return new TransformadorImpl();
	}
}

