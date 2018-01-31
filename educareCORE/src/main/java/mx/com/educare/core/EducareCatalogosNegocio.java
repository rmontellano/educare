/**
 *  Clase intermediaria para conectar nuestro webService con el dao
 */
package mx.com.educare.core;

import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;

import mx.com.educare.dao.factory.EducareDAOFactory;
import mx.com.educare.dao.interfacedao.EducareDAO;
import mx.com.educare.dto.Catalogo;
import mx.com.educare.dto.CatalogoRespuesta;
import mx.com.educare.dto.Ciclo;
import mx.com.educare.dto.Criterio;
import mx.com.educare.dto.CriterioRespuesta;
import mx.com.educare.dto.Empleado;
import mx.com.educare.dto.EmpleadoRespuesta;
import mx.com.educare.dto.Grado;
import mx.com.educare.dto.GradoRespuesta;
import mx.com.educare.dto.Grupo;
import mx.com.educare.dto.GrupoRespuesta;
import mx.com.educare.dto.Materia;
import mx.com.educare.dto.MateriaRespuesta;
import mx.com.educare.dto.Menu;
import mx.com.educare.dto.MenuRespuesta;
import mx.com.educare.dto.Puesto;
import mx.com.educare.dto.PuestoRespuesta;
import mx.com.educare.dto.util.EncabezadoRespuesta;
import mx.com.educare.dto.util.RespuestaCiclo;
import mx.com.educare.dto.util.RespuestaGrado;
import mx.com.educare.log.LogHandler;
import mx.com.educare.util.ValidadorReglas;
import mx.com.educare.util.excepciones.EducareException;

/**
 *
 * @author tonyocampoc@gmail.com
 *
 */
public class EducareCatalogosNegocio {
	
	/**convertidor de respuesta a json*/
	Gson gson = new Gson();
	/**conectarse con el negocio*/
	EducareDAOFactory dao = new EducareDAOFactory();

	/***************************************INICIA OPERACIONES DEL CATALOGO DE GRADO *******************************************/
	
	/**
	 * Metodo de realizar la busqueda de secciones
	 * @param uid Identificador Unico
	 * @param grado Objeto de tipo grado
	 * @return Lista de tipo grado
	 */
	public String llenarComboSeccion(String uid) {
		LogHandler.info(uid, getClass(), "Entrada al metodo llenarComboSeccion: " + uid);
		RespuestaGrado respuestaGrado = new RespuestaGrado();
		respuestaGrado.setHeader(new EncabezadoRespuesta());
		respuestaGrado.getHeader().setStatus(true);
		respuestaGrado.getHeader().setUid(uid);
		String respuesta = null;
		EducareDAO core = null;
		List<Grado> listSeccion = null;
		try {
			core = dao.obtenerInstanciaDao();
			listSeccion = core.llenarComboSeccion(uid);
			LogHandler.info(uid, getClass(), "listSeccion: " + listSeccion);
			if (listSeccion != null && listSeccion.size() > 0) {			
				respuestaGrado.setListGrado(listSeccion);		
			} else {
				LogHandler.info(uid, getClass(), "la consulta no arrojo secciones");
				respuestaGrado.getHeader().setStatus(false);
				respuestaGrado.getHeader().setMensaje("La consulta no arrojo secciones");
			}
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al llenarComboSeccion : " + ex.getMessage(), ex);
			respuestaGrado.getHeader().setStatus(false);
			respuestaGrado.getHeader().setMensaje(ex.getMessage());
		}
		respuesta = gson.toJson(respuestaGrado);
		LogHandler.info(uid, getClass(), "Salida del  metodo llenarComboSeccion: " + respuesta);
		return respuesta;	
	}
	
	/**
	 * Metodo de realizar la busqueda de secciones
	 * @param uid Identificador Unico
	 * @param grado Objeto de tipo grado
	 * @return Lista de tipo grado
	 */
	public String llenarComboGrado(String uid) {
		LogHandler.info(uid, getClass(), "Entrada al metodo llenarComboGrado: " + uid);
		RespuestaGrado respuestaGrado = new RespuestaGrado();
		respuestaGrado.setHeader(new EncabezadoRespuesta());
		respuestaGrado.getHeader().setStatus(true);
		respuestaGrado.getHeader().setUid(uid);
		String respuesta = null;
		EducareDAO core = null;
		List<Grado> listGrado = null;
		try {
			core = dao.obtenerInstanciaDao();
			listGrado = core.llenarComboGrado(uid);
			LogHandler.info(uid, getClass(), "listGrado: " + listGrado);
			if (listGrado != null && listGrado.size() > 0) {			
				respuestaGrado.setListGrado(listGrado);		
			} else {
				LogHandler.info(uid, getClass(), "la consulta no arrojo grados");
				respuestaGrado.getHeader().setStatus(false);
				respuestaGrado.getHeader().setMensaje("La consulta no arrojo grados");
			}
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al llenarComboSeccion : " + ex.getMessage(), ex);
			respuestaGrado.getHeader().setStatus(false);
			respuestaGrado.getHeader().setMensaje(ex.getMessage());
		}
		respuesta = gson.toJson(respuestaGrado);
		LogHandler.info(uid, getClass(), "Salida del  metodo llenarComboGrado: " + respuesta);
		return respuesta;	
	}
	
