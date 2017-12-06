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
import mx.com.educare.core.security.CoreLogin;
import mx.com.educare.dto.Materia;
import mx.com.educare.dto.MateriaRespuesta;
import mx.com.educare.dto.auth.Auth;
import mx.com.educare.dto.util.EncabezadoRespuesta;

import org.apache.log4j.Logger;

import com.google.gson.Gson;

/**
 * Servlet implementation class ObtenerMateria
 */
@WebServlet(description = "Servlet que se utiliza para obtener las materias", urlPatterns = { "/ObtenerMateria" })
public class ObtenerMateria extends HttpServlet {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** The Constant LOGGER. */
	private static final Logger LOGGER = Logger.getLogger(ObtenerMateria.class);

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ObtenerMateria() {
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
		CoreLogin coreL = new CoreLogin();
		Gson gson = new Gson();
		Auth respuesta = new Auth();
		String uid = "";
		EducareCatalogosNegocio admin = new EducareCatalogosNegocio();
		Materia materia = new Materia();
		MateriaRespuesta respuestaMateria = null;
		uid = GUIDGenerator.generateGUID(ObtenerMateria.class.getSimpleName());

		String servicio = request.getParameter("s");
		respuesta =  coreL.validaToken(request.getParameter("q"), uid);

		if (respuesta.getHeader().isStatus()) {

			if (servicio != null) {

				if (servicio.equals("btm")) {
					respuestaMateria = admin.buscarTodasMaterias(uid);
				} else if (servicio.equals("ig")) {

					if ((request.getParameter("idSeccion") != null || "".equals(request.getParameter("idSeccion")))
							&& (request.getParameter("numGrado") != null || "".equals(request.getParameter("numGrado")))
							&& (request.getParameter("ultimoGrado") != null || "".equals(request.getParameter("ultimoGrado")))) {

//						grado.setIdSeccion(Integer.parseInt(request.getParameter("idSeccion")));
//						grado.setNumGrado(Integer.parseInt(request.getParameter("numGrado")));
//						grado.setUltimoGrado(Integer.parseInt(request.getParameter("ultimoGrado")));

						respuestaMateria = admin.insertarMateria(uid, materia);
					} else {
						respuesta.setHeader(new EncabezadoRespuesta("Petición invalida.", false));
					}
				} else if (servicio.equals("eg")) {
					if ((request.getParameter("idGrado") != null || "".equals(request.getParameter("idGrado")))) {

						respuestaMateria = admin.eliminarMateria(uid, request.getParameter("idGrado"));
					} else {
						respuesta.setHeader(new EncabezadoRespuesta("Petición invalida.", false));
					}
				} else if (servicio.equals("ag")) {

					if ((request.getParameter("idSeccion") != null || "".equals(request.getParameter("idSeccion")))
							&& (request.getParameter("numGrado") != null || "".equals(request.getParameter("numGrado")))
							&& (request.getParameter("ultimoGrado") != null || "".equals(request.getParameter("ultimoGrado")))) {
//
//						grado.setIdSeccion(Integer.parseInt(request.getParameter("idSeccion")));
//						grado.setNumGrado(Integer.parseInt(request.getParameter("numGrado")));
//						grado.setUltimoGrado(Integer.parseInt(request.getParameter("ultimoGrado")));

						respuestaMateria = admin.actualizarMateria(uid, materia);
					}  else {
						respuesta.setHeader(new EncabezadoRespuesta("Petición invalida.", false));
					}
				}
			} else {
				respuesta.setHeader(new EncabezadoRespuesta("Petición invalida.", false));
			}
			out.print(gson.toJson(respuestaMateria));
		} else {
			out.print(gson.toJson(respuesta));
		}
	}
}

