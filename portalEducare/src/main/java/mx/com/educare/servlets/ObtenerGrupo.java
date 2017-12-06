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
import mx.com.educare.dto.Grupo;
import mx.com.educare.dto.GrupoRespuesta;
import mx.com.educare.dto.auth.Auth;
import mx.com.educare.dto.util.EncabezadoRespuesta;

import org.apache.log4j.Logger;

import com.google.gson.Gson;

/**
 * Servlet implementation class ObtenerGrupo
 */
@WebServlet(description = "Servlet que se utiliza para obtener el grupo", urlPatterns = { "/ObtenerGrupo" })
public class ObtenerGrupo extends HttpServlet {
	/**
	 *  The Constant serialVersionUID. 
	*/
	private static final long serialVersionUID = 1L;

	/** The Constant LOGGER. */
	private static final Logger LOGGER = Logger.getLogger(ObtenerGrado.class);
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ObtenerGrupo() {
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
		LOGGER.info("ObtenerGrupo :::: setCharacterEncoding -> UTF-8");

		response.setContentType("application/json;charset=UTF-8");
		PrintWriter out = response.getWriter();
		CoreLogin coreL = new CoreLogin();
		Gson gson = new Gson();
		Auth respuesta = new Auth();
		String uid = "";
		EducareCatalogosNegocio admin = new EducareCatalogosNegocio();
		Grupo grupo = new Grupo();
		GrupoRespuesta respuestaGrupo = null;
		uid = GUIDGenerator.generateGUID(ObtenerGrado.class.getSimpleName());

		String servicio = request.getParameter("s");
		respuesta =  coreL.validaToken(request.getParameter("q"), uid);

		if (respuesta.getHeader().isStatus()) {

			if (servicio != null) {

				if (servicio.equals("btg")) {
					respuestaGrupo = admin.buscarTodosGrupo(uid);
				} else if (servicio.equals("ig")) {

					if ((request.getParameter("nomGrupo") != null || "".equals(request.getParameter("nomGrupo")))
							&& (request.getParameter("descripcion") != null || "".equals(request.getParameter("descripcion")))
							&& (request.getParameter("capacidad") != null || "".equals(request.getParameter("capacidad")))
							&& (request.getParameter("idGrado") != null || "".equals(request.getParameter("idGrado")))
							&& (request.getParameter("tipoGrupo") != null || "".equals(request.getParameter("tipoGrupo")))) {

						grupo.setNomGrupo(request.getParameter("nomGrupo").toString());
						grupo.setDescripcion(request.getParameter("descripcion").toString());
						grupo.setCapacidad(Integer.parseInt(request.getParameter("capacidad")));
						grupo.setIdgrado(Integer.parseInt(request.getParameter("idGrado")));
						grupo.setTipoGrupo(Integer.parseInt(request.getParameter("tipoGrupo")));
						grupo.setStatus(1);

						respuestaGrupo = admin.insertarGrupo(uid, grupo);
					} else {
						respuesta.setHeader(new EncabezadoRespuesta("Petición invalida.", false));
					}
				} else if (servicio.equals("eg")) {
					if ((request.getParameter("idGrado") != null || "".equals(request.getParameter("idGrado")))) {

						respuestaGrupo = admin.eliminarGrupo(uid, Integer.parseInt(request.getParameter("idGrado")));
					} else {
						respuesta.setHeader(new EncabezadoRespuesta("Petición invalida.", false));
					}
				} else if (servicio.equals("ag")) {

					if ((request.getParameter("nomGrupo") != null || "".equals(request.getParameter("nomGrupo")))
							&& (request.getParameter("descripcion") != null || "".equals(request.getParameter("descripcion")))
							&& (request.getParameter("capacidad") != null || "".equals(request.getParameter("capacidad")))
							&& (request.getParameter("idGrado") != null || "".equals(request.getParameter("idGrado")))
							&& (request.getParameter("tipoGrupo") != null || "".equals(request.getParameter("tipoGrupo")))) {

						grupo.setNomGrupo(request.getParameter("nomGrupo").toString());
						grupo.setDescripcion(request.getParameter("descripcion").toString());
						grupo.setCapacidad(Integer.parseInt(request.getParameter("capacidad")));
						grupo.setIdgrado(Integer.parseInt(request.getParameter("idGrado")));
						grupo.setTipoGrupo(Integer.parseInt(request.getParameter("tipoGrupo")));
						grupo.setStatus(1);

						respuestaGrupo = admin.actualizarGrupo(uid, grupo);
					}  else {
						respuesta.setHeader(new EncabezadoRespuesta("Petición invalida.", false));
					}
				}
			} else {
				respuesta.setHeader(new EncabezadoRespuesta("Petición invalida.", false));
			}
			out.print(gson.toJson(respuestaGrupo));
		} else {
			out.print(gson.toJson(respuesta));
		}

	}

}