	/**
	 * Metodo que se utilizar para obtener todos los grados por columna
	 * @param uid Identificador Unico
	 * @param grado Objeto de tipo grado
	 * @return Lista de tipo grado
	 */
	public String llenarComboUltimoGrado(String uid) {
		LogHandler.info(uid, getClass(), "Entrada al metodo llenarComboUltimoGrado: " + uid);
		RespuestaGrado respuestaGrado = new RespuestaGrado();
		respuestaGrado.setHeader(new EncabezadoRespuesta());
		respuestaGrado.getHeader().setStatus(true);
		respuestaGrado.getHeader().setUid(uid);
		String respuesta = null;
		EducareDAO core = null;
		List<Grado> listUltimoGrado = null;

		try {
			core = dao.obtenerInstanciaDao();
			listUltimoGrado = core.llenarComboUltimoGrado(uid);
			if (listUltimoGrado != null && listUltimoGrado.size() > 0) {
				listUltimoGrado = ValidadorReglas.comboUltimoGrado(uid, listUltimoGrado);
				LogHandler.info(uid, getClass(), "listUltimoGrado: " + listUltimoGrado);
				respuestaGrado.setListGrado(listUltimoGrado);	
			} else {
				LogHandler.info(uid, getClass(), "la consulta no arrojo ultimo grado  ");
				respuestaGrado.getHeader().setStatus(false);
				respuestaGrado.getHeader().setMensaje("La consulta no arrojo ultimo grado");
			}
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar : " + ex.getMessage(), ex);
			respuestaGrado.getHeader().setStatus(false);
			respuestaGrado.getHeader().setMensaje(ex.getMessage());
		}
		respuesta = gson.toJson(respuestaGrado);
		LogHandler.info(uid, getClass(), "Salida del  metodo llenarComboUltimoGrado: " + respuesta);
		return respuesta;
	}
	
	/**
	 * Metodo que se utilizar para obtener todos los grados por columna
	 * @param uid Identificador Unico
	 * @param grado Objeto de tipo grado
	 * @return Lista de tipo grado
	 */
	public String buscarGrado(String uid, Grado grado) {
		LogHandler.info(uid, getClass(), "Entrada al metodo buscarGrado: " + uid);
		RespuestaGrado respuestaGrado = new RespuestaGrado();
		respuestaGrado.setHeader(new EncabezadoRespuesta());
		respuestaGrado.getHeader().setStatus(true);
		respuestaGrado.getHeader().setUid(uid);
		String respuesta = null;
		EducareDAO core = null;
		List<Grado> listGrado = null;

		try {
			core = dao.obtenerInstanciaDao();
			listGrado = core.buscarGrado(uid, grado);
			if (listGrado != null && listGrado.size() > 0) {
				listGrado = ValidadorReglas.comboUltimoGrado(uid, listGrado);
				respuestaGrado.setListGrado(listGrado);	
			} else {
				respuestaGrado.getHeader().setStatus(false);
				respuestaGrado.getHeader().setMensaje("No se encontraron resultados");
			}
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar : " + ex.getMessage(), ex);
			respuestaGrado.getHeader().setStatus(false);
			respuestaGrado.getHeader().setMensaje(ex.getMessage());
		}
		respuesta = gson.toJson(respuestaGrado);
		LogHandler.info(uid, getClass(), "Salida del  metodo buscarGrado: " + respuesta);
		return respuesta;
	}
	
