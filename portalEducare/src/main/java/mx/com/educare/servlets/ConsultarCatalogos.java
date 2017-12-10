package mx.com.educare.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
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
import mx.com.educare.dto.Criterio;
import mx.com.educare.dto.CriterioRespuesta;
import mx.com.educare.dto.Empleado;
import mx.com.educare.dto.EmpleadoRespuesta;
import mx.com.educare.dto.Grado;
import mx.com.educare.dto.Grupo;
import mx.com.educare.dto.GrupoRespuesta;
import mx.com.educare.dto.Materia;
import mx.com.educare.dto.MateriaRespuesta;
import mx.com.educare.dto.Menu;
import mx.com.educare.dto.MenuRespuesta;
import mx.com.educare.dto.Puesto;
import mx.com.educare.dto.PuestoRespuesta;
import mx.com.educare.dto.util.RespuestaGrado;

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
		String json = "";

		List<Grado> lista = null;
		RespuestaGrado respuestaGrado = null;
		List<Grupo> listaGRupo = null;
		GrupoRespuesta respuestaGrupo = null;
		List<Criterio> listaCriterio = null;
		CriterioRespuesta respuestaCriterio = null;
		List<Materia> listaMateria = null;
		MateriaRespuesta respuestaMateria = null;
		List<Puesto> listaPuesto = null;
		PuestoRespuesta respuestaPuesto = null;
		List<Empleado> listaEmpleado = null;
		EmpleadoRespuesta respuestaEmpleado = null;
		List<Menu> listaMenu = null;
		MenuRespuesta respuestaMenu = null;
