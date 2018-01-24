package mx.com.educare.constantes;


/**
 * Clase donde tenemos a nuestras constantes.
 *
 * @author tonyocampoc@gmail.com
 */
public enum Constantes {
	/**
	 * Constante hexadecimal de 16.
	 */
	DIECISEIS(16),
	/**
	 * Constante hexadecimal de 18.
	 */
	OCHO(8),
	/**
	 * Constante hexadecimal de byte.
	 */
	BYTES(0xff),
	/**
	 * constante hexadecimal para enciptado
	 */
	CIEN(0x100),
	/**
	 * Constante hexadecimal de 24.
	 */
	VEINTICUATRO(24),
	/**
	 * Constante hexadecimal de 32.
	 */
	TREINTAYDOS(32),
	/**
	 * direccion ip.
	 */
	IP_ADDRESS("127.0.0.1"),
	/**
	 * usuario_sistema.
	 */
	USUARIO_SISTEMA("9999999"),
	/**
	 * delimitador param
	 */
	DELIMETER_PARAM("l"),
	/**
	 * MIME JSON;
	 */
	MIME_JSON("application/json;charset=UTF-8"),
	/**
	 * ENCODING
	 */
	ENCODING("UTF-8"),
	/**
	 * Caducidad del token;
	 */
	TOKEN_DAYS(1),
	/**
	 * Contraseña por default para la seguridad AES
	 */
	AES_PWD("3dUc4r3#17"),
	/**
	 * Anio de la cadena Inicial
	 */
	ANIO_STR_I(0),

	/**
	 * Anio de la cadena Final
	 */
	ANIO_STR_F(2),

	/**
	 * Mes de la cadena Inicial
	 */
	MES_STR_I(68),

	/**
	 * Mes de la cadena Final
	 */
	MES_STR_F(70),

	/**
	 * Dia de la cadena Inicial
	 */
	DIA_STR_I(66),

	/**
	 * Dia de la cadena Final
	 */
	DIA_STR_F(68),

	/**
	 * SHA2 de la cadena Inicial del token
	 */
	SHA2_STR_I(2),

	/**
	 * SHA2 de la cadena Final del token
	 */
	SHA2_STR_F(66),
	/**
	 * Año bisiesto
	 */
	ANIO_BISIESTO(366),

	/**
	 * Año Normal
	 */
	ANIO_NORMAL(365),

	/**valor de 1*/
	SI ("SI"),

	/**valor de 0*/
	NO ("NO");
	

	/**
	 * contendra el valor nuemrico de nuestras constantes.
	 */
	private int integer;
	/**
	 * contendra el valor string de nuestras constantes.
	 */
	private String strings;

	/**
	 * constructor que recibe un parametro entero.
	 * @param num valor numerico de las constantes
	 */
	private Constantes(final int num) {
		this.integer = num;
	}

	/**
	 * constructor que recibe un parametro String.
	 * @param strings valor String de las constantes
	 */
	private Constantes(final String strings) {
		this.strings = strings;
	}

	/**
	 * Gets the integer.
	 *
	 * @return the integer
	 */
	public int getInt() {
		return integer;
	}

	/**
	 * Obtiene los strings.
	 *
	 * @return the string
	 */
	public String getString() {
		return strings;
	}

}
