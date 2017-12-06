/**
 * 
 */
package mx.com.educare.comun;

import java.net.UnknownHostException;
import mx.com.educare.constantes.Constantes;

/**
 * Clase que genera un id unico de transacacion.
 *
 * @author tonyocampoc@gmail.com
 *
 */
public final class GUIDGenerator {

	// initialize the secure random instance
	/** The Constant seeder. */
	private static final java.security.SecureRandom SEEDER = new java.security.SecureRandom();

	/**
	 * Constructor de la clase.
	 */
	private GUIDGenerator() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * A 32 byte GUID generator (Globally Unique ID).
	 *
	 * @param obj
	 *            the obj
	 * @return the string
	 */
	public static String generateGUID(final Object obj) {
		String hexServerIP = null;
		final StringBuffer tmpBuffer = new StringBuffer(
				Constantes.DIECISEIS.getInt());
		if (hexServerIP == null) {
			try {
				java.net.InetAddress localInetAddress = java.net.InetAddress
						.getLocalHost();
				final byte[] serverIP = localInetAddress.getAddress();
				hexServerIP = hexFormat(getInt(serverIP),
						Constantes.OCHO.getInt());
			} catch (UnknownHostException uhe) {
				hexServerIP = hexFormat(getInt(Constantes.IP_ADDRESS
						.getString().getBytes()), Constantes.OCHO.getInt());
			}
		}

		final String hashcode = hexFormat(System.identityHashCode(obj),
				Constantes.OCHO.getInt());
		tmpBuffer.append(hexServerIP).append(hashcode);

		final long timeNow = System.currentTimeMillis();
		final int timeLow = (int) timeNow & 0xFFFFFFFF;
		final int node = SEEDER.nextInt();

		final StringBuffer guid = new StringBuffer(
				Constantes.TREINTAYDOS.getInt());
		guid.append(hexFormat(timeLow, Constantes.OCHO.getInt()))
				.append(tmpBuffer.toString())
				.append(hexFormat(node, Constantes.OCHO.getInt()));
		return guid.toString();
	}

	/**
	 * Obtiene int.
	 *
	 * @param bytes
	 *            the bytes
	 * @return int
	 */
	private static int getInt(final byte[] bytes) {
		int ent = 0;
		int entAux = Constantes.VEINTICUATRO.getInt();
		for (int k = 0; entAux >= 0; k++) {
			final int laux = bytes[k] & Constantes.BYTES.getInt();
			ent += laux << entAux;
			entAux -= Constantes.OCHO.getInt();
		}
		return ent;
	}

	/**
	 *  sirve para dar un formato hexadecimal
	 * @param ent .
	 * @param entAux .
	 * @return .
	 */
	private static String hexFormat(final int ent, final int entAux) {
		final String str = Integer.toHexString(ent);
		return padHex(str, entAux) + str;
	}

	/**
	 * Pad hex.
	 *
	 * @param str
	 *            the str
	 * @param ente
	 *            the ente
	 * @return the string
	 */
	private static String padHex(final String str, final int ente) {
		final StringBuffer tmpBuffer = new StringBuffer();
		if (str.length() < ente) {
			for (int j = 0; j < ente - str.length(); j++) {
				tmpBuffer.append('0');
			}
		}
		return tmpBuffer.toString();
	}
}
