package mx.com.educare.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mx.com.educare.comun.GUIDGenerator;
import mx.com.educare.core.EducareCatalogosNegocio;
import mx.com.educare.dto.MenuRespuesta;
import mx.com.educare.dto.util.EncabezadoRespuesta;

import org.apache.log4j.Logger;

import com.google.gson.Gson;

/**
 * Servlet implementation class ObtenerMenu
 */
@WebServlet(description = "Servlet que se utiliza para obtener el menu", urlPatterns = { "/ObtenerMenu" })
public class ObtenerMenu extends HttpServlet {
	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** The Constant LOGGER. */
	private static final Logger LOGGER = Logger.getLogger(ObtenerCatalago.class);

	/**
     * Default constructor.
     */
    public ObtenerMenu() {
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
		Gson gson = new Gson();
		String uid = "";
		EducareCatalogosNegocio admin = new EducareCatalogosNegocio();
		MenuRespuesta respuestaMenu = new MenuRespuesta();
		uid = GUIDGenerator.generateGUID(ObtenerMenu.class.getSimpleName());

		String servicio = request.getParameter("s");

		if (servicio != null) {
			if ((request.getParameter("idPerfil") != null || "".equals(request.getParameter("idPerfil")))) {
				if (servicio.equals("mn")) {

					respuestaMenu = admin.obtenerMenu(uid, Integer.parseInt(request.getParameter("idPerfil")));
					out.print(gson.toJson(respuestaMenu));
				} else if (servicio.equals("smn")) {
					if ((request.getParameter("idPerfil") != null || "".equals(request.getParameter("idPerfil")))
							&& (request.getParameter("idPadre") != null || "".equals(request.getParameter("idPadre")))) {

						respuestaMenu = admin.obtenerSubMenu(uid, Integer.parseInt(request.getParameter("idPerfil")),
								Integer.parseInt(request.getParameter("idPadre")));
						out.print(gson.toJson(respuestaMenu));
					}
				}
			} else {
				respuestaMenu.setHeader(new EncabezadoRespuesta("Petición invalida.", false));
			}
		} else {
			respuestaMenu.setHeader(new EncabezadoRespuesta("Petición invalida.", false));
		}
	}

}
