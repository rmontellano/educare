/**
 *  Clase intermediaria para conectar nuestro webService con el dao
 */
package mx.com.educare.core;

import java.util.ArrayList;
import java.util.List;

import mx.com.educare.dao.factory.EducareDAOFactory;
import mx.com.educare.dto.Catalogo;
import mx.com.educare.dto.CatalogoRespuesta;
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
import mx.com.educare.log.LogHandler;
import mx.com.educare.util.excepciones.EducareException;

/**
 *
 * @author tonyocampoc@gmail.com
 *
 */
public class EducareCatalogosNegocio {


	/**
	 * Metodo que se utilizar para buscar todos los grados
	 * @param uid Identificador Unico
	 * @return Lista de Grado
	 */
	public GradoRespuesta buscarTodosGrado(String uid) {

		EducareDAOFactory dao = new EducareDAOFactory();
		GradoRespuesta respuesta = new GradoRespuesta();

		try {
			LogHandler.info(uid, getClass(), "Entrada: " + uid);
			respuesta.setGrados(dao.obtenerInstanciaDao().buscarTodosGrado(uid));
			if (respuesta.getGrados() == null) {
				respuesta.setGrados(new ArrayList<Grado>());
			}
			respuesta.setHeader(new EncabezadoRespuesta(uid));
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar : " + ex.getMessage(), ex);
			respuesta.setHeader(new EncabezadoRespuesta(ex.getMessage(), false));
		}

		return respuesta;
	}

	/**
	 * Metodo que sirve para insertar grado
	 * @param uid Identificador Unico
	 * @param grado Objeto de tipo grado
	 * @return GradoRespuesta
	 */
	public GradoRespuesta insertarGrado(String uid, Grado grado) {

		EducareDAOFactory dao = new EducareDAOFactory();
		GradoRespuesta respuesta = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: " + uid);

			respuesta = dao.obtenerInstanciaDao().insertarGrado(uid, grado);
			if (respuesta.getGrados() == null) {
				respuesta.setGrados(new ArrayList<Grado>());
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
	 * @param idGrado Es el Id a buscar
	 * @return Objeto de tipo grado
	 */
	public Grado buscarGradoPorId(String uid, int idGrado) throws EducareException {
		EducareDAOFactory dao = new EducareDAOFactory();
		Grado grado = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: buscarGradoPorId " + uid);

			grado = dao.obtenerInstanciaDao().buscarGradoPorId(uid, idGrado);
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar : " + ex.getMessage(), ex);
		}

		return grado;
	}

	/**
	 * Metodo que sirve para actualizar grado
	 * @param uid Identificador Unico
	 * @param grado Es el Id a buscar
	 * @return Objeto de tipo grado
	 */
	public GradoRespuesta actualizarGrado(String uid, Grado grado) {

		EducareDAOFactory dao = new EducareDAOFactory();
		GradoRespuesta respuesta = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada actualizarGrado: " + uid);
			 respuesta = dao.obtenerInstanciaDao().actualizarGrado(uid, grado);
			if (respuesta.getGrados() == null) {
				respuesta.setGrados(new ArrayList<Grado>());
			}
			respuesta.setHeader(new EncabezadoRespuesta(uid));
		}
		catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al actualizarGrado : " + ex.getMessage(), ex);
			respuesta.setHeader(new EncabezadoRespuesta(ex.getMessage(), false));
		}
		return respuesta;
	}

	/**
	 * Metodo que se utiliza para eliminar un grado
	 * @param uid Identificador Unico
	 * @param idGrado Es el Id a buscar
	 * @return Objeto de tipo grado
	 */
	public GradoRespuesta eliminarGrado(String uid, int idGrado) {

		EducareDAOFactory dao = new EducareDAOFactory();
		GradoRespuesta respuesta = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: eliminarGrado " + uid);

			respuesta = dao.obtenerInstanciaDao().eliminarGrado(uid, idGrado);
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar : " + ex.getMessage(), ex);
			respuesta.setHeader(new EncabezadoRespuesta(ex.getMessage(), false));
		}

		return respuesta;
	}

	/**
	 * Metodo que se utiliza para listaGradosSeccion
	 * @param uid Identificador Unico
	 * @return Lista de tipo grado
	 */
	public List<Grado> listaGradoSeccion(String uid) throws EducareException {

		EducareDAOFactory dao = new EducareDAOFactory();
		List<Grado> listaGrados = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: " + uid);

			listaGrados = dao.obtenerInstanciaDao().listaGradoSeccion(uid);
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar : " + ex.getMessage(), ex);
		}

		return listaGrados;
	}

	/**
	 * Metodo que se utilizar para obtener todos los grados
	 * @param uid Identificador Unico
	 * @return Lista de tipo grado
	 */
	public List<Grado> obtieneTodosGrados(String uid) throws EducareException {

		EducareDAOFactory dao = new EducareDAOFactory();
		List<Grado> listaGrados = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: " + uid);

			listaGrados = dao.obtenerInstanciaDao().obtieneTodosGrados(uid);
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar : " + ex.getMessage(), ex);
			//respuesta.setHeader(new EncabezadoRespuesta(ex.getMessage(), false));
		}

		return listaGrados;
	}

	/**
	 * Metodo que se utilizar para obtener todos los grados por columna
	 * @param uid Identificador Unico
	 * @param grado Objeto de tipo grado
	 * @return Lista de tipo grado
	 */
	public List<Grado> obtieneTodosGradosPorColumna(String uid,  Grado grado) throws EducareException {

		EducareDAOFactory dao = new EducareDAOFactory();
		List<Grado> listaGrados = null;

		try {
			LogHandler.info(uid, getClass(), "Entrada: " + uid);

			listaGrados = dao.obtenerInstanciaDao().obtieneTodosGradosPorColumna(uid, grado);
		} catch (Exception ex) {
			LogHandler.error(uid, getClass(), "Error al consultar : " + ex.getMessage(), ex);
		}

		return listaGrados;
	}

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