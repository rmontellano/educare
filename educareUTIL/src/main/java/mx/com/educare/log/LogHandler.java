/**
 *
 */
package mx.com.educare.log;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;




/**
* The Class LogHandler.
*
* @author tonyocampoc@gmail.com
*/
public class LogHandler {

	/** The no uid. */
	private static String NO_UID = " NO UID ";

	/** The no class. */
	private static String NO_CLASS = " NO CLASS ";

	/** The no msg. */
	private static String NO_MSG = " NO MSG ";

	/** The separador. */
	private static String SEPARADOR = " :: ";

	/** The log error. */
	private static Logger logError;

	/** The log monitor. */
	private static Logger logMonitor;

	/** The log consola. */
	private static Logger logConsola;

	/** The log entidad. */
	private static Logger logEntidad;

	static {
		logConsola 	= LoggerFactory.getLogger("consola");
		logError 	= LoggerFactory.getLogger("errors");
		logMonitor	= LoggerFactory.getLogger("monitor");
		logEntidad  = LoggerFactory.getLogger("infoEntidad");

	}

	/**
	 * Instancia una nueva log handler.
	 */
	private LogHandler() {
	}

	/*private static String formatMsg ( String msg ){
		return ( msg != null ? msg : NO_MSG ) ;
	}*/

	/**
	 * Format msg.
	 *
	 * @param uid the uid
	 * @param msg the msg
	 * @return the string
	 */
	private static String formatMsg( String uid, String msg ) {
		return ( uid != null ? uid : NO_UID ) +  SEPARADOR + ( msg != null ? msg : NO_MSG );
	}

	/**
	 * Format msg.
	 *
	 * @param uid the uid
	 * @param c the c
	 * @param msg the msg
	 * @return the string
	 */
	private static String formatMsg( String uid, Class<?> c, String msg ) {
		return ( uid != null ? uid : NO_UID ) + SEPARADOR + ( c != null ? c.getSimpleName()
				: NO_CLASS ) + SEPARADOR + ( msg != null ? msg : NO_MSG );
	}


	/**
	 * Format exception.
	 *
	 * @param e the e
	 * @return the string
	 */
	private static String formatException( Exception e ) {
		return  e.getCause() + SEPARADOR + e.getMessage() + SEPARADOR + formatStackTrace( e.getStackTrace() );
	}

	/**
	 * Format stack trace.
	 *
	 * @param stackElements the stack elements
	 * @return the string
	 */
	private synchronized static String formatStackTrace( StackTraceElement[] stackElements ) {
		StringBuffer buffer = new StringBuffer();
		for ( int i = 0; i < stackElements.length; i++) {
			buffer.append( "\n\t" );
			buffer.append( stackElements[i].toString() );
		}
		return buffer.toString();
	}

	/**
	 * Debug.
	 *
	 * @param uid the uid
	 * @param c the c
	 * @param msg the msg
	 */
	public static void debug(String uid, Class<?> c, String msg) {
		 logConsola.debug( formatMsg( uid, c, msg  ) );
	}

	/**
	 * Info.
	 *
	 * @param uid the uid
	 * @param c the c
	 * @param msg the msg
	 */
	public static void info(String uid,  Class<?> c, String msg) {
		logConsola.info( formatMsg( uid, c, msg ) );
		logMonitor.info( formatMsg( uid, msg ) );
	}

	/**
	 * Warn.
	 *
	 * @param uid the uid
	 * @param c the c
	 * @param msg the msg
	 */
	public static void warn(String uid, Class<?> c, String msg) {
		 logMonitor.warn( formatMsg( uid, c, msg ) );
		 logConsola.warn( formatMsg( uid, c, msg ) );
	}

	/**
	 * Error.
	 *
	 * @param uid the uid
	 * @param c the c
	 * @param msg the msg
	 * @param e the e
	 */
	public static void error(String uid, Class<?> c, String msg, Exception e ) {
		 logConsola.error( formatMsg( uid, c, msg ) );
		 logMonitor.error( formatMsg( uid, c, msg ) );
		 logError.error( formatMsg( uid, c, msg ) +  SEPARADOR + formatException( e ));
	}

	/**
	 * Trace.
	 *
	 * @param uid the uid
	 * @param c the c
	 * @param msg the msg
	 */
	public static void trace(String uid, Class<?> c, String msg) {
		logEntidad.trace( formatMsg( uid, c, msg ) );
		//logConsola.trace( formatMsg( uid, c, msg ) );
	}
}