	/**
	 * Metodo que sirve para actualizar grado
	 * @param uid Identificador Unico
	 * @param grado Es el Id a buscar
	 * @return Objeto de tipo grado
	 */
	public String actualizarGrado(String uid, Grado grado) {

		EducareDAOFactory dao = new EducareDAOFactory();
		String respuesta = null;
		RespuestaGrado respuestaGrado = null;
		EducareDAO core = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada actualizarGrado: " + uid);
			core = dao.obtenerInstanciaDao();
			respuestaGrado = core.actualizarGrado(uid, grado);
			if (respuestaGrado == null) {
				throw new Exception("Ocurrio un error al actualizar el grado");
			} else if (respuestaGrado.getHeader() != null && !respuestaGrado.getHeader().isStatus()) {
				throw new Exception("Ocurrio un error al actualizar el grado: " + respuestaGrado.getHeader().getMensaje());
			}
		}
		catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al actualizarGrado : " + ex.getMessage(), ex);
			if (respuestaGrado == null) {
				respuestaGrado = new RespuestaGrado();
			}
			respuestaGrado.setHeader(new EncabezadoRespuesta(ex.getMessage(), false));
			respuestaGrado.getHeader().setUid(uid);
		}
		respuesta = gson.toJson(respuestaGrado);
		LogHandler.info(uid, getClass(), "Salida del  metodo actualizarGradok: " + respuesta);
		return respuesta;
	}
	
	/**
	 * Metodo que se utiliza para eliminar un grado
	 * @param uid Identificador Unico
	 * @param idGrado Es el Id a buscar
	 * @return Objeto de tipo grado
	 */
	public String eliminarGrado(String uid, Grado grado) {

		EducareDAOFactory dao = new EducareDAOFactory();
		String  respuesta = null;
		RespuestaGrado respuestaGrado = null;
		EducareDAO core = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: eliminarGrado " + uid);		
			core = dao.obtenerInstanciaDao();
			respuestaGrado = core.eliminarGrado(uid, grado);
			if (respuestaGrado == null) {
				throw new Exception("Ocurrio un error al eliminar el grado");
			} else if (respuestaGrado.getHeader() != null && !respuestaGrado.getHeader().isStatus()) {
				throw new Exception("Ocurrio un error al eliminar el grado: " + respuestaGrado.getHeader().getMensaje());
			}
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al eliminarGrado : " + ex.getMessage(), ex);
			if (respuestaGrado == null) {
				respuestaGrado = new RespuestaGrado();
			}
			respuestaGrado.setHeader(new EncabezadoRespuesta(ex.getMessage(), false));
			respuestaGrado.getHeader().setUid(uid);
		}
		respuesta = gson.toJson(respuestaGrado);
		LogHandler.info(uid, getClass(), "Salida del  metodo eliminarGrado: " + respuesta);
		return respuesta;
	}

	/**
	 * Metodo que sirve para insertar grado
	 * @param uid Identificador Unico
	 * @param grado Objeto de tipo grado
	 * @return GradoRespuesta
	 */
	public String insertarGrado(String uid, Grado grado) {

		EducareDAOFactory dao = new EducareDAOFactory();
		RespuestaGrado respuestaGrado = null;
		EducareDAO core = null;
		String respuesta = null; 

		try {
			LogHandler.info(uid, getClass(), "Entrada insertarGrado: " + grado);
			core = dao.obtenerInstanciaDao();
			respuestaGrado = core.insertarGrado(uid, grado);
			
			if (respuestaGrado == null) {
				throw new Exception("Ocurrio un error al insertar el grado");
			} else if (respuestaGrado.getHeader() != null && !respuestaGrado.getHeader().isStatus()) {
				throw new Exception("Ocurrio un error al insertar el grado: " + respuestaGrado.getHeader().getMensaje());
			}
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al insertarGrado : " + ex.getMessage(), ex);
			if (respuestaGrado == null) {
				respuestaGrado = new RespuestaGrado();
			}
			respuestaGrado.setHeader(new EncabezadoRespuesta(ex.getMessage(), false));
			respuestaGrado.getHeader().setUid(uid);
		}
		respuesta = gson.toJson(respuestaGrado);
		LogHandler.info(uid, getClass(), "Salida del  metodo insertarGrado: " + respuesta);
		return respuesta;
	}

	/***************************************TERMINAN OPERACIONES DEL CATALOGO DE GRADO *******************************************/
	/***************************************INICIA OPERACIONES DEL CATALOGO DE CICLO *******************************************/
	/**
	 * Metodo que realizar la busqueda de ciclos
	 * @param uid Identificador Unico
	 * @return Lista de tipo grado
	 */
	public String llenarComboSeccionCiclo(String uid) {
		LogHandler.info(uid, getClass(), "Entrada al metodo llenarComboSeccionCiclo: " + uid);
		RespuestaCiclo respuestaCiclo = new RespuestaCiclo();
		respuestaCiclo.setHeader(new EncabezadoRespuesta());
		respuestaCiclo.getHeader().setStatus(true);
		respuestaCiclo.getHeader().setUid(uid);
		String respuesta = null;
		EducareDAO core = null;
		List<Ciclo> listCiclo = null;
		try {
			core = dao.obtenerInstanciaDao();
			listCiclo = core.llenarComboSeccionCiclo(uid);
			LogHandler.info(uid, getClass(), "listCiclo: " + listCiclo);
			if (listCiclo != null && listCiclo.size() > 0) {			
				respuestaCiclo.setListCiclo(listCiclo);		
			} else {
				LogHandler.info(uid, getClass(), "la consulta no arrojo ciclos");
				respuestaCiclo.getHeader().setStatus(false);
				respuestaCiclo.getHeader().setMensaje("La consulta no arrojo ciclos");
			}
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al llenarComboSeccionCiclo : " + ex.getMessage(), ex);
			respuestaCiclo.getHeader().setStatus(false);
			respuestaCiclo.getHeader().setMensaje(ex.getMessage());
		}
		respuesta = gson.toJson(respuestaCiclo);
		LogHandler.info(uid, getClass(), "Salida del  metodo llenarComboSeccionCiclo: " + respuesta);
		return respuesta;	
	}
	
	/**
	 * Metodo de realizar la busqueda de la fecha inicio
	 * @param uid Identificador Unico
	 * @return Lista de tipo ciclo
	 */
	public String llenarComboFechaInicioCiclo(String uid) {
		LogHandler.info(uid, getClass(), "Entrada al metodo llenarComboFechaInicioCiclo: " + uid);
		RespuestaCiclo respuestaCiclo = new RespuestaCiclo();
		respuestaCiclo.setHeader(new EncabezadoRespuesta());
		respuestaCiclo.getHeader().setStatus(true);
		respuestaCiclo.getHeader().setUid(uid);
		String respuesta = null;
		EducareDAO core = null;
		List<Ciclo> listCiclo = null;
		try {
			core = dao.obtenerInstanciaDao();
			listCiclo = core.llenarComboFechaInicioCiclo(uid);
			LogHandler.info(uid, getClass(), "listCiclo: " + listCiclo);
			if (listCiclo != null && listCiclo.size() > 0) {			
				respuestaCiclo.setListCiclo(listCiclo);		
			} else {
				LogHandler.info(uid, getClass(), "la consulta no arrojo fechas inicio para este ciclo");
				respuestaCiclo.getHeader().setStatus(false);
				respuestaCiclo.getHeader().setMensaje("la consulta no arrojo fechas inicio para este ciclo");
			}
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al llenarComboFechaInicioCiclo : " + ex.getMessage(), ex);
			respuestaCiclo.getHeader().setStatus(false);
			respuestaCiclo.getHeader().setMensaje(ex.getMessage());
		}
		respuesta = gson.toJson(respuestaCiclo);
		LogHandler.info(uid, getClass(), "Salida del  metodo llenarComboFechaInicioCiclo: " + respuesta);
		return respuesta;	
	}
	
	/**
	 * Metodo de realizar la busqueda de la fecha fin
	 * @param uid Identificador Unico
	 * @return Lista de tipo ciclo
	 */
	public String llenarComboFechaFinCiclo(String uid) {
		LogHandler.info(uid, getClass(), "Entrada al metodo llenarComboFechaFinCiclo: " + uid);
		RespuestaCiclo respuestaCiclo = new RespuestaCiclo();
		respuestaCiclo.setHeader(new EncabezadoRespuesta());
		respuestaCiclo.getHeader().setStatus(true);
		respuestaCiclo.getHeader().setUid(uid);
		String respuesta = null;
		EducareDAO core = null;
		List<Ciclo> listCiclo = null;
		try {
			core = dao.obtenerInstanciaDao();
			listCiclo = core.llenarComboFechaFinCiclo(uid);
			LogHandler.info(uid, getClass(), "listCiclo: " + listCiclo);
			if (listCiclo != null && listCiclo.size() > 0) {			
				respuestaCiclo.setListCiclo(listCiclo);		
			} else {
				LogHandler.info(uid, getClass(), "la consulta no arrojo fechas fin para este ciclo");
				respuestaCiclo.getHeader().setStatus(false);
				respuestaCiclo.getHeader().setMensaje("la consulta no arrojo fechas fin para este ciclo");
			}
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al llenarComboFechaFinCiclo : " + ex.getMessage(), ex);
			respuestaCiclo.getHeader().setStatus(false);
			respuestaCiclo.getHeader().setMensaje(ex.getMessage());
		}
		respuesta = gson.toJson(respuestaCiclo);
		LogHandler.info(uid, getClass(), "Salida del  metodo llenarComboFechaFinCiclo: " + respuesta);
		return respuesta;	
	}
	
	/**
	 * Metodo que se utilizar para obtener todos los actuales
	 * @param uid Identificador Unico
	 * @return Lista de tipo grado
	 */
	public String llenarComboActualCiclo(String uid) {
		LogHandler.info(uid, getClass(), "Entrada al metodo llenarComboActualCiclo: " + uid);
		RespuestaCiclo respuestaCiclo = new RespuestaCiclo();
		respuestaCiclo.setHeader(new EncabezadoRespuesta());
		respuestaCiclo.getHeader().setStatus(true);
		respuestaCiclo.getHeader().setUid(uid);
		String respuesta = null;
		EducareDAO core = null;
		List<Ciclo> listCiclo = null;

		try {
			core = dao.obtenerInstanciaDao();
			listCiclo = core.llenarComboActualCiclo(uid);
			if (listCiclo != null && listCiclo.size() > 0) {
				listCiclo = ValidadorReglas.comboActual(uid, listCiclo);
				LogHandler.info(uid, getClass(), "listCiclo: " + listCiclo);
				respuestaCiclo.setListCiclo(listCiclo);	
			} else {
				LogHandler.info(uid, getClass(), "la consulta no arrojo actual ciclo  ");
				respuestaCiclo.getHeader().setStatus(false);
				respuestaCiclo.getHeader().setMensaje("La consulta no arrojo actual ciclo");
			}
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar : " + ex.getMessage(), ex);
			respuestaCiclo.getHeader().setStatus(false);
			respuestaCiclo.getHeader().setMensaje(ex.getMessage());
		}
		respuesta = gson.toJson(respuestaCiclo);
		LogHandler.info(uid, getClass(), "Salida del  metodo llenarComboActualCiclo: " + respuesta);
		return respuesta;
	}
	
	/**
	 * Metodo que se utilizar para obtener todos los ciclos por columna
	 * @param uid Identificador Unico
	 * @param ciclo Objeto de tipo Ciclo
	 * @return Lista de tipo Ciclo
	 */
	public String buscarCiclo(String uid, Ciclo ciclo) {
		LogHandler.info(uid, getClass(), "Entrada al metodo buscarCiclo: " + ciclo);
		RespuestaCiclo respuestaCiclo = new RespuestaCiclo();
		respuestaCiclo.setHeader(new EncabezadoRespuesta());
		respuestaCiclo.getHeader().setStatus(true);
		respuestaCiclo.getHeader().setUid(uid);
		String respuesta = null;
		EducareDAO core = null;
		List<Ciclo> listCiclo = null;

		try {
			core = dao.obtenerInstanciaDao();
			listCiclo = core.buscarCiclo(uid, ciclo);
			if (listCiclo != null && listCiclo.size() > 0) {
				listCiclo = ValidadorReglas.comboActual(uid, listCiclo);
				respuestaCiclo.setListCiclo(listCiclo);
			} else {
				respuestaCiclo.getHeader().setStatus(false);
				respuestaCiclo.getHeader().setMensaje("No se encontraron resultados");
			}
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar : " + ex.getMessage(), ex);
			respuestaCiclo.getHeader().setStatus(false);
			respuestaCiclo.getHeader().setMensaje(ex.getMessage());
		}
		respuesta = gson.toJson(respuestaCiclo);
		LogHandler.info(uid, getClass(), "Salida del  metodo buscarCiclo: " + respuesta);
		return respuesta;
	}
	
	/**
	 * Metodo que sirve para actualizar grado
	 * @param uid Identificador Unico
	 * @param grado Es el Id a buscar
	 * @return Objeto de tipo grado
	 */
	public String actualizarCiclo(String uid, Ciclo ciclo) {

		EducareDAOFactory dao = new EducareDAOFactory();
		String respuesta = null;
		RespuestaCiclo respuestaCiclo = null;
		EducareDAO core = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada actualizarCiclo: " + uid);
			core = dao.obtenerInstanciaDao();
			respuestaCiclo = core.actualizarCiclo(uid, ciclo);
			if (respuestaCiclo == null) {
				throw new Exception("Ocurrio un error al actualizar el ciclo");
			} else if (respuestaCiclo.getHeader() != null && !respuestaCiclo.getHeader().isStatus()) {
				throw new Exception("Ocurrio un error al actualizar el ciclo: " + respuestaCiclo.getHeader().getMensaje());
			}
		}
		catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al actualizarCiclo : " + ex.getMessage(), ex);
			if (respuestaCiclo == null) {
				respuestaCiclo = new RespuestaCiclo();
			}
			respuestaCiclo.setHeader(new EncabezadoRespuesta(ex.getMessage(), false));
			respuestaCiclo.getHeader().setUid(uid);
		}
		respuesta = gson.toJson(respuestaCiclo);
		LogHandler.info(uid, getClass(), "Salida del  metodo actualizarCiclo: " + respuesta);
		return respuesta;
	}
	/***************************************TERMINAN OPERACIONES DEL CATALOGO DE CICLO *******************************************/

	/**
	 * Metodo que se utilizar para buscar todos los grados
	 * @param uid Identificador Unico
	 * @return Lista de Grupo
	 */
	public GrupoRespuesta buscarTodosGrupo(String uid) {

		EducareDAOFactory dao = new EducareDAOFactory();
		GrupoRespuesta respuesta = new GrupoRespuesta();

		try {
			LogHandler.info(uid, getClass(), "Entrada: buscarTodosGrupo" + uid);
			respuesta.setGrupos(dao.obtenerInstanciaDao().buscarTodosGrupo(uid));
			if (respuesta.getGrupos() == null) {
				respuesta.setGrupos(new ArrayList<Grupo>());
			}
			respuesta.setHeader(new EncabezadoRespuesta(uid));
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar : " + ex.getMessage(), ex);
		}

		return respuesta;
	}

	/**
	 * Metodo que sirve para insertar grupo
	 * @param uid Identificador Unico
	 * @param grupo Objeto de tipo grupo
	 * @return GradoRespuesta
	 */
	public GrupoRespuesta insertarGrupo(String uid, Grupo grupo) {

		EducareDAOFactory dao = new EducareDAOFactory();
		GrupoRespuesta respuesta = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: insertarGrupo" + uid);
			respuesta = dao.obtenerInstanciaDao().insertarGrupo(uid, grupo);
			if (respuesta.getGrupos() == null) {
				respuesta.setGrupos(new ArrayList<Grupo>());
			}
			respuesta.setHeader(new EncabezadoRespuesta(uid));
		}
		catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al insertarGrado : " + ex.getMessage(), ex);
			respuesta.setHeader(new EncabezadoRespuesta(ex.getMessage(), false));
		}
		return respuesta;
	}

	/**
	 * Metodo que se utiliza para buscar por un Id
	 * @param uid Identificador Unico
	 * @param idGrupo Es el Id a buscar
	 * @return Objeto de tipo grupo
	 */
	public Grupo buscarGrupoPorId(String uid, int idGrupo) throws EducareException {
		EducareDAOFactory dao = new EducareDAOFactory();
		Grupo grupo = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: buscarGrupoPorId " + uid);

			grupo = dao.obtenerInstanciaDao().buscarGrupoPorId(uid, idGrupo);
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar : " + ex.getMessage(), ex);
		}

		return grupo;
	}

	/**
	 * Metodo que sirve para actualizar grado
	 * @param uid Identificador Unico
	 * @param grupo Es el Id a buscar
	 * @return Objeto de tipo grado
	 */
	public GrupoRespuesta actualizarGrupo(String uid, Grupo grupo) {

		EducareDAOFactory dao = new EducareDAOFactory();
		GrupoRespuesta respuesta = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: actualizarGrupo" + uid);
			respuesta = dao.obtenerInstanciaDao().actualizarGrupo(uid, grupo);
			if (respuesta.getGrupos() == null) {
				respuesta.setGrupos(new ArrayList<Grupo>());
			}
			respuesta.setHeader(new EncabezadoRespuesta(uid));
		}
		catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al actualizarGrupo : " + ex.getMessage(), ex);
			respuesta.setHeader(new EncabezadoRespuesta(ex.getMessage(), false));
		}
		return respuesta;
	}

	/**
	 * Metodo que se utiliza para eliminar un grupo
	 * @param uid Identificador Unico
	 * @param idGrado Es el Id a buscar
	 * @return Objeto de tipo grupo
	 */
	public GrupoRespuesta eliminarGrupo(String uid, int idGrado) {

		EducareDAOFactory dao = new EducareDAOFactory();
		GrupoRespuesta respuesta = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: eliminarGrupo " + uid);

			respuesta = dao.obtenerInstanciaDao().eliminarGrupo(uid, idGrado);
			if (respuesta.getGrupos() == null) {
				respuesta.setGrupos(new ArrayList<Grupo>());
			}
			respuesta.setHeader(new EncabezadoRespuesta(uid));
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al elimianrGrupo: " + ex.getMessage(), ex);
			respuesta.setHeader(new EncabezadoRespuesta(ex.getMessage(), false));
		}

		return respuesta;
	}

	/**
	 * Metodo que se utiliza para listaGrupoSeccion
	 * @param uid Identificador Unico
	 * @return Lista de tipo grupo
	 */
	public List<Grupo> listaGrupoSeccion(String uid) throws EducareException {

		EducareDAOFactory dao = new EducareDAOFactory();
		List<Grupo> listaGrupo = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: " + uid);

			listaGrupo = dao.obtenerInstanciaDao().listaGrupoSeccion(uid);
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar  listaGrupoSeccion: " + ex.getMessage(), ex);
		}

		return listaGrupo;
	}

	/**
	 * Metodo que se utilizar para obtener todos los grupos
	 * @param uid Identificador Unico
	 * @return Lista de tipo grupo
	 */
	public List<Grupo> obtieneTodosGrupos(String uid)  throws EducareException {

		EducareDAOFactory dao = new EducareDAOFactory();
		List<Grupo> listaGrupo = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: " + uid);

			listaGrupo = dao.obtenerInstanciaDao().obtieneTodosGrupos(uid);
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar : " + ex.getMessage(), ex);
		}

		return listaGrupo;
	}

	/**
	 * Metodo que se utilizar para obtener todos los grupo por columna
	 * @param uid Identificador Unico
	 * @param grupo Objeto de tipo grado
	 * @return Lista de tipo grupo
	 */
	public List<Grupo> obtieneGrupoTodoGradosPorColumna(String uid, Grupo grupo) throws EducareException {

		EducareDAOFactory dao = new EducareDAOFactory();
		List<Grupo> listaGrupo = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: " + uid);

			listaGrupo = dao.obtenerInstanciaDao().obtieneTodoGrupoPorColumna(uid, grupo);
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar obtieneGrupoTodoGradosPorColumna: " + ex.getMessage(), ex);
		}

		return listaGrupo;
	}

	/**
	 * Metodo que se utilizar para obtener todos los criterio
	 * @param uid Identificador Unico
	 * @return Lista de tipo Criterio
	 */
	public CriterioRespuesta obtieneTodosCriterio(String uid) {

		EducareDAOFactory dao = new EducareDAOFactory();
		CriterioRespuesta respuesta = new CriterioRespuesta(); 

		try {
			LogHandler.info(uid, getClass(), "Entrada: obtieneTodosCriterio " + uid);
			respuesta.setCriterios(dao.obtenerInstanciaDao().obtieneTodosCriterio(uid));
			if (respuesta.getCriterios() == null) {
				respuesta.setCriterios(new ArrayList<Criterio>());
			}
			respuesta.setHeader(new EncabezadoRespuesta(uid));
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar : " + ex.getMessage(), ex);
			respuesta.setHeader(new EncabezadoRespuesta(ex.getMessage(), false));
		}
		return respuesta;
	}

	/**
	 * Metodo que sirve para insertar criterio
	 * @param uid Identificador Unico
	 * @param criterio Objeto de tipo criterio
	 * @return CriterioRespuesta
	 */
	public CriterioRespuesta insertarCriterio(String uid, Criterio criterio) {

		EducareDAOFactory dao = new EducareDAOFactory();
		CriterioRespuesta respuesta = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: insertarCriterio" + uid);

			respuesta = dao.obtenerInstanciaDao().insertarCriterio(uid, criterio);
			if (respuesta.getCriterios() == null) {
				respuesta.setCriterios(new ArrayList<Criterio>());
			}
			respuesta.setHeader(new EncabezadoRespuesta(uid));
		}
		catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al insertarGrado : " + ex.getMessage(), ex);
			respuesta.setHeader(new EncabezadoRespuesta(ex.getMessage(), false));
		}
		return respuesta;
	}

	/**
	 * Metodo que sirve para insertar criterio
	 * @param uid Identificador Unico
	 * @param criterio Objeto de tipo criterio
	 * @return CriterioRespuesta
	 */
	public CriterioRespuesta actualizarCriterio(String uid, Criterio criterio) {

		EducareDAOFactory dao = new EducareDAOFactory();
		CriterioRespuesta respuesta = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: actualizarCriterio" + uid);
			respuesta = dao.obtenerInstanciaDao().actualizarCriterio(uid, criterio);
			if (respuesta.getCriterios() == null) {
				respuesta.setCriterios(new ArrayList<Criterio>());
			}
			respuesta.setHeader(new EncabezadoRespuesta(uid));
		}
		catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al actualizarCriterio : " + ex.getMessage(), ex);
		}
		return respuesta;
	}

	/**
	 * Metodo que se utiliza para eliminar un grado
	 * @param uid Identificador Unico
	 * @param idCriterio Es el Id a buscar
	 * @return Objeto de tipo grado
	 */
	public CriterioRespuesta eliminarCriterio(String uid, int idCriterio) {

		EducareDAOFactory dao = new EducareDAOFactory();
		CriterioRespuesta respuesta = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: eliminarCriterio " + uid);
			respuesta = dao.obtenerInstanciaDao().eliminarCriterio(uid, idCriterio);
			if (respuesta.getCriterios() == null) {
				respuesta.setCriterios(new ArrayList<Criterio>());
			}
			respuesta.setHeader(new EncabezadoRespuesta(uid));
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar : " + ex.getMessage(), ex);
			respuesta.setHeader(new EncabezadoRespuesta(ex.getMessage(), false));
		}

		return respuesta;
	}

	/**
	 * Metodo que se utiliza para buscar por un Id
	 * @param uid Identificador Unico
	 * @param idCriterio Es el Id a buscar
	 * @return Objeto de tipo Criterio
	 */
	public Criterio buscarCriterioPorId(String uid, int idCriterio) {

		EducareDAOFactory dao = new EducareDAOFactory();
		Criterio criterio = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: eliminarCriterio " + uid);

			criterio = dao.obtenerInstanciaDao().buscarCriterioPorId(uid, idCriterio);
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar : " + ex.getMessage(), ex);
		}

		return criterio;
	}

	/**
	 * Metodo que se utilizar para buscar todas las Materias
	 * @param uid Identificador Unico
	 * @return Lista de Materia
	 */
	public MateriaRespuesta buscarTodasMaterias(String uid) {

		EducareDAOFactory dao = new EducareDAOFactory();
		MateriaRespuesta respuesta = new MateriaRespuesta();

		try {
			LogHandler.info(uid, getClass(), "Entrada: buscarTodasMaterias " + uid);
			respuesta.setMaterias(dao.obtenerInstanciaDao().buscarTodasMaterias(uid));
			if (respuesta.getMaterias() == null) {
				respuesta.setMaterias(new ArrayList<Materia>());
			}
			respuesta.setHeader(new EncabezadoRespuesta(uid));
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar : " + ex.getMessage(), ex);
			respuesta.setHeader(new EncabezadoRespuesta(ex.getMessage(), false));
		}

		return respuesta;
	}

	/**
	 * Metodo que sirve para insertar Materia
	 * @param uid Identificador Unico
	 * @param materia Objeto de tipo Materia
	 * @return MateriaRespuesta
	 */
	public MateriaRespuesta insertarMateria(String uid, Materia materia) {

		EducareDAOFactory dao = new EducareDAOFactory();
		MateriaRespuesta respuesta = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: insertarMateria " + uid);
			respuesta = dao.obtenerInstanciaDao().insertarMateria(uid, materia);
			if (respuesta.getMaterias() == null) {
				respuesta.setMaterias(new ArrayList<Materia>());
			}
			respuesta.setHeader(new EncabezadoRespuesta(uid));
		}
		catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al insertarMateria : " + ex.getMessage(), ex);
			respuesta.setHeader(new EncabezadoRespuesta(ex.getMessage(), false));
		}
		return respuesta;
	}

	/**
	 * Metodo que sirve para actualizar Materia
	 * @param uid Identificador Unico
	 * @param materia Es el Id a buscar
	 * @return Objeto de tipo materia
	 */
	public MateriaRespuesta actualizarMateria(String uid, Materia materia) {

		EducareDAOFactory dao = new EducareDAOFactory();
		MateriaRespuesta respuesta = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: actualizarMateria " + uid);
			respuesta = dao.obtenerInstanciaDao().actualizarMateria(uid, materia);
			if (respuesta.getMaterias() == null) {
				respuesta.setMaterias(new ArrayList<Materia>());
			}
			respuesta.setHeader(new EncabezadoRespuesta(uid));
		}
		catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al actualizarMateria : " + ex.getMessage(), ex);
			respuesta.setHeader(new EncabezadoRespuesta(ex.getMessage(), false));
		}
		return respuesta;
	}

	/**
	 * Metodo que sirve para eliminar Materia
	 * @param uid Identificador Unico
	 * @param idMateria Es el Id a buscar
	 * @return Objeto de tipo materia
	 */
	public MateriaRespuesta eliminarMateria(String uid, String idMateria) {
		EducareDAOFactory dao = new EducareDAOFactory();
		MateriaRespuesta respuesta = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: eliminarMateria " + uid);
			respuesta = dao.obtenerInstanciaDao().eliminarMateria(uid, idMateria);
			if (respuesta.getMaterias() == null) {
				respuesta.setMaterias(new ArrayList<Materia>());
			}
			respuesta.setHeader(new EncabezadoRespuesta(uid));
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar : " + ex.getMessage(), ex);
			respuesta.setHeader(new EncabezadoRespuesta(ex.getMessage(), false));
		}

		return respuesta;

	}

	/**
	 * Metodo que se utiliza para buscar materia por un Id
	 * @param uid Identificador Unico
	 * @param idMateria Es el Id a buscar
	 * @return Objeto de tipo materia
	 */
	public Materia buscarMateriaPorId(String uid, String idMateria) {
		EducareDAOFactory dao = new EducareDAOFactory();
		Materia materia = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: buscarMateriaPorId " + uid);

			materia = dao.obtenerInstanciaDao().buscarMateriaPorId(uid, idMateria);
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar : " + ex.getMessage(), ex);
		}

		return materia;
	}

	/**
	 * Metodo que se utilizar para buscar todas las Materias Horario
	 * @param uid Identificador Unico
	 * @param idGrado Es el Id a buscar
	 * @return Lista de Materia
	 */
	public List<Materia> obtieneMateriasHorario(String uid, int idGrado) {

		EducareDAOFactory dao = new EducareDAOFactory();
		List<Materia> listaMateria = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: " + uid);

			listaMateria = dao.obtenerInstanciaDao().obtieneMateriasHorario(uid, idGrado);
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar : " + ex.getMessage(), ex);
		}

		return listaMateria;
	}

	/**
	 * Metodo que se utilizar para obtener las materias por columna
	 * @param uid Identificador Unico
	 * @param materia de tipo materia
	 * @return Lista de Materia
	 */
	public List<Materia> obtieneMateriasHorario(String uid, Materia materia) {

		EducareDAOFactory dao = new EducareDAOFactory();
		List<Materia> listaMateria = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: " + uid);

			listaMateria = dao.obtenerInstanciaDao().obtieneMateriasPorColumna(uid, materia);
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar : " + ex.getMessage(), ex);
		}

		return listaMateria;
	}

	/**
	 * Metodo que sirve para insertar Puesto
	 * @param uid Identificador Unico
	 * @param puesto Objeto de tipo Puesto
	 * @return PuestoRespuesta
	 */
	public PuestoRespuesta insertarPuesto(String uid, Puesto puesto) {

		EducareDAOFactory dao = new EducareDAOFactory();
		PuestoRespuesta respuesta = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: " + uid);

			respuesta = dao.obtenerInstanciaDao().insertarPuesto(uid, puesto);
		}
		catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al insertarPuesto : " + ex.getMessage(), ex);
		}
		return respuesta;
	}

	/**
	 * Metodo que sirve para eliminar Puesto
	 * @param uid Identificador Unico
	 * @param idPuesto Es el Id a buscar
	 * @return Objeto de tipo puesto
	 */
	public PuestoRespuesta eliminarPuesto(String uid, int idPuesto) {
		EducareDAOFactory dao = new EducareDAOFactory();
		PuestoRespuesta respuesta = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: eliminarPuesto " + uid);

			respuesta = dao.obtenerInstanciaDao().eliminarPuesto(uid, idPuesto);
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar : " + ex.getMessage(), ex);
		}

		return respuesta;
	}

	/**
	 * Metodo que sirve para actualizar Puesto
	 * @param uid Identificador Unico
	 * @param puesto Es el Id a buscar
	 * @return Objeto de tipo puesto
	 */
	public PuestoRespuesta actualizarPuesto(String uid, Puesto puesto) {
		EducareDAOFactory dao = new EducareDAOFactory();
		PuestoRespuesta respuesta = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: eliminarPuesto " + uid);

			respuesta = dao.obtenerInstanciaDao().actualizarPuesto(uid, puesto);
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar : " + ex.getMessage(), ex);
		}

		return respuesta;
	}

	/**
	 * Metodo que se utiliza para buscar Puesto por un Id
	 * @param uid Identificador Unico
	 * @param idPuesto Es el Id a buscar
	 * @return Objeto de tipo puesto
	 */
	public Puesto buscarPuestoPorId(String uid, int idPuesto) {
		EducareDAOFactory dao = new EducareDAOFactory();
		Puesto puesto = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: buscarPuestoPorId " + uid);

			puesto = dao.obtenerInstanciaDao().buscarPuestoPorId(uid, idPuesto);
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar : " + ex.getMessage(), ex);
		}

		return puesto;
	}

	/**
	 * Metodo que se utiliza para listaPuestoTodos
	 * @param uid Identificador Unico
	 * @return Lista de tipo grado
	 */
	public List<Puesto> listaPuestoTodos(String uid) {

		EducareDAOFactory dao = new EducareDAOFactory();
		List<Puesto> listaPuesto = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: " + uid);

			listaPuesto = dao.obtenerInstanciaDao().listaPuestoTodos(uid);
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar : " + ex.getMessage(), ex);
		}

		return listaPuesto;
	}

	/**
	 * Metodo que se utilizar para obtener el puesto por columna
	 * @param uid Identificador Unico
	 * @param puesto Objeto de tipo grado
	 * @return Lista de tipo puesto
	 */
	public List<Puesto> obtienePuestoPorColumna(String uid, Puesto puesto) {

		EducareDAOFactory dao = new EducareDAOFactory();
		List<Puesto> listaPuesto = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: " + uid);

			listaPuesto = dao.obtenerInstanciaDao().obtienePuestoPorColumna(uid, puesto);
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar : " + ex.getMessage(), ex);
		}

		return listaPuesto;
	}

	/**
	 * Metodo que sirve para insertar Empleado
	 * @param uid Identificador Unico
	 * @param empleado Objeto de tipo Empleado
	 * @return EmpleadoRespuesta
	 */
	public EmpleadoRespuesta insertarEmpleado(String uid, Empleado empleado) {

		EducareDAOFactory dao = new EducareDAOFactory();
		EmpleadoRespuesta respuesta = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: " + uid);

			respuesta = dao.obtenerInstanciaDao().insertarEmpleado(uid, empleado);
		}
		catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al insertarEmpleado : " + ex.getMessage(), ex);
		}
		return respuesta;
	}

	/**
	 * Metodo que se utilizar para buscar todos los Empleados
	 * @param uid Identificador Unico
	 * @return Lista de Empleado
	 */
	public List<Empleado> buscarTodosEmpleado(String uid) {

		EducareDAOFactory dao = new EducareDAOFactory();
		List<Empleado> listaEmpleado = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: " + uid);

			listaEmpleado = dao.obtenerInstanciaDao().buscarTodosEmpleado(uid);
		}
		catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al insertarEmpleado : " + ex.getMessage(), ex);
		}
		return listaEmpleado;
	}

	/**
	 * Metodo que se utilizar para buscar por Id un Empleado
	 * @param uid Identificador Unico
	 * @param idEmpleado Id del empleado a buscar
	 * @return Lista de Empleado
	 */
	public List<Empleado> buscarEmpleadoPorId(String uid, String idEmpleado) {

		EducareDAOFactory dao = new EducareDAOFactory();
		List<Empleado> listaEmpleado = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: " + uid);

			listaEmpleado = dao.obtenerInstanciaDao().buscarEmpleadoPorId(uid, idEmpleado);
		}
		catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al insertarEmpleado : " + ex.getMessage(), ex);
		}
		return listaEmpleado;
	}

	/**
	 * Metodo que se utiliza para buscar Menu por un Id
	 * @param uid Identificador Unico
	 * @param idPerfil Es el Id a buscar
	 * @return Objeto de tipo menu
	 */
	public List<Menu> buscarMenuPorId(String uid, int idPerfil) {
		EducareDAOFactory dao = new EducareDAOFactory();
		List<Menu> listaMenu = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: buscarMenuPorId " + uid);

			listaMenu = dao.obtenerInstanciaDao().buscarMenuPorId(uid, idPerfil);
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar buscarMenuPorId: " + ex.getMessage(), ex);
		}

		return listaMenu;
	}

	/**
	 * Metodo que se utiliza para eliminar un empleado
	 * @param uid Identificador Unico
	 * @param idEmpleado Es el Id a buscar
	 * @return Objeto de tipo empleado
	 */
	public EmpleadoRespuesta eliminarEmpleado(String uid, String idEmpleado) throws EducareException {

		EducareDAOFactory dao = new EducareDAOFactory();
		EmpleadoRespuesta respuesta = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: eliminarCriterio " + uid);

			respuesta = dao.obtenerInstanciaDao().eliminarEmpleado(uid, idEmpleado);
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar : " + ex.getMessage(), ex);
		}

		return respuesta;
	}

	/**
	 * Metodo que sirve para actualizar empleado
	 * @param uid Identificador Unico
	 * @param empleado Es de tipop empleado
	 * @return Objeto de tipo empleado
	 */
	public EmpleadoRespuesta actualizarEmpleado(String uid, Empleado empleado) {

		EducareDAOFactory dao = new EducareDAOFactory();
		EmpleadoRespuesta respuesta = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: " + uid);

			respuesta = dao.obtenerInstanciaDao().actualizarEmpleado(uid, empleado);
		}
		catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al actualizarEmpleado : " + ex.getMessage(), ex);
		}
		return respuesta;
	}

	/**
	 * Metodo que se utilizar para obtener los catalogos
	 * @param uid Identificador Unico
	 * @param tipoCatalogo Es el tipo de catalogo a buscar
	 * @return Lista de Catalogo
	 */
	public CatalogoRespuesta obtenerCatalogo(String uid, String tipoCatalogo) {

		EducareDAOFactory dao = new EducareDAOFactory();
		CatalogoRespuesta respuesta = new CatalogoRespuesta();

		try {
			LogHandler.info(uid, getClass(), "Entrada: " + uid);

			respuesta.setCatalogo(dao.obtenerInstanciaDao().obtenerCatalogo(uid, tipoCatalogo));
			if (respuesta.getCatalogo() == null) {
				respuesta.setCatalogo(new ArrayList<Catalogo>());
			}
			respuesta.setHeader(new EncabezadoRespuesta(uid));
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar : " + ex.getMessage(), ex);
			respuesta.setHeader(new EncabezadoRespuesta(ex.getMessage(), false));
		}

		return respuesta;
	}


	/**
	 * Metodo que se utilizar para obtner el menu
	 * @param uid Identificador Unico
	 * @param idPerfil Es el idPerfil a buscar
	 * @return Lista de Menu
	 */
	public MenuRespuesta obtenerMenu(String uid, int idPerfil) {

		EducareDAOFactory dao = new EducareDAOFactory();
		MenuRespuesta respuesta = new MenuRespuesta();

		try {
			LogHandler.info(uid, getClass(), "Entrada: " + uid);
			respuesta.setMenus(dao.obtenerInstanciaDao().obtenerMenu(uid, idPerfil));
			if (respuesta.getMenus() == null) {
				respuesta.setMenus(new ArrayList<Menu>());
			}
			respuesta.setHeader(new EncabezadoRespuesta(uid));
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar : " + ex.getMessage(), ex);
			respuesta.setHeader(new EncabezadoRespuesta(ex.getMessage(), false));
		}

		return respuesta;
	}

	/**
	 * Metodo que se utilizar para obtner el SubMenu
	 * @param uid Identificador Unico
	 * @param idPerfil Es el idPerfil a buscar
	 * @param idPadre Es el idPadre a buscar
	 * @return Lista de Menu
	 */
	public MenuRespuesta obtenerSubMenu(String uid, int idPerfil, int idPadre) {

		EducareDAOFactory dao = new EducareDAOFactory();
		MenuRespuesta respuesta = new MenuRespuesta();

		try {
			LogHandler.info(uid, getClass(), "Entrada: " + uid);
			respuesta.setMenus(dao.obtenerInstanciaDao().obtenerSubMenu(uid, idPerfil, idPadre));
			if (respuesta.getMenus() == null) {
				respuesta.setMenus(new ArrayList<Menu>());
			}
			respuesta.setHeader(new EncabezadoRespuesta(uid));
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar : " + ex.getMessage(), ex);
			respuesta.setHeader(new EncabezadoRespuesta(ex.getMessage(), false));
		}

		return respuesta;
	}

}