//		try {
//
//			EducareCatalogosNegocio admin = new EducareCatalogosNegocio();
//			uid = GUIDGenerator.generateGUID("peticion");
//			Grado grado = new Grado();
//			Grupo grupo = new Grupo();
//			Criterio criterio = new Criterio();
//			Materia materia = new Materia();
//			Puesto puesto = new Puesto();
//			Empleado empleado = new Empleado();
//			Menu menu = new Menu();
//
//			String respuesta  = request.getParameter("servicio");
//
//			if (respuesta.equals("1")) {
//				//lista = admin.buscarTodosGrado(uid);
//
//				json = gson.toJson(lista, List.class);
//				out.print(json);
//			} else if (respuesta.equals("2")) {
//
//				grado.setIdSeccion(50);
//				grado.setNumGrado(50);
//				grado.setUltimoGrado(10);
//
//				respuestaGrado = admin.insertarGrado(uid, grado);
//
//				json = gson.toJson(respuestaGrado, List.class);
//				out.print(json);
//			} else if (respuesta.equals("3")) {
//				grado = admin.buscarGradoPorId(uid, 3);
//				json = gson.toJson(grado, List.class);
//				out.print(json);
//			} else if(respuesta.equals("4")) {
//
//				grado.setIdGrado(17);
//				grado.setIdSeccion(1);
//				grado.setNumGrado(1);
//				grado.setUltimoGrado(1);
//
//				respuestaGrado = admin.actualizarGrado(uid, grado);
//
//				json = gson.toJson(respuestaGrado, List.class);
//				out.print(json);
//			} else if (respuesta.equals("5")) {
//				respuestaGrado = admin.eliminarGrado(uid, 3);
//				json = gson.toJson(respuestaGrado, List.class);
//				out.print(json);
//			} else if (respuesta.equals("6")) {
//				lista = admin.listaGradoSeccion(uid);
//
//				json = gson.toJson(lista, List.class);
//				out.print(json);
//			} else if (respuesta.equals("7")) {
//				lista = admin.obtieneTodosGrados(uid);
//
//				json = gson.toJson(lista, List.class);
//				out.print(json);
//			} else if (respuesta.equals("8")) {
//
//				grado.setIdGrado(10);
//				grado.setIdSeccion(38);
//				grado.setNumGrado(0);
//				grado.setUltimoGrado(0);
//				lista = admin.obtieneTodosGradosPorColumna(uid, grado);
//				json = gson.toJson(lista, List.class);
//				out.print(json);
//			} else if (respuesta.equals("9")) {
//
//				//listaGRupo = admin.buscarTodosGrupo(uid);
//
//				json = gson.toJson(listaGRupo, List.class);
//				out.print(json);
//			} else if (respuesta.equals("10")) {
//
//				grupo.setNomGrupo("9C");
//				grupo.setDescripcion("Pruebas");
//				grupo.setCapacidad(100);
//				grupo.setIdgrado(12);
//				grupo.setTipoGrupo(0);
//				grupo.setStatus(1);
//
//				respuestaGrupo = admin.insertarGrupo(uid, grupo);
//
//				json = gson.toJson(respuestaGrupo, List.class);
//				out.print(json);
//			} else if (respuesta.equals("11")) {
//				grupo = admin.buscarGrupoPorId(uid, 3);
//				json = gson.toJson(grupo, List.class);
//				out.print(json);
//			} else if (respuesta.equals("12")) {
//
//				grupo.setIdGrupo(25);
//				grupo.setNomGrupo("3C");
//				grupo.setDescripcion("Pruebas 2");
//				grupo.setCapacidad(99);
//				grupo.setIdgrado(11);
//				grupo.setTipoGrupo(0);
//				grupo.setStatus(1);
//
//				respuestaGrupo = admin.actualizarGrupo(uid, grupo);
//
//				json = gson.toJson(respuestaGrado, List.class);
//				out.print(json);
//
//			} else if (respuesta.equals("13")) {
//
//				respuestaGrupo = admin.eliminarGrupo(uid, 25);
//				json = gson.toJson(respuestaGrupo, List.class);
//				out.print(json);
//			} else if (respuesta.equals("14")) {
//				listaGRupo = admin.listaGrupoSeccion(uid);
//
//				json = gson.toJson(listaGRupo, List.class);
//				out.print(json);
//			} else if (respuesta.equals("15")) {
//				listaGRupo = admin.obtieneTodosGrupos(uid);
//
//				json = gson.toJson(listaGRupo, List.class);
//				out.print(json);
//			} else if (respuesta.equals("16")) {
//
//				grupo.setIdGrupo(25);
//				grupo.setNomGrupo("Pruebas 2");
//				grupo.setDescripcion("NULL");
//				grupo.setCapacidad(99);
//				grupo.setIdgrado(11);
//				grupo.setTipoGrupo(0);
//
//				listaGRupo = admin.obtieneGrupoTodoGradosPorColumna(uid, grupo);
//				json = gson.toJson(listaGRupo, List.class);
//				out.print(json);
//			} else if (respuesta.equals("17")) {
//				respuestaCriterio = admin.obtieneTodosCriterio(uid);
//
//				json = gson.toJson(listaCriterio, List.class);
//				out.print(json);
//			} else if (respuesta.equals("18")) {
//
//				criterio.setTipoCriterio(28);
//				criterio.setDescripcion("Pruebas de criterio");
//				criterio.setCalculoCriterio(0);
//				criterio.setStatus(1);
//
//				respuestaCriterio = admin.insertarCriterio(uid, criterio);
//
//				json = gson.toJson(respuestaGrado, List.class);
//				out.print(json);
//			} else if (respuesta.equals("19")) {
//
//				criterio.setIdCriterio(58);
//				criterio.setTipoCriterio(29);
//				criterio.setDescripcion("Pruebas de criterio 2");
//				criterio.setCalculoCriterio(0);
//
//				respuestaCriterio = admin.actualizarCriterio(uid, criterio);
//
//				json = gson.toJson(respuestaGrado, List.class);
//				out.print(json);
//			} else if (respuesta.equals("20")) {
//				respuestaCriterio = admin.eliminarCriterio(uid, 58);
//				json = gson.toJson(respuestaCriterio, List.class);
//				out.print(json);
//			} else if (respuesta.equals("21")) {
//
//				criterio = admin.buscarCriterioPorId(uid, 58);
//				json = gson.toJson(criterio, List.class);
//				out.print(json);
//			}else if (respuesta.equals("22")) {
//				respuestaMateria = admin.buscarTodasMaterias(uid);
//
//				json = gson.toJson(listaMateria, List.class);
//				out.print(json);
//			} else if (respuesta.equals("23")) {
//
//				materia.setIdMateria("AOC1");
//				materia.setNombre("Geometria Analitica");
//				materia.setCreditos(10);
//				materia.setTipoMat(1);
//				materia.setIdGrado(1);
//				materia.setTipoGrupo(21);
//				materia.setTipoCaptura(23);
//				materia.setStatus(1);
//
//				respuestaMateria = admin.insertarMateria(uid, materia);
//
//				json = gson.toJson(respuestaMateria, List.class);
//				out.print(json);
//
//			} else if (respuesta.equals("24")) {
//
//				materia.setIdMateria("AOC1");
//				materia.setNombre("Algebra");
//				materia.setCreditos(5);
//				materia.setTipoMat(2);
//				materia.setIdGrado(4);
//				materia.setTipoGrupo(20);
//				materia.setTipoCaptura(2);
//				materia.setStatus(1);
//
//				respuestaMateria = admin.actualizarMateria(uid, materia);
//
//				json = gson.toJson(respuestaMateria, List.class);
//				out.print(json);
//			} else if (respuesta.equals("25")) {
//
//				respuestaMateria = admin.eliminarMateria(uid, "AOC1");
//				json = gson.toJson(respuestaMateria, List.class);
//				out.print(json);
//			} else if (respuesta.equals("26")) {
//
//				materia = admin.buscarMateriaPorId(uid, "PR01E");
//				json = gson.toJson(materia, List.class);
//				out.print(json);
//			} else if (respuesta.equals("27")) {
//
//				listaMateria = admin.obtieneMateriasHorario(uid, 4);
//				json = gson.toJson(listaMateria, List.class);
//				out.print(json);
//			} else if (respuesta.equals("28")) {
//
//				materia.setIdGrado(4);
//				listaMateria = admin.obtieneMateriasHorario(uid, materia);
//
//				json = gson.toJson(listaMateria, List.class);
//				out.print(json);
//			} else if (respuesta.equals("29")) {
//
//				puesto.setDescripcion("Prueba de Puesto");
//				puesto.setStatus(1);
//				respuestaPuesto = admin.insertarPuesto(uid, puesto);
//
//				json = gson.toJson(respuestaPuesto, List.class);
//				out.print(json);
//			} else if(respuesta.equals("30")) {
//
//				respuestaPuesto = admin.eliminarPuesto(uid, 19);
//
//				json = gson.toJson(respuestaPuesto, List.class);
//				out.print(json);
//			} else if(respuesta.equals("31")) {
//
//				puesto.setDescripcion("Prueba de Puesto 2 ");
//				puesto.setIdPuesto(19);
//				respuestaPuesto = admin.actualizarPuesto(uid, puesto);
//
//				json = gson.toJson(respuestaPuesto, List.class);
//				out.print(json);
//			} else if(respuesta.equals("32")) {
//
//				puesto = admin.buscarPuestoPorId(uid, 19);
//				json = gson.toJson(puesto, List.class);
//				out.print(json);
//			} else if (respuesta.equals("33")) {
//				listaPuesto = admin.listaPuestoTodos(uid);
//
//				json = gson.toJson(listaPuesto, List.class);
//				out.print(json);
//			} else if (respuesta.equals("34")) {
//
//				puesto.setIdPuesto(19);
//				puesto.setDescripcion("Prueba de Puesto 2");
//				listaPuesto = admin.obtienePuestoPorColumna(uid, puesto);
//
//				json = gson.toJson(listaPuesto, List.class);
//				out.print(json);
//			} else if (respuesta.equals("35")) {
//
//				Date ingreso = new Date();
//		        Date nacimiento = new Date();
//
//				empleado.setIdEmpleado("20017P01");
//				empleado.setNombre("Antonio");
//				empleado.setDireccion("Vicente guerrero");
//				empleado.setEmail("tonyocampoc@gmail.com");
//				empleado.setTelefonoCasa("7773680189");
//				empleado.setTelefonoCelular("5540024045");
//				empleado.setColonia("Lomas de San Francisco");
//				empleado.setCodigoPostal("62550");
//				empleado.setFechaIngreso(ingreso);
//				empleado.setFechaNacimiento(nacimiento);
//				empleado.setTipoSangre("O+");
//				empleado.setDirImagen(null);
//				empleado.setSexo("M");
//				empleado.setCurp("OACC8103289X3Hcml01");
//				empleado.setIdPuesto(16);
//				empleado.setActivo(1);
//				empleado.setApellidoPaterno("OCAMPO");
//				empleado.setApellidoMaterno("CASTRO");
//				empleado.setRfc("OACC8103289X3");
//				empleado.setNombreContacto("HERSON SAMANO");
//				empleado.setTelefonoContacto("55123145678");
//				empleado.setNumeroExterior(4);
//				empleado.setNumeroInterior("1");
//				empleado.setStatus(1);
//				respuestaEmpleado = admin.insertarEmpleado(uid, empleado);
//
//				json = gson.toJson(respuestaPuesto, List.class);
//				out.print(json);
//			} else if (respuesta.equals("36")) {
//				listaEmpleado = admin.buscarTodosEmpleado(uid);
//
//				json = gson.toJson(listaEmpleado, List.class);
//				out.print(json);
//			} else if (respuesta.equals("37")) {
//				listaEmpleado = admin.buscarEmpleadoPorId(uid, "20017P01");
//
//				json = gson.toJson(listaEmpleado, List.class);
//				out.print(json);
//			} else if (respuesta.equals("38")) {
//
//				listaMenu = admin.buscarMenuPorId(uid, 1);
//				json = gson.toJson(listaMenu, List.class);
//				out.print(json);
//			} else if (respuesta.equals("39")) {
//				respuestaEmpleado = admin.eliminarEmpleado(uid, "20017P01");
//
//				json = gson.toJson(respuestaEmpleado, List.class);
//				out.print(json);
//
//			} else if (respuesta.equals("40")) {
//
//				Date ingreso = new Date();
//		        Date nacimiento = new Date();
//
//				empleado.setIdEmpleado("20017P01");
//				empleado.setNombre("Antonio 1");
//				empleado.setDireccion("Vicente guerrero 1");
//				empleado.setEmail("tonyocampoc@gmail.com1");
//				empleado.setTelefonoCasa("77736801891");
//				empleado.setTelefonoCelular("55400240451");
//				empleado.setColonia("Lomas de San Francisco 1");
//				empleado.setCodigoPostal("625501");
//				empleado.setFechaIngreso(ingreso);
//				empleado.setFechaNacimiento(nacimiento);
//				empleado.setTipoSangre("O+1");
//				empleado.setDirImagen(null);
//				empleado.setSexo("A");
//				empleado.setCurp("OACC8103289X3Hcml011");
//				empleado.setIdPuesto(16);
//				empleado.setActivo(1);
//				empleado.setApellidoPaterno("OCAMPO1");
//				empleado.setApellidoMaterno("CASTRO1");
//				empleado.setRfc("OACC8103289X31");
//				empleado.setNombreContacto("HERSON SAMANO1");
//				empleado.setTelefonoContacto("551231456781");
//				empleado.setNumeroExterior(41);
//				empleado.setNumeroInterior("11");
//				empleado.setStatus(1);
//
//				respuestaEmpleado = admin.actualizarEmpleado(uid, empleado);
//
//				json = gson.toJson(respuestaPuesto, List.class);
//				out.print(json);
//
//			}
//
//
//
//
//
//
//		} catch (Exception e) {
//			LOGGER.error(e);
//			e.printStackTrace();
//			System.out.println(e);
//		}
	}

}


