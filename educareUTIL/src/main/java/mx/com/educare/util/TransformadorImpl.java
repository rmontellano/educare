package mx.com.educare.util;

import java.util.Date;
import java.util.TimeZone;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.converters.basic.DateConverter;
import com.thoughtworks.xstream.io.xml.DomDriver;

import mx.com.educare.dto.util.ObjetoValor;
import mx.com.educare.log.LogHandler;

public class TransformadorImpl implements Transformador {

	/**
	 * @param uid identificador unico
	 * @param objeto valor para la transformacion a XML
	 * @param clases arreglo de Classes para el mapeo con xstream
	 * @return el XML de regreso
	 */
	public String transformaObjetoAXML(String uid, ObjetoValor objeto, Class<?>[] clases) {
		String xml = null;
		try {
			final XStream xstream = new XStream(new DomDriver( "ISO-8859-1" ));
			xstream.setMode(XStream.NO_REFERENCES);
			final DateConverter dateConverter = new DateConverter("dd-MM-yyyy HH:mm:ss.SSS",
		            new String [] {"yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd", "yyyy/MM/dd", "dd-MM-yyyy"},
		            TimeZone.getTimeZone( TimeZone.getDefault().inDaylightTime( new Date() ) ? "GMT-5" : "GMT-6"  ) );

			/*final DateConverter dateConverter = new DateConverter("dd-MM-yyyy HH:mm:ss.SSS",
		            new String [] {"yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd", "yyyy/MM/dd", "dd-MM-yyyy"},
		            TimeZone.getTimeZone("GMT-6") );*/
			/*
			final DateConverter dateConverter = new DateConverter("dd-MM-yyyy HH:mm:ss.SSS",
		            new String [] { "yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd", "yyyy/MM/dd", "dd-MM-yyyy" });
		    */
			xstream.registerConverter(dateConverter);

			xstream.omitField( ObjetoValor.class, "tipo");
			/** Registramos las Clases para Xstream. */
			for (Class<?> clase : clases) {
				xstream.alias(clase.getSimpleName(), clase);
			}

			xml = objeto != null ?  xstream.toXML(objeto) : "No es posible transformar un Objeto nulo";
			}
		catch ( java.lang.Exception exception ) {
			LogHandler.error(uid, getClass(), "No es posible transformar un Objeto nulo", exception );
			xml = "No es posible transformar un Objeto nulo";
			}

		return xml;
	}

	/**
	 * @param uid identificador unico
	 * @param xml valor para la transformacion a XML
	 * @param clases arreglo de Classes para el mapeo con xstream
	 * @return el ObjetoValor de regreso
	 */
	public ObjetoValor transformaXMLAObjeto(String uid, String xml, Class<?>[] clases) {
		ObjetoValor objeto = null;
		try {
			final XStream xstream = new XStream(new DomDriver( "ISO-8859-1" ));

			final DateConverter dateConverter = new DateConverter("dd-MM-yyyy HH:mm:ss.SSS",
		             new String [] {"yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd", "yyyy/MM/dd", "dd-MM-yyyy",
					"dd/MM/yyyy" }, TimeZone.getTimeZone("GMT-6"));

			xstream.registerConverter(dateConverter);

			xstream.omitField( ObjetoValor.class, "tipo");

			/** Registramos las Clases para Xstream. */
			for (Class<?> clase : clases) {
				xstream.alias(clase.getSimpleName(), clase);
			}

			objeto = xml != null && !xml.isEmpty() ? (ObjetoValor) xstream.fromXML(xml) : null;
			}
		catch ( java.lang.Exception exception ) {
			LogHandler.error(uid, getClass(), "No es posible transformar el XML", exception );
			objeto = null;
			}

		return objeto;
	}

	/**
	 * @param uid identificador unico
	 * @param xml valor para la transformacion a XML
	 * @param clases arreglo de Classes para el mapeo con xstream
	 * @param claseLista tipo de objeto que contendrá la lista
	 * @return el ObjetoValor de regreso
	 */
	public ObjetoValor transformaXMLALista(String uid, String xml, Class<?>[] clases, ObjetoValor claseLista) {
		ObjetoValor objeto = null;
		try {
			final XStream xstream = new XStream(new DomDriver( "ISO-8859-1" ));

			final DateConverter dateConverter = new DateConverter("dd-MM-yyyy HH:mm:ss.SSS",
		             new String [] {"yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd", "yyyy/MM/dd", "dd-MM-yyyy",
					"dd/MM/yyyy" }, TimeZone.getTimeZone("GMT-6"));

			xstream.registerConverter(dateConverter);

			xstream.omitField( ObjetoValor.class, "tipo");

			/** Registramos las Clases para Xstream. */
			for (Class<?> clase : clases) {
				xstream.alias(clase.getSimpleName(), clase);
			}
			 xstream.addImplicitCollection(claseLista.getClass(), "list");

			objeto = xml != null && !xml.isEmpty() ? (ObjetoValor) xstream.fromXML(xml) : null;
			}
		catch ( java.lang.Exception exception ) {
			LogHandler.error(uid, getClass(), "No es posible transformar el XML", exception );
			objeto = null;
			}

		return objeto;
	}
}
