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
import mx.com.educare.dto.Criterio;
import mx.com.educare.dto.CriterioRespuesta;
import mx.com.educare.dto.auth.Auth;
import mx.com.educare.dto.util.EncabezadoRespuesta;

import org.apache.log4j.Logger;

import com.google.gson.Gson;

/**
 * Servlet implementation class ObtenerCriterio
 */
@WebServlet(description = "Servlet que se utiliza para obtener el criterio de evaluacion", urlPatterns = { "/ObtenerCriterio" })
public class ObtenerCriterio extends HttpServlet {
	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** The Constant LOGGER. */
	private static final Logger LOGGER = Logger.getLogger(ObtenerCriterio.class);


    /**
     * @see HttpServlet#HttpServlet()
     */
    public ObtenerCriterio() {
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
		LOGGER.info("ObtenerCriterio :::: setCharacterEncoding -> UTF-8");

		response.setContentType("application/json;charset=UTF-8");
		PrintWriter out = response.getWriter();
		CoreLogin coreL = new CoreLogin();
		Gson gson = new Gson();
		Auth respuesta = new Auth();
		String uid = "";
		EducareCatalogosNegocio admin = new EducareCatalogosNegocio();
		Criterio criterio = new Criterio();
		CriterioRespuesta respuestaCriterio = null;
		uid = GUIDGenerator.generateGUID(ObtenerGrado.class.getSimpleName());

		String servicio = request.getParameter("s");
		respuesta =  coreL.validaToken(request.getParameter("q"), uid);

		if (respuesta.getHeader().isStatus()) {

			if (servicio != null) {

				if (servicio.equals("otc")) {
					respuestaCriterio = admin.obtieneTodosCriterio(uid);
				} else if (servicio.equals("ic")) {

					if ((request.getParameter("tipCriterio") != null || "".equals(request.getParameter("tipCriterio")))
							&& (request.getParameter("descripcion") != null || "".equals(request.getParameter("numGrado")))
							&& (request.getParameter("calculoCriterio") != null || "".equals(request.getParameter("ultimoGrado")))) {

						criterio.setTipoCriterio(Integer.parseInt(request.getParameter("tipCriterio")));
						criterio.setDescripcion(request.getParameter("descripcion").toString());
						criterio.setCalculoCriterio(Integer.parseInt(request.getParameter("calculoCriterio")));
						criterio.setStatus(1);

						respuestaCriterio = admin.insertarCriterio(uid, criterio);
					} else {
						respuesta.setHeader(new EncabezadoRespuesta("Petición invalida.", false));
					}
				} else if (servicio.equals("ec")) {
					if ((request.getParameter("idCriterio") != null || "".equals(request.getParameter("idCriterio")))) {

						respuestaCriterio = admin.eliminarCriterio (uid, Integer.parseInt(request.getParameter("idCriterio")));
					} else {
						respuesta.setHeader(new EncabezadoRespuesta("Petición invalida.", false));
					}
				} else if (servicio.equals("ac")) {

					if ((request.getParameter("tipCriterio") != null || "".equals(request.getParameter("tipCriterio")))
							&& (request.getParameter("descripcion") != null || "".equals(request.getParameter("numGrado")))
							&& (request.getParameter("calculoCriterio") != null || "".equals(request.getParameter("ultimoGrado")))) {

						criterio.setTipoCriterio(Integer.parseInt(request.getParameter("tipCriterio")));
						criterio.setDescripcion(request.getParameter("descripcion").toString());
						criterio.setCalculoCriterio(Integer.parseInt(request.getParameter("calculoCriterio")));
						criterio.setStatus(1);

						respuestaCriterio = admin.actualizarCriterio(uid, criterio);
					}  else {
						respuesta.setHeader(new EncabezadoRespuesta("Petición invalida.", false));
					}
				}
			} else {
				respuesta.setHeader(new EncabezadoRespuesta("Petición invalida.", false));
			}
			out.print(gson.toJson(respuestaCriterio));
		} else {
			out.print(gson.toJson(respuesta));
		}
	}
}
