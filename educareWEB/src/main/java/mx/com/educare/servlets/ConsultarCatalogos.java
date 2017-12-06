package mx.com.educare.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.google.gson.Gson;

import mx.com.educare.comun.GUIDGenerator;
import mx.com.educare.core.EducareCatalogosNegocio;
import mx.com.educare.dto.Grado;

/**
 * Servlet implementation class ConsultarCatalogos
 */
@WebServlet(description = "Servlet que se utiliza para consultar catalogos", urlPatterns = { "/ConsultarCatalogos" })
public class ConsultarCatalogos extends HttpServlet {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** The Constant LOGGER. */
	private static final Logger LOGGER = Logger.getLogger(ConsultarCatalogos.class);

       
	/**
     * Default constructor.
     */
    public ConsultarCatalogos() {
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
		response.setContentType("application/json;charset=UTF-8");
	    LOGGER.info("ConsultarDatosCredito :::: setCharacterEncoding -> UTF-8");
	    request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		Gson gson = new Gson();
		String uid = "";

		List<Grado> lista = null;
		try {

			EducareCatalogosNegocio admin = new EducareCatalogosNegocio();
			uid = GUIDGenerator.generateGUID("peticion");

			lista = admin.buscarTodosGrado(uid);
			
		} catch (Exception e) {
			LOGGER.error(e);
			e.printStackTrace();
			System.out.println(e);
		}
	}

}
