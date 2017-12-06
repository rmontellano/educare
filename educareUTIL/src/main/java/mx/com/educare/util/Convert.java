package mx.com.educare.util;

public class Convert {

	/**
	 * Para enviar el parametro a decimal
	 */
	private static final int F_DEC = 16;

	/**
	 * Metodo regresa convert.
	 * @param str .
	 * @return String
	 */
	  public static String convertStringToHex(String str) {
	    char[] chars = str.toCharArray();
	    StringBuffer hex = new StringBuffer();
	    for (int i = 0; i < chars.length; i++) {
	      hex.append(Integer.toHexString((int) chars[i]));
	    }
	    return hex.toString();
	  }

	/**
	 *Metodo regresa convert.
	 * @param hex .
	 * @return String
	 */
	  public static String convertHexToString(String hex) {
	    StringBuilder sb = new StringBuilder();
	    StringBuilder temp = new StringBuilder();
	    //49204c6f7665204a617661 split into two characters 49, 20, 4c...
	    for ( int i = 0; i < hex.length() - 1; i += 2 ) {
	      //grab the hex in pairs
	      String output = hex.substring(i, i + 2);
	      //convert hex to decimal
	      int decimal = Integer.parseInt(output, F_DEC);
	      //convert the decimal to character
	      sb.append((char) decimal);
	      temp.append(decimal);
	    }
	    return sb.toString();
	  }
}
