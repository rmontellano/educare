package mx.com.educare.util;

import mx.com.educare.dto.util.ObjetoValor;

/**
 * @author aocampo
 *
 *  Interface para la  transformaci&oacute;n de objetos a xml
 *  de xml a objeto y de xml a una lista de objetos.
 */

public interface Transformador  {

	/**
	 * M&eacute;todo que realiza la transformaci&oacute;n de un Objeto de cualquier tipo a una
	 * cadena (String) con formato XML.
	 * @author ISC Omar CC (ocruzc)
	 * @param uid {@link String} identificador de transacciones.
	 * @param objeto {@link ObjetoValor} objeto a transformar.
	 * @param clases Arreglo de {@link Class<?>[]} con las clases que se registrar&aacute;n como alias con Xstream.
	 * @return {@link String} del Objeto con formato XML.
	 */
	 String transformaObjetoAXML(String uid, ObjetoValor objeto, Class<?>[] clases);

	/**
	 * M&eacute;todo que realiza la tranfomaci&oacute;n de una cadena (String) a un Objeto de
	 * cualquier tipo.
	 * @author ISC Omar CC (ocruzc)
	 * <br/><b>Postcondici&oacute;n:</b><br/>
	 * Es necesario aplicar un <i>cast</i> al tipo de Objeto que se requiera obtener.
	 * @param uid {@link String} identificador de transacciones.
	 * @param xml {@link String} del Objeto con formato XML.
	 * @param clases Arreglo de {@link Class<?>[]} con las clases que se registrar&aacute;n como alias con Xstream.
	 * @return {@link ObjetoValor} objeto obtenido desde la cadena XML.
	 */
	 ObjetoValor transformaXMLAObjeto(String uid, String xml, Class<?>[] clases);

	/**
	 * @param uid identificador unico
	 * @param xml valor para la transformacion a XML
	 * @param clases arreglo de Classes para el mapeo con xstream
	 * @param claseLista tipo de objeto que contendr&aacute; la lista
	 * @return el ObjetoValor de regreso
	 */
	 ObjetoValor transformaXMLALista(String uid, String xml, Class<?>[] clases, ObjetoValor claseLista);

}
