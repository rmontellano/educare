package mx.com.educare.servlets.auth;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import mx.com.educare.comun.GUIDGenerator;
import mx.com.educare.constantes.Constantes;
import mx.com.educare.core.security.CoreLogin;
import mx.com.educare.dto.auth.Auth;
import mx.com.educare.dto.util.EncabezadoRespuesta;
import mx.com.educare.util.Convert;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
//		response.setContentType("text/html;charset=UTF-8");
//		response.getWriter().append("<html><body><script>"
//				+ "function d2h(d) {"
//				+ "return d.toString(16);"
//				+ "}"
//				+ "function h2d (h) {"
//				    + "return parseInt(h, 16);"
//				    + "}"
//				+ "function stringToHex (tmp) {"
//				    + "var str = '',"
//				        + "i = 0,"
//				        + "tmp_len = tmp.length,"
//				        + "c;"
//				+ " "
//				    + "for (; i < tmp_len; i += 1) {"
//				    + "    c = tmp.charCodeAt(i);"
//				       + " str += d2h(c) + ' ';"
//				       + "    }"
//				    + "return str;"
//				    + "}"
//				+ "function hexToString (tmp) {"
//				    + "var arr = tmp.split(' '),"
//				        + "str = '',"
//				        + "i = 0,"
//				        + "arr_len = arr.length,"
//				        + "c;"
//				+ " "
//				    + "for (; i < arr_len; i += 1) {"
//				    + "c = String.fromCharCode( h2d( arr[i] ) );"
//				        + "str += c;"
//				        + "}"
//				+ " "
//				    + "return str;"
//				+"} console.log(stringToHex('HERSON'))</script></body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setCharacterEncoding(Constantes.ENCODING.getString());
		response.setContentType(Constantes.MIME_JSON.getString());
		PrintWriter out = response.getWriter();
		String q = null;
		String callback = null;
		String uid = null;
		//response.getWriter().append("E: ").append(Constantes.DELIMETER_PARAM.getString());

		if (request.getParameter("q") != null) {
			q = request.getParameter("q").trim();
		}

//		if (request.getParameter("param") != null) {
//			pass = request.getParameter("param");
//		}

		if (request.getParameter("callback") != null) {
			callback = request.getParameter("callback");
		}

		if (q != null && !q.isEmpty()) {
			//id = Convert.convertStringToHex(user) + "l" + pass;
			uid = GUIDGenerator.generateGUID(Login.class.getSimpleName());
			CoreLogin core = new CoreLogin();
			Auth respuesta = new Auth();
			Gson gson = new Gson();

			respuesta = core.validaCredenciales(q, uid);
			
			if(callback != null) {
				out.print(callback + "(" + gson.toJson(respuesta) + ");");
			} else {
				out.print(gson.toJson(respuesta));
			}
		} else {
			Auth respuesta = new Auth();
			respuesta.setHeader(new EncabezadoRespuesta("Es necesario usuario y contraseña.", false));
			Gson gson = new Gson();
			if(callback != null) {
				out.print(callback + "(" + gson.toJson(respuesta) + ");");
			} else {
				out.print(gson.toJson(respuesta));
			}
		}
	}

}
