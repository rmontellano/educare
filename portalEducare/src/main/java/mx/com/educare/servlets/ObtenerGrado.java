package mx.com.educare.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mx.com.educare.comun.GUIDGenerator;
import mx.com.educare.constantes.Constantes;
import mx.com.educare.core.EducareCatalogosNegocio;
import mx.com.educare.dto.Grado;
import mx.com.educare.util.ValidadorReglas;

import org.apache.log4j.Logger;


/**
 * Servlet implementation class ObtenerGrado
 */
@WebServlet(description = "Sevlet que se utiliza para obtner el grado", urlPatterns = { "/ObtenerGrado" })
public class ObtenerGrado extends HttpServlet {
	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** The Constant LOGGER. */
	private static final Logger LOGGER = Logger.getLogger(ObtenerGrado.class);

	/**
     * Default constructor.
     */
    public ObtenerGrado() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
	 * Do get.
	 *
	 * @param request the request
	 * @param response the response
	 * @throws ServletException the servlet exception
	 * @throws IOException Signals that an I/O exception has occurred.
	 * @see HttpServlet#doGet(HttpServletRequest request,
	 * HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LOGGER.debug("en get de servlet, redireccionando a post");
		doPost(request, response);
	}

	/**
	 * Do post.
	 *
	 * @param request the request
	 * @param response the response
	 * @throws ServletException the servlet exception
	 * @throws IOException Signals that an I/O exception has occurred.
	 * @see HttpServlet#doPost(HttpServletRequest request,
	 * HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LOGGER.info("ObtenerGrado :::: setCharacterEncoding -> UTF-8");

		response.setContentType("application/json;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String uid = "";
		EducareCatalogosNegocio admin = new EducareCatalogosNegocio();
		Grado grado = new Grado();
		String respuestaGrado = null;
		uid = GUIDGenerator.generateGUID(ObtenerGrado.class.getSimpleName());

		String servicio = request.getParameter("operacion");

        if (servicio != null) {
          if (servicio.equals("llenarComboSeccion")) {
			  respuestaGrado = admin.llenarComboSeccion(uid);
		   } else if (servicio.equals("llenarComboGrado")) {
			   respuestaGrado = admin.llenarComboGrado(uid);
		   } else if (servicio.equals("llenarComboUltimoGrado")) {
			   respuestaGrado = admin.llenarComboUltimoGrado(uid);    
           } else if (servicio.equals("catalogoBusquedaGrado")) {
        	  String descripcion = request.getParameter("idSeccion");
			  grado.setDescripcion(descripcion); 
			  grado.setIdGrado(Integer.parseInt(request.getParameter("idGrado")));
			  
			  if (request.getParameter("idUltimoGrado") != null) {
				  if (request.getParameter("idUltimoGrado").equals(Constantes.SI.getString())) {
					  grado.setUltimoGrado(1); 
				  } else {
					  grado.setUltimoGrado(null); 
				  }
			  } 
			   respuestaGrado = admin.buscarGrado(uid, grado);
			   
		   }
		}
        if (servicio == null || respuestaGrado == null) {
        	respuestaGrado = "{ \"header\": {	\"status\": false,	"
					+ "\"mensaje\": \"La petición viene nula\"	}}";
        }
	 out.print(respuestaGrado);
	}
}
