/**
 *
 */
package mx.com.educare.dao.impl;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import mx.com.educare.dao.conexion.FabricaDeConexiones;
import mx.com.educare.dao.interfacedao.EducareDAO;
import mx.com.educare.dto.Catalogo;
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
import mx.com.educare.dto.Puesto;
import mx.com.educare.dto.PuestoRespuesta;
import mx.com.educare.dto.auth.Usuario;
import mx.com.educare.dto.util.EncabezadoRespuesta;
import mx.com.educare.dto.util.RespuestaGrado;
import mx.com.educare.log.LogHandler;
import mx.com.educare.util.excepciones.EducareException;

import org.apache.ibatis.session.SqlSession;

/**
 * Clase donde se registraran las altas, bajas, cambios y consultas
 * @author tonyocampoc@gmail.com
 *
 */
public class EducareDAOImpl implements EducareDAO {

	/**
	 * Conector
	 */
	public EducareDAOImpl() {

	}
	
	/***************************************INICIAN OPERACIONES DEL CATALOGO DE GRADO *******************************************/
	/**
	 * Metodo que sirve para insertar grado
	 * @param uid Identificador Unico
	 * @param grado Objeto de tipo grado
	 * @return GradoRespuesta
	 */
	public RespuestaGrado insertarGrado(String uid, Grado grado) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a insertar grado ");
		SqlSession sesionTx = null;
		RespuestaGrado respuesta = new RespuestaGrado();
		respuesta.setHeader(new EncabezadoRespuesta());
		respuesta.getHeader().setUid(uid);
		respuesta.getHeader().setStatus(true);
		int insertar;
		try {

			final java.util.HashMap<String, Object> parametrosInsert = new HashMap<String, Object>();
			parametrosInsert.put( "idSeccion", grado.getIdSeccion());
			parametrosInsert.put( "numGrado", grado.getNumGrado());
			parametrosInsert.put( "ultimoGrado", grado.getUltimoGrado());
			

			sesionTx = FabricaDeConexiones.obtenerSesionTx();
			insertar = sesionTx.insert("insertarGrado", parametrosInsert);

			if ( insertar == 0) {
				throw new Exception("No fue posible insertar el grado");
			}

			sesionTx.commit();
			respuesta.getHeader().setMensaje("Se inserto correctamente");
		} catch (Exception e) {
			FabricaDeConexiones.rollBack(sesionTx);
			LogHandler.info(uid, this.getClass(), e.getMessage());
			respuesta.getHeader().setStatus(false);
			respuesta.getHeader().setMensaje(e.getMessage());
	    } finally {
	    	FabricaDeConexiones.close(sesionTx);
	    }
		return respuesta;
	}
	
	/**
	 * Metodo que se utiliza para eliminar un grado
	 * @param uid Identificador Unico
	 * @param idGrado Es el Id a buscar
	 * @return Objeto de tipo grado
	 */
	public RespuestaGrado eliminarGrado(String uid, int idGrado) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a eliminar grado ");
		SqlSession sesionTx = null;
		RespuestaGrado respuesta = new RespuestaGrado();
		respuesta.setHeader(new EncabezadoRespuesta());
		respuesta.getHeader().setUid(uid);
		respuesta.getHeader().setStatus(true);
		int actualizar;

		try {

			sesionTx = FabricaDeConexiones.obtenerSesionTx();
			actualizar = sesionTx.update("MapperEducareCatalogos.EliminarGrado", idGrado);

			if ( actualizar == 0) {
				throw new Exception("No fue posible eliminar el grado");
			}

			sesionTx.commit();
			respuesta.getHeader().setMensaje("Se actualizo correctamente");
		} catch (Exception ex) {
			LogHandler.info(uid, this.getClass(), ex.getMessage());
			ex.printStackTrace();
	    } finally {
	    	FabricaDeConexiones.close(sesionTx);
	    }
		return respuesta;
	}

	/**
	 * Metodo que sirve para actualizar grado
	 * @param uid Identificador Unico
	 * @param grado Es el Id a buscar
	 * @return Objeto de tipo grado
	 */
	public RespuestaGrado actualizarGrado(String uid, Grado grado) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a actualizar grado:  " + grado);
		SqlSession sesionTx = null;
		RespuestaGrado respuesta = new RespuestaGrado();
		respuesta.setHeader(new EncabezadoRespuesta());
		respuesta.getHeader().setUid(uid);
		respuesta.getHeader().setStatus(true);
		int actualizar;
		try {
			
			if (grado == null || grado.getIdGrado() != null) {
				throw new Exception("Es necesario el idGrado para actualizarlo");
			}

			final java.util.HashMap<String, Object> parametrosUpdate = new HashMap<String, Object>();
			parametrosUpdate.put( "idGrado", grado.getIdGrado());
			parametrosUpdate.put( "idSeccion", grado.getIdSeccion());
			parametrosUpdate.put( "numGrado", grado.getNumGrado());
			parametrosUpdate.put( "ultimoGrado", grado.getUltimoGrado());

			sesionTx = FabricaDeConexiones.obtenerSesionTx();
			actualizar = sesionTx.update("MapperEducareCatalogos.actualizarGrado", parametrosUpdate);

			if ( actualizar == 0) {
				throw new Exception("No fue posible actualizar el grado " + grado);
			}

			sesionTx.commit();
			respuesta.getHeader().setMensaje("Se actualizo correctamente");
		} catch (Exception e) {
			FabricaDeConexiones.rollBack(sesionTx);
			LogHandler.info(uid, this.getClass(), e.getMessage());
			respuesta.getHeader().setStatus(false);
			respuesta.getHeader().setMensaje(e.getMessage());
	    } finally {
	    	FabricaDeConexiones.close(sesionTx);
	    }
		return respuesta;
	}
	
	/**
	 * Metodo que se utilizar para obtener todos los grados por columna
	 * @param uid Identificador Unico
	 * @param grado Objeto de tipo grado
	 * @return Lista de tipo grado
	 */
	public List<Grado> buscarGrado(String uid, Grado grado) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a buscarGrado ");
		SqlSession sesionNTx = null;
		List<Grado> listaGrados = null;

		try {
			if (grado != null) {
				sesionNTx = FabricaDeConexiones.obtenerSesionNTx();
	
				final java.util.HashMap<String, Object> parametros = new HashMap<String, Object>();
				parametros.put("descripcion", grado.getDescripcion());
				parametros.put("numGrado", grado.getNumGrado());
				parametros.put("ultimoGrado", grado.getUltimoGrado());
				LogHandler.info(uid, this.getClass(), "parametros enviados: " + parametros);
				
				listaGrados = sesionNTx.selectList("MapperEducareCatalogos.obtenerGrado", parametros);
				LogHandler.info(uid, this.getClass(), "listaGrados: " + listaGrados);
	
				if (listaGrados == null || listaGrados.isEmpty()) {
					throw new Exception("No hay registros a mostrar");
				}
			} else {
				throw new Exception("La petición viene nula");
			}		

		} catch (Exception ex) {
			LogHandler.error(uid, this.getClass(), ex.getMessage(), ex);
	    } finally {
	    	FabricaDeConexiones.close(sesionNTx);
	    }

		return listaGrados;
	}
	
	/**
	 * Metodo de realizar la busqueda de secciones
	 * @param uid Identificador Unico
	 * @param grado Objeto de tipo grado
	 * @return Lista de tipo grado
	 */
	public List<Grado> llenarComboSeccion(String uid) throws Exception {
		LogHandler.info(uid, this.getClass(), "Entro a llenarComboSeccion ");
		SqlSession sesionNTx = null;
		List<Grado> listaSecciones = null;
		try {		
				sesionNTx = FabricaDeConexiones.obtenerSesionNTx();			
				listaSecciones = sesionNTx.selectList("MapperEducareCatalogos.llenarComboSeccion");
				LogHandler.info(uid, this.getClass(), "listaSecciones: " + listaSecciones);
				if (listaSecciones.isEmpty()) {
					throw new Exception("No hay secciones a mostrar");
				}		
		} finally {
	    	FabricaDeConexiones.close(sesionNTx);
	    }
		return listaSecciones;
	}
	
	/**
	 * Metodo de realizar la busqueda de grados
	 * @param uid Identificador Unico
	 * @param grado Objeto de tipo grado
	 * @return Lista de tipo grado
	 */
	public List<Grado> llenarComboGrado(String uid) throws Exception {
		LogHandler.info(uid, this.getClass(), "Entro a llenarComboGrado ");
		SqlSession sesionNTx = null;
		List<Grado> listaGrados = null;
		try {	
				sesionNTx = FabricaDeConexiones.obtenerSesionNTx();	
				listaGrados = sesionNTx.selectList("MapperEducareCatalogos.llenarComboGrado");
				LogHandler.info(uid, this.getClass(), "listaGrados: " + listaGrados);
	
				if (listaGrados.isEmpty()) {
					throw new Exception("No hay grados a mostrar");
				}		
		}  finally {
	    	FabricaDeConexiones.close(sesionNTx);
	    }
		return listaGrados;
	}
	
	/**
	 * Metodo de realizar la busqueda de la ultimo grado
	 * @param uid Identificador Unico
	 * @param grado Objeto de tipo grado
	 * @return Lista de tipo grado
	 */
	public List<Grado> llenarComboUltimoGrado(String uid) throws Exception {
		LogHandler.info(uid, this.getClass(), "Entro a llenarComboUltimoGrado ");
		SqlSession sesionNTx = null;
		List<Grado> listaUltimoGrado = null;
		try {	
				sesionNTx = FabricaDeConexiones.obtenerSesionNTx();	
				listaUltimoGrado = sesionNTx.selectList("MapperEducareCatalogos.llenarComboUltimoGrado");
				LogHandler.info(uid, this.getClass(), "listaUltimoGrado: " + listaUltimoGrado);
	
				if (listaUltimoGrado.isEmpty()) {
					throw new Exception("No hay ultimos grados a mostrar");
				}		
		} finally {
	    	FabricaDeConexiones.close(sesionNTx);
	    }
		return listaUltimoGrado;
	}

/***************************************TERMINAN OPERACIONES DEL CATALOGO DE GRADO *******************************************/
	
	

	

	/**
	 * Metodo que se utilizar para buscar todos los Grupos
	 * @param uid Identificador Unico
	 * @return Lista de Grupo
	 */
	public List<Grupo> buscarTodosGrupo(String uid) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a buscarTodosGrado ");
		SqlSession sesionNTx = null;
		List<Grupo> listaGrupo = null;

		try {
			sesionNTx = FabricaDeConexiones.obtenerSesionNTx();
			listaGrupo = sesionNTx.selectList("MapperEducareCatalogos.obtieneTodosGrupos");

			if (listaGrupo.isEmpty()) {
				throw new Exception("No registro en la tabla de Grupo");
			}

		} catch (Exception ex) {
			LogHandler.info(uid, this.getClass(), ex.getMessage());
			ex.printStackTrace();
	    } finally {
	    	FabricaDeConexiones.close(sesionNTx);
	    }

		return listaGrupo;
	}

	/**
	 * Metodo que sirve para insertar grupo
	 * @param uid Identificador Unico
	 * @param grupo Objeto de tipo grupo
	 * @return GradoRespuesta
	 */
	public GrupoRespuesta insertarGrupo(String uid, Grupo grupo) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a insertar grupo ");
		SqlSession sesionTx = null;
		GrupoRespuesta respuesta = new GrupoRespuesta();
		respuesta.setHeader(new EncabezadoRespuesta());
		respuesta.getHeader().setUid(uid);
		respuesta.getHeader().setStatus(true);
		int insertar;
		try {

			final java.util.HashMap<String, Object> parametrosInsert = new HashMap<String, Object>();
			parametrosInsert.put( "nomGrupo", grupo.getNomGrupo());
			parametrosInsert.put( "descripcion", grupo.getDescripcion());
			parametrosInsert.put( "capacidad", grupo.getCapacidad());
			parametrosInsert.put( "idGrado",  grupo.getIdgrado());
			parametrosInsert.put( "tipoGrupo", grupo.getTipoGrupo());
			parametrosInsert.put( "status",  grupo.getStatus());

			sesionTx = FabricaDeConexiones.obtenerSesionTx();
			insertar = sesionTx.insert("MapperEducareCatalogos.insertarGrupo", parametrosInsert);

			if ( insertar == 0) {
				throw new Exception("No fue posible insertar el grupo");
			}

			sesionTx.commit();
			respuesta.getHeader().setMensaje("Se inserto correctamente el grupo");
		} catch (Exception e) {
			FabricaDeConexiones.rollBack(sesionTx);
			LogHandler.info(uid, this.getClass(), e.getMessage());
			respuesta.getHeader().setStatus(false);
			respuesta.getHeader().setMensaje(e.getMessage());
	    } finally {
	    	FabricaDeConexiones.close(sesionTx);
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
		LogHandler.info(uid, this.getClass(), "buscarGradoPorId ");
		SqlSession sesionNTx = null;
		Grupo grupo = null;

		try {

			sesionNTx = FabricaDeConexiones.obtenerSesionNTx();
			grupo = sesionNTx.selectOne("MapperEducareCatalogos.grupoPorId", idGrupo);

			if (grupo == null) {
				throw new Exception("No se encontro el registro de grupo");
			}

		} catch (Exception ex) {
			LogHandler.info(uid, this.getClass(), ex.getMessage());
			ex.printStackTrace();
	    } finally {
	    	FabricaDeConexiones.close(sesionNTx);
	    }
		return grupo;
	}

	/**
	 * Metodo que sirve para actualizar grupo
	 * @param uid Identificador Unico
	 * @param grupo Es el Id a buscar
	 * @return Objeto de tipo grupo
	 */
	public GrupoRespuesta actualizarGrupo(String uid, Grupo grupo)throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a actualizar grado ");
		SqlSession sesionTx = null;
		GrupoRespuesta respuesta = new GrupoRespuesta();
		respuesta.setHeader(new EncabezadoRespuesta());
		respuesta.getHeader().setUid(uid);
		respuesta.getHeader().setStatus(true);
		int actualizar;
		try {

			final java.util.HashMap<String, Object> parametrosUpdate = new HashMap<String, Object>();
			parametrosUpdate.put( "idGrupo", grupo.getIdGrupo());
			parametrosUpdate.put( "idGrado", grupo.getIdgrado());
			parametrosUpdate.put( "nomGrupo", grupo.getNomGrupo());
			parametrosUpdate.put( "descripcion", grupo.getDescripcion());
			parametrosUpdate.put( "tipoGrupo", grupo.getTipoGrupo());
			parametrosUpdate.put( "capacidad", grupo.getCapacidad());
			parametrosUpdate.put( "status", grupo.getStatus());

			sesionTx = FabricaDeConexiones.obtenerSesionTx();
			actualizar = sesionTx.update("MapperEducareCatalogos.ActualizarGrupo", parametrosUpdate);

			if ( actualizar == 0) {
				throw new Exception("No fue posible insertar el grado");
			}

			sesionTx.commit();
			respuesta.getHeader().setMensaje("Se actualizo correctamente");
		} catch (Exception e) {
			FabricaDeConexiones.rollBack(sesionTx);
			LogHandler.info(uid, this.getClass(), e.getMessage());
			respuesta.getHeader().setStatus(false);
			respuesta.getHeader().setMensaje(e.getMessage());
	    } finally {
	    	FabricaDeConexiones.close(sesionTx);
	    }
		return respuesta;
	}

	/**
	 * Metodo que se utiliza para eliminar un grupo
	 * @param uid Identificador Unico
	 * @param idGrupo Es el Id a buscar
	 * @return Objeto de tipo grupo
	 */
	public GrupoRespuesta eliminarGrupo(String uid, int idGrupo) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a eliminar grupo ");
		SqlSession sesionTx = null;
		GrupoRespuesta respuesta = new GrupoRespuesta();
		respuesta.setHeader(new EncabezadoRespuesta());
		respuesta.getHeader().setUid(uid);
		respuesta.getHeader().setStatus(true);
		int eliminar;

		try {

			sesionTx = FabricaDeConexiones.obtenerSesionTx();
			eliminar = sesionTx.update("MapperEducareCatalogos.EliminarGrupo", idGrupo);

			if ( eliminar == 0) {
				throw new Exception("No fue posible eliminar el grupo");
			}

			sesionTx.commit();
			respuesta.getHeader().setMensaje("Se elimino correctamente el grupo");
		} catch (Exception ex) {
			LogHandler.info(uid, this.getClass(), ex.getMessage());
			ex.printStackTrace();
	    } finally {
	    	FabricaDeConexiones.close(sesionTx);
	    }
		return respuesta;
	}

	/**
	 * Metodo que se utiliza para listaGrupoSeccion
	 * @param uid Identificador Unico
	 * @return Lista de tipo grupo
	 */
	public List<Grupo> listaGrupoSeccion(String uid) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a listaGradoSeccion ");
		SqlSession sesionNTx = null;
		List<Grupo> listaGrupo = null;

		try {
			sesionNTx = FabricaDeConexiones.obtenerSesionNTx();
			listaGrupo = sesionNTx.selectList("MapperEducareCatalogos.ListaGrupoSeccion");

			if (listaGrupo.isEmpty()) {
				throw new Exception("No registro en la tabla de Grupo con seccion");
			}

		} catch (Exception ex) {
			LogHandler.info(uid, this.getClass(), ex.getMessage());
			ex.printStackTrace();
	    } finally {
	    	FabricaDeConexiones.close(sesionNTx);
	    }

		return listaGrupo;
	}

	/**
	 * Metodo que se utilizar para obtener todos los grupos
	 * @param uid Identificador Unico
	 * @return Lista de tipo grupo
	 */
	public List<Grupo> obtieneTodosGrupos(String uid) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a ObtieneTodosGrados ");
		SqlSession sesionNTx = null;
		List<Grupo> listaGrupo = null;

		try {
			sesionNTx = FabricaDeConexiones.obtenerSesionNTx();
			listaGrupo = sesionNTx.selectList("MapperEducareCatalogos.ObtieneTodosGrupos");

			if (listaGrupo.isEmpty()) {
				throw new Exception("No encontro registro de todos los grupos");
			}

		} catch (Exception ex) {
			LogHandler.info(uid, this.getClass(), ex.getMessage());
			ex.printStackTrace();
	    } finally {
	    	FabricaDeConexiones.close(sesionNTx);
	    }

		return listaGrupo;
	}

	/**
	 * Metodo que se utilizar para obtener todos los grados por columna
	 * @param uid Identificador Unico
	 * @param grupo Objeto de tipo grado
	 * @return Lista de tipo grado
	 */
	public List<Grupo> obtieneTodoGrupoPorColumna(String uid, Grupo grupo) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a obtieneGrupoTodoGradosPorColumna ");
		SqlSession sesionNTx = null;
		List<Grupo> listaGrupo = null;

		try {
			sesionNTx = FabricaDeConexiones.obtenerSesionNTx();

			final java.util.HashMap<String, Object> parametros = new HashMap<String, Object>();

			if (grupo.getIdGrupo() != 0) {
				parametros.put( "idGrupo", grupo.getIdGrupo());
			} else {
				parametros.put( "idGrupo", 0);
			}
			if (grupo.getNomGrupo() != null) {
				parametros.put( "nomGrupo", grupo.getNomGrupo());
			} else {
				parametros.put( "nomGrupo", "");
			}
			if (grupo.getDescripcion() != null) {
				parametros.put( "descripcion", grupo.getDescripcion());
			} else {
				parametros.put( "descripcion", "");
			}
			if (grupo.getCapacidad() != 0) {
				parametros.put( "capacidad", grupo.getCapacidad());
			} else {
				parametros.put( "capacidad", 0);
			}
			if (grupo.getIdgrado() != 0) {
				parametros.put( "idGrado", grupo.getIdgrado());
			} else {
				parametros.put( "idGrado", 0);
			}
			if (grupo.getTipoGrupo() != 0) {
				parametros.put( "tipoGrupo", grupo.getTipoGrupo());
			} else {
				parametros.put( "tipoGrupo", 0);
			}

			listaGrupo = sesionNTx.selectList("MapperEducareCatalogos.ObtieneGrupoTodoPorColumna", parametros);

			if (listaGrupo.isEmpty()) {
				throw new Exception("No encontro registro de: obtieneGrupoTodoGradosPorColumna");
			}

		} catch (Exception ex) {
			LogHandler.info(uid, this.getClass(), ex.getMessage());
			ex.printStackTrace();
	    } finally {
	    	FabricaDeConexiones.close(sesionNTx);
	    }

		return listaGrupo;
	}

	/**
	 * Metodo que se utilizar para obtener todos los criterio
	 * @param uid Identificador Unico
	 * @return Lista de tipo Criterio
	 */
	public List<Criterio> obtieneTodosCriterio(String uid) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a obtieneTodosCriterio ");
		SqlSession sesionNTx = null;
		List<Criterio> listaCriterio = null;

		try {
			sesionNTx = FabricaDeConexiones.obtenerSesionNTx();
			listaCriterio = sesionNTx.selectList("MapperEducareCatalogos.obtieneTodosCriterios");
			if (listaCriterio.isEmpty()) {
				throw new Exception("No encontro registro de todos los criterios");
			}

		} catch (Exception ex) {
			LogHandler.info(uid, this.getClass(), ex.getMessage());
			ex.printStackTrace();
	    } finally {
	    	FabricaDeConexiones.close(sesionNTx);
	    }

		return listaCriterio;
	}

	/**
	 * Metodo que sirve para insertar criterio
	 * @param uid Identificador Unico
	 * @param criterio Objeto de tipo criterio
	 * @return CriterioRespuesta
	 */
	public CriterioRespuesta insertarCriterio(String uid, Criterio criterio) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a insertar grado ");
		SqlSession sesionTx = null;
		CriterioRespuesta respuesta = new CriterioRespuesta();
		respuesta.setHeader(new EncabezadoRespuesta());
		respuesta.getHeader().setUid(uid);
		respuesta.getHeader().setStatus(true);
		int insertar;
		try {

			final java.util.HashMap<String, Object> parametrosInsert = new HashMap<String, Object>();
			parametrosInsert.put( "tipoCredito", criterio.getTipoCriterio());
			parametrosInsert.put( "descripcion", criterio.getDescripcion());
			parametrosInsert.put( "calculoCriterio", criterio.getCalculoCriterio());
			parametrosInsert.put( "status", criterio.getStatus());

			sesionTx = FabricaDeConexiones.obtenerSesionTx();
			insertar = sesionTx.insert("MapperEducareCatalogos.insertarCriterio", parametrosInsert);

			if ( insertar == 0) {
				throw new Exception("No fue posible insertar el criterio");
			}

			sesionTx.commit();
			respuesta.getHeader().setMensaje("Se inserto correctamente el criterio");
		} catch (Exception e) {
			FabricaDeConexiones.rollBack(sesionTx);
			LogHandler.info(uid, this.getClass(), e.getMessage());
			respuesta.getHeader().setStatus(false);
			respuesta.getHeader().setMensaje(e.getMessage());
	    } finally {
	    	FabricaDeConexiones.close(sesionTx);
	    }
		return respuesta;
	}

	/**
	 * Metodo que sirve para actualizar Criterio
	 * @param uid Identificador Unico
	 * @param criterio Es el Id a buscar
	 * @return Objeto de tipo criterio
	 */
	public CriterioRespuesta actualizarCriterio(String uid, Criterio criterio) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a actualizar grado ");
		SqlSession sesionTx = null;
		CriterioRespuesta respuesta = new CriterioRespuesta();
		respuesta.setHeader(new EncabezadoRespuesta());
		respuesta.getHeader().setUid(uid);
		respuesta.getHeader().setStatus(true);
		int actualizar;
		try {

			final java.util.HashMap<String, Object> parametrosUpdate = new HashMap<String, Object>();
			parametrosUpdate.put( "idCriterio", criterio.getIdCriterio());
			parametrosUpdate.put( "tipoCredito", criterio.getTipoCriterio());
			parametrosUpdate.put( "descripcion", criterio.getDescripcion());
			parametrosUpdate.put( "calculoCriterio", criterio.getCalculoCriterio());

			sesionTx = FabricaDeConexiones.obtenerSesionTx();
			actualizar = sesionTx.update("MapperEducareCatalogos.ActualizarCriterio", parametrosUpdate);

			if ( actualizar == 0) {
				throw new Exception("No fue posible actualizar el criterio");
			}

			sesionTx.commit();
			respuesta.getHeader().setMensaje("Se actualizo correctamente criterio");
		} catch (Exception e) {
			FabricaDeConexiones.rollBack(sesionTx);
			LogHandler.info(uid, this.getClass(), e.getMessage());
			respuesta.getHeader().setStatus(false);
			respuesta.getHeader().setMensaje(e.getMessage());
	    } finally {
	    	FabricaDeConexiones.close(sesionTx);
	    }
		return respuesta;
	}

	/**
	 * Metodo que se utiliza para eliminar un Criterio
	 * @param uid Identificador Unico
	 * @param idCriterio Es el Id a buscar
	 * @return Objeto de tipo Criterio
	 */
	public CriterioRespuesta eliminarCriterio(String uid, int idCriterio) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a eliminar grado ");
		SqlSession sesionTx = null;
		CriterioRespuesta respuesta = new CriterioRespuesta();
		respuesta.setHeader(new EncabezadoRespuesta());
		respuesta.getHeader().setUid(uid);
		respuesta.getHeader().setStatus(true);
		int actualizar;

		try {

			sesionTx = FabricaDeConexiones.obtenerSesionTx();
			actualizar = sesionTx.update("MapperEducareCatalogos.EliminarCriterio", idCriterio);

			if ( actualizar == 0) {
				throw new Exception("No fue posible eliminar el criterio");
			}

			sesionTx.commit();
			respuesta.getHeader().setMensaje("Se elimino correctamente");
		} catch (Exception ex) {
			LogHandler.info(uid, this.getClass(), ex.getMessage());
			ex.printStackTrace();
	    } finally {
	    	FabricaDeConexiones.close(sesionTx);
	    }
		return respuesta;
	}

	/**
	 * Metodo que se utiliza para buscar por un Id
	 * @param uid Identificador Unico
	 * @param idCriterio Es el Id a buscar
	 * @return Objeto de tipo Criterio
	 */
	public Criterio buscarCriterioPorId(String uid, int idCriterio) throws EducareException {
		LogHandler.info(uid, this.getClass(), "buscarGradoPorId ");
		SqlSession sesionNTx = null;
		Criterio criterio = null;

		try {

			sesionNTx = FabricaDeConexiones.obtenerSesionNTx();
			criterio = sesionNTx.selectOne("MapperEducareCatalogos.CriterioPorId", idCriterio);

			if (criterio == null) {
				throw new Exception("No se encontro el registro de criterio por Id");
			}

		} catch (Exception ex) {
			LogHandler.info(uid, this.getClass(), ex.getMessage());
			ex.printStackTrace();
	    } finally {
	    	FabricaDeConexiones.close(sesionNTx);
	    }
		return criterio;
	}

	/**
	 * Metodo que se utilizar para buscar todas las Materias
	 * @param uid Identificador Unico
	 * @return Lista de Materia
	 */
	public List<Materia> buscarTodasMaterias(String uid) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a buscarTodosGrado ");
		SqlSession sesionNTx = null;
		List<Materia> listaMateria = null;

		try {
			sesionNTx = FabricaDeConexiones.obtenerSesionNTx();
			listaMateria = sesionNTx.selectList("MapperEducareCatalogos.obtieneTodasMaterias");

			if (listaMateria.isEmpty()) {
				throw new Exception("No registro en la tabla de Materia");
			}

		} catch (Exception ex) {
			LogHandler.info(uid, this.getClass(), ex.getMessage());
			ex.printStackTrace();
	    } finally {
	    	FabricaDeConexiones.close(sesionNTx);
	    }

		return listaMateria;
	}

	/**
	 * Metodo que sirve para insertar Materia
	 * @param uid Identificador Unico
	 * @param materia Objeto de tipo Materia
	 * @return MateriaRespuesta
	 */
	public MateriaRespuesta insertarMateria(String uid, Materia materia) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a insertar Materia ");
		SqlSession sesionTx = null;
		MateriaRespuesta respuesta = new MateriaRespuesta();
		respuesta.setHeader(new EncabezadoRespuesta());
		respuesta.getHeader().setUid(uid);
		respuesta.getHeader().setStatus(true);
		int insertar;
		try {

			final java.util.HashMap<String, Object> parametrosInsert = new HashMap<String, Object>();
			parametrosInsert.put( "idMateria", materia.getIdMateria() );
			parametrosInsert.put( "nombre",  materia.getNombre());
			parametrosInsert.put( "creditos",  materia.getCreditos());
			parametrosInsert.put( "claveSep", materia.getClaveSep() );
			parametrosInsert.put( "tipomat",  materia.getTipoMat());
			parametrosInsert.put( "idGrado", materia.getIdGrado() );
			parametrosInsert.put( "tipoGrupo", materia.getTipoGrupo());
			parametrosInsert.put( "tipoCaptura", materia.getTipoCaptura());
			parametrosInsert.put( "status", materia.getStatus());

			sesionTx = FabricaDeConexiones.obtenerSesionTx();
			insertar = sesionTx.insert("MapperEducareCatalogos.insertarMateria", parametrosInsert);

			if ( insertar == 0) {
				throw new Exception("No fue posible insertar la materia");
			}

			sesionTx.commit();
			respuesta.getHeader().setMensaje("Se inserto correctamente materia");
		} catch (Exception e) {
			FabricaDeConexiones.rollBack(sesionTx);
			LogHandler.info(uid, this.getClass(), e.getMessage());
			respuesta.getHeader().setStatus(false);
			respuesta.getHeader().setMensaje(e.getMessage());
	    } finally {
	    	FabricaDeConexiones.close(sesionTx);
	    }
		return respuesta;
	}

	/**
	 * Metodo que sirve para actualizar Materia
	 * @param uid Identificador Unico
	 * @param materia Es el Id a buscar
	 * @return Objeto de tipo materia
	 */
	public MateriaRespuesta actualizarMateria(String uid, Materia materia) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a actualizar grado ");
		SqlSession sesionTx = null;
		MateriaRespuesta respuesta = new MateriaRespuesta();
		respuesta.setHeader(new EncabezadoRespuesta());
		respuesta.getHeader().setUid(uid);
		respuesta.getHeader().setStatus(true);
		int actualizar;
		try {

			final java.util.HashMap<String, Object> parametrosUpdate = new HashMap<String, Object>();
			parametrosUpdate.put( "idMateria", materia.getIdMateria() );
			parametrosUpdate.put( "nombre",  materia.getNombre());
			parametrosUpdate.put( "creditos",  materia.getCreditos());
			parametrosUpdate.put( "claveSep", materia.getClaveSep() );
			parametrosUpdate.put( "tipomat",  materia.getTipoMat());
			parametrosUpdate.put( "idGrado", materia.getIdGrado() );
			parametrosUpdate.put( "tipoGrupo", materia.getTipoGrupo());
			parametrosUpdate.put( "tipoCaptura", materia.getTipoCaptura());
			parametrosUpdate.put( "status", materia.getStatus());


			sesionTx = FabricaDeConexiones.obtenerSesionTx();
			actualizar = sesionTx.update("MapperEducareCatalogos.ActualizarMateria", parametrosUpdate);

			if ( actualizar == 0) {
				throw new Exception("No fue posible actualizar la materia ");
			}

			sesionTx.commit();
			respuesta.getHeader().setMensaje("Se actualizo correctamente la materia ");
		} catch (Exception e) {
			FabricaDeConexiones.rollBack(sesionTx);
			LogHandler.info(uid, this.getClass(), e.getMessage());
			respuesta.getHeader().setStatus(false);
			respuesta.getHeader().setMensaje(e.getMessage());
	    } finally {
	    	FabricaDeConexiones.close(sesionTx);
	    }
		return respuesta;
	}

	/**
	 * Metodo que sirve para eliminar Materia
	 * @param uid Identificador Unico
	 * @param idMateria Es el Id a buscar
	 * @return Objeto de tipo materia
	 */
	public MateriaRespuesta eliminarMateria(String uid, String idMateria) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a actualizar grado ");
		SqlSession sesionTx = null;
		MateriaRespuesta respuesta = new MateriaRespuesta();
		respuesta.setHeader(new EncabezadoRespuesta());
		respuesta.getHeader().setUid(uid);
		respuesta.getHeader().setStatus(true);
		int actualizar;

		try {

			sesionTx = FabricaDeConexiones.obtenerSesionTx();
			actualizar = sesionTx.update("MapperEducareCatalogos.EliminarMateria", idMateria);

			if ( actualizar == 0) {
				throw new Exception("No fue posible eliminar el grado");
			}

			sesionTx.commit();
			respuesta.getHeader().setMensaje("Se actualizo correctamente");
		} catch (Exception ex) {
			LogHandler.info(uid, this.getClass(), ex.getMessage());
			ex.printStackTrace();
	    } finally {
	    	FabricaDeConexiones.close(sesionTx);
	    }
		return respuesta;
	}

	/**
	 * Metodo que se utiliza para buscar materia por un Id
	 * @param uid Identificador Unico
	 * @param idMateria Es el Id a buscar
	 * @return Objeto de tipo materia
	 */
	public Materia buscarMateriaPorId(String uid, String idMateria) throws EducareException {
		LogHandler.info(uid, this.getClass(), "buscarMateriaPorId ");
		SqlSession sesionNTx = null;
		Materia materia = null;

		try {

			sesionNTx = FabricaDeConexiones.obtenerSesionNTx();
			materia = sesionNTx.selectOne("MapperEducareCatalogos.materiaPorId", idMateria);

			if (materia == null) {
				throw new Exception("No se encontro el registro de idMateria");
			}

		} catch (Exception ex) {
			LogHandler.info(uid, this.getClass(), ex.getMessage());
			ex.printStackTrace();
	    } finally {
	    	FabricaDeConexiones.close(sesionNTx);
	    }
		return materia;
	}

	/**
	 * Metodo que se utilizar para buscar todas las Materias Horario
	 * @param uid Identificador Unico
	 * @param idGrado Es el Id a buscar
	 * @return Lista de Materia
	 */
	public List<Materia> obtieneMateriasHorario(String uid, int idGrado) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a buscarTodosGrado ");
		SqlSession sesionNTx = null;
		List<Materia> listaMateria = null;

		try {
			sesionNTx = FabricaDeConexiones.obtenerSesionNTx();
			listaMateria = sesionNTx.selectList("MapperEducareCatalogos.obtieneMateriaHorario", idGrado);

			if (listaMateria.isEmpty()) {
				throw new Exception("No registro en la tabla de Materia Horario");
			}

		} catch (Exception ex) {
			LogHandler.info(uid, this.getClass(), ex.getMessage());
			ex.printStackTrace();
	    } finally {
	    	FabricaDeConexiones.close(sesionNTx);
	    }

		return listaMateria;
	}

	/**
	 * Metodo que se utilizar para obtener las materias por columna
	 * @param uid Identificador Unico
	 * @param materia de tipo materia
	 * @return Lista de Materia
	 */
	public List<Materia> obtieneMateriasPorColumna(String uid, Materia materia) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a buscarTodosGrado ");
		SqlSession sesionNTx = null;
		List<Materia> listaMateria = null;

		try {
			sesionNTx = FabricaDeConexiones.obtenerSesionNTx();

			final java.util.HashMap<String, Object> parametros = new HashMap<String, Object>();

			if (materia.getIdGrado() != 0) {
				parametros.put( "idGrado", materia.getIdGrado());
			} else {
				parametros.put( "idGrado", 0);
			}
			if (materia.getIdMateria() != null) {
				parametros.put( "idMateria", materia.getIdMateria());
			} else {
				parametros.put( "idMateria", null);
			}
			if (materia.getNombre() != null) {
				parametros.put( "nombre", materia.getNombre());
			} else {
				parametros.put( "nombre", null);
			}
			if (materia.getCreditos() != 0) {
				parametros.put( "creditos", materia.getCreditos());
			} else {
				parametros.put( "creditos", 0);
			}
			if ( materia.getClaveSep() != null) {
				parametros.put( "claveSep", materia.getClaveSep());
			} else {
				parametros.put( "claveSep", null);
			}
			if (materia.getTipoMat() != 0) {
				parametros.put( "tipoMat", materia.getTipoMat());
			} else {
				parametros.put( "tipoMat", 0);
			}
			if (materia.getTipoGrupo() != 0) {
				parametros.put( "tipoGrupo", materia.getTipoGrupo());
			} else {
				parametros.put( "tipoGrupo", 0);
			}
			if (materia.getTipoCaptura() != 0) {
				parametros.put( "tipoCaptura", materia.getTipoCaptura());
			} else {
				parametros.put( "tipoCaptura", 0);
			}
			listaMateria = sesionNTx.selectList("MapperEducareCatalogos.obtieneMateriaPorColumna", parametros);

			if (listaMateria.isEmpty()) {
				throw new Exception("No registro en la tabla de Materia Horario");
			}

		} catch (Exception ex) {
			LogHandler.info(uid, this.getClass(), ex.getMessage());
			ex.printStackTrace();
	    } finally {
	    	FabricaDeConexiones.close(sesionNTx);
	    }

		return listaMateria;
	}

	/**
	 * Metodo que sirve para insertar Puesto
	 * @param uid Identificador Unico
	 * @param puesto Objeto de tipo Puesto
	 * @return PuestoRespuesta
	 */
	public PuestoRespuesta insertarPuesto(String uid, Puesto puesto)  throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a insertar Materia ");
		SqlSession sesionTx = null;
		PuestoRespuesta respuesta = new PuestoRespuesta();
		respuesta.setHeader(new EncabezadoRespuesta());
		respuesta.getHeader().setUid(uid);
		respuesta.getHeader().setStatus(true);
		int insertar;
		try {

			final java.util.HashMap<String, Object> parametrosInsert = new HashMap<String, Object>();
			parametrosInsert.put( "descripcion", puesto.getDescripcion());
			parametrosInsert.put( "status", puesto.getStatus());

			sesionTx = FabricaDeConexiones.obtenerSesionTx();
			insertar = sesionTx.insert("MapperEducareCatalogos.insertarPuesto", parametrosInsert);

			if ( insertar == 0) {
				throw new Exception("No fue posible insertar el úesto");
			}

			sesionTx.commit();
			respuesta.getHeader().setMensaje("Se inserto correctamente el puesto");
		} catch (Exception e) {
			FabricaDeConexiones.rollBack(sesionTx);
			LogHandler.info(uid, this.getClass(), e.getMessage());
			respuesta.getHeader().setStatus(false);
			respuesta.getHeader().setMensaje(e.getMessage());
	    } finally {
	    	FabricaDeConexiones.close(sesionTx);
	    }
		return respuesta;
	}

	/**
	 * Metodo que sirve para eliminar Puesto
	 * @param uid Identificador Unico
	 * @param idPuesto Es el Id a buscar
	 * @return Objeto de tipo puesto
	 */
	public PuestoRespuesta eliminarPuesto(String uid, int idPuesto) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a actualizar grado ");
		SqlSession sesionTx = null;
		PuestoRespuesta respuesta = new PuestoRespuesta();
		respuesta.setHeader(new EncabezadoRespuesta());
		respuesta.getHeader().setUid(uid);
		respuesta.getHeader().setStatus(true);
		int actualizar;

		try {

			sesionTx = FabricaDeConexiones.obtenerSesionTx();
			actualizar = sesionTx.update("MapperEducareCatalogos.EliminarPuesto", idPuesto);

			if ( actualizar == 0) {
				throw new Exception("No fue posible eliminar el puesto");
			}

			sesionTx.commit();
			respuesta.getHeader().setMensaje("Se elimino correctamente el puesto");
		} catch (Exception ex) {
			LogHandler.info(uid, this.getClass(), ex.getMessage());
			ex.printStackTrace();
	    } finally {
	    	FabricaDeConexiones.close(sesionTx);
	    }
		return respuesta;
	}

	/**
	 * Metodo que sirve para actualizar Puesto
	 * @param uid Identificador Unico
	 * @param puesto Es el Id a buscar
	 * @return Objeto de tipo puesto
	 */
	public PuestoRespuesta actualizarPuesto(String uid, Puesto puesto) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a actualizar puesto ");
		SqlSession sesionTx = null;
		PuestoRespuesta respuesta = new PuestoRespuesta();
		respuesta.setHeader(new EncabezadoRespuesta());
		respuesta.getHeader().setUid(uid);
		respuesta.getHeader().setStatus(true);
		int actualizar;
		try {

			final java.util.HashMap<String, Object> parametrosUpdate = new HashMap<String, Object>();
			parametrosUpdate.put( "idPuesto", puesto.getIdPuesto());
			parametrosUpdate.put( "descripcion", puesto.getDescripcion());
			parametrosUpdate.put( "status", puesto.getStatus());


			sesionTx = FabricaDeConexiones.obtenerSesionTx();
			actualizar = sesionTx.update("MapperEducareCatalogos.ActualizarPuesto", parametrosUpdate);

			if ( actualizar == 0) {
				throw new Exception("No fue posible actualizar el puesto ");
			}

			sesionTx.commit();
			respuesta.getHeader().setMensaje("Se actualizo correctamente el puesto ");
		} catch (Exception e) {
			FabricaDeConexiones.rollBack(sesionTx);
			LogHandler.info(uid, this.getClass(), e.getMessage());
			respuesta.getHeader().setStatus(false);
			respuesta.getHeader().setMensaje(e.getMessage());
	    } finally {
	    	FabricaDeConexiones.close(sesionTx);
	    }
		return respuesta;
	}

	/**
	 * Metodo que se utiliza para buscar Puesto por un Id
	 * @param uid Identificador Unico
	 * @param idPuesto Es el Id a buscar
	 * @return Objeto de tipo puesto
	 */
	public Puesto buscarPuestoPorId(String uid, int idPuesto) throws EducareException {
		LogHandler.info(uid, this.getClass(), "buscarPuestoPorId ");
		SqlSession sesionNTx = null;
		Puesto puesto = null;

		try {

			sesionNTx = FabricaDeConexiones.obtenerSesionNTx();
			puesto = sesionNTx.selectOne("MapperEducareCatalogos.PuestoPorId", idPuesto);

			if (puesto == null) {
				throw new Exception("No se encontro el registro de puesto");
			}

		} catch (Exception ex) {
			LogHandler.info(uid, this.getClass(), ex.getMessage());
			ex.printStackTrace();
	    } finally {
	    	FabricaDeConexiones.close(sesionNTx);
	    }
		return puesto;
	}

	/**
	 * Metodo que se utiliza para listaPuestoTodos
	 * @param uid Identificador Unico
	 * @return Lista de tipo puesto
	 */
	public List<Puesto> listaPuestoTodos(String uid) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a listaPuestoTodos ");
		SqlSession sesionNTx = null;
		List<Puesto> listaPuesto = null;

		try {
			sesionNTx = FabricaDeConexiones.obtenerSesionNTx();
			listaPuesto = sesionNTx.selectList("MapperEducareCatalogos.listaPuestoTodos");

			if (listaPuesto.isEmpty()) {
				throw new Exception("No registro en la tabla de Puesto");
			}

		} catch (Exception ex) {
			LogHandler.info(uid, this.getClass(), ex.getMessage());
			ex.printStackTrace();
	    } finally {
	    	FabricaDeConexiones.close(sesionNTx);
	    }

		return listaPuesto;
	}

	/**
	 * Metodo que se utilizar para obtener el puesto por columna
	 * @param uid Identificador Unico
	 * @param puesto Objeto de tipo grado
	 * @return Lista de tipo puesto
	 */
	public List<Puesto> obtienePuestoPorColumna(String uid, Puesto puesto) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a ObtieneTodosGrados ");
		SqlSession sesionNTx = null;
		List<Puesto> listaPuesto = null;

		try {
			sesionNTx = FabricaDeConexiones.obtenerSesionNTx();

			final java.util.HashMap<String, Object> parametros = new HashMap<String, Object>();

			if (puesto.getIdPuesto() != 0) {
				parametros.put( "idPuesto", puesto.getIdPuesto());
			} else {
				parametros.put( "idPuesto", 0);
			}
			if (puesto.getDescripcion() !=  null) {
				parametros.put( "descripcion", puesto.getDescripcion());
			} else {
				parametros.put( "descripcion", null);
			}

			listaPuesto = sesionNTx.selectList("MapperEducareCatalogos.ObtienePuestoPorColumna", parametros);

			if (listaPuesto.isEmpty()) {
				throw new Exception("No encontro registro de puestos por columna");
			}

		} catch (Exception ex) {
			LogHandler.info(uid, this.getClass(), ex.getMessage());
			ex.printStackTrace();
	    } finally {
	    	FabricaDeConexiones.close(sesionNTx);
	    }

		return listaPuesto;
	}

	/**
	 * Metodo que sirve para insertar Empleado
	 * @param uid Identificador Unico
	 * @param empleado Objeto de tipo Empleado
	 * @return EmpleadoRespuesta
	 */
	public EmpleadoRespuesta insertarEmpleado(String uid, Empleado empleado) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a insertar grado ");
		SqlSession sesionTx = null;
		EmpleadoRespuesta respuesta = new EmpleadoRespuesta();
		respuesta.setHeader(new EncabezadoRespuesta());
		respuesta.getHeader().setUid(uid);
		respuesta.getHeader().setStatus(true);
		int insertar;
		try {

			Calendar cfechaIngreso = Calendar.getInstance();
			Calendar cfechaNacimiento = Calendar.getInstance();

			final java.util.HashMap<String, Object> parametrosInsert = new HashMap<String, Object>();
			parametrosInsert.put( "idEmpleado", empleado.getIdEmpleado());
			parametrosInsert.put( "nombre", empleado.getNombre());
			parametrosInsert.put( "direccion", empleado.getDireccion());
			parametrosInsert.put( "email", empleado.getEmail());
			parametrosInsert.put( "telefonoCasa", empleado.getTelefonoCasa());
			parametrosInsert.put( "telefonoCelular", empleado.getTelefonoCelular());
			parametrosInsert.put( "colonia", empleado.getColonia());
			parametrosInsert.put( "codigoPostal", empleado.getCodigoPostal());
			parametrosInsert.put( "fechaIngreso", empleado.getFechaIngreso()
					!= null ? empleado.getFechaIngreso() : cfechaIngreso.getTime());
			parametrosInsert.put( "fechaNacimiento", empleado.getFechaNacimiento()
					!= null ? empleado.getFechaNacimiento() : cfechaNacimiento);
			parametrosInsert.put( "tipoSangre", empleado.getTipoSangre());
			parametrosInsert.put( "dirImagen", empleado.getDirImagen());
			parametrosInsert.put( "sexo", empleado.getSexo());
			parametrosInsert.put( "curp", empleado.getCurp());
			parametrosInsert.put( "idPuesto", empleado.getIdPuesto());
			parametrosInsert.put( "activo", empleado.getActivo());
			parametrosInsert.put( "apellidoPaterno", empleado.getApellidoPaterno());
			parametrosInsert.put( "apellidoMaterno", empleado.getApellidoMaterno());
			parametrosInsert.put( "rfc", empleado.getRfc());
			parametrosInsert.put( "nombreContacto", empleado.getNombreContacto());
			parametrosInsert.put( "telefonoContacto", empleado.getTelefonoContacto());
			parametrosInsert.put( "numeroExterior", empleado.getNumeroExterior());
			parametrosInsert.put( "numeroInterior", empleado.getNumeroInterior());
			parametrosInsert.put( "status", empleado.getStatus());

			sesionTx = FabricaDeConexiones.obtenerSesionTx();
			insertar = sesionTx.insert("MapperEducareCatalogos.insertarEmpleado", parametrosInsert);

			if ( insertar == 0) {
				throw new Exception("No fue posible insertar el empleado");
			}

			sesionTx.commit();
			respuesta.getHeader().setMensaje("Se inserto correctamente el empleado");
		} catch (Exception e) {
			FabricaDeConexiones.rollBack(sesionTx);
			LogHandler.info(uid, this.getClass(), e.getMessage());
			respuesta.getHeader().setStatus(false);
			respuesta.getHeader().setMensaje(e.getMessage());
	    } finally {
	    	FabricaDeConexiones.close(sesionTx);
	    }
		return respuesta;
	}

	/**
	 * Metodo que se utilizar para buscar todos los Empleados
	 * @param uid Identificador Unico
	 * @return Lista de Empleado
	 */
	public List<Empleado> buscarTodosEmpleado(String uid) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a buscarTodosGrado ");
		SqlSession sesionNTx = null;
		List<Empleado> listaEmpleado = null;

		try {
			sesionNTx = FabricaDeConexiones.obtenerSesionNTx();
			listaEmpleado = sesionNTx.selectList("MapperEducareCatalogos.listaEmpleadoTodos");

			if (listaEmpleado.isEmpty()) {
				throw new Exception("No registro en la tabla de Empleados ");
			}

		} catch (Exception ex) {
			LogHandler.info(uid, this.getClass(), ex.getMessage());
			ex.printStackTrace();
	    } finally {
	    	FabricaDeConexiones.close(sesionNTx);
	    }

		return listaEmpleado;
	}

	/**
	 * Metodo que se utilizar para buscar por Id un Empleado
	 * @param uid Identificador Unico
	 * @param idEmpleado Id del empleado a buscar
	 * @return Lista de Empleado
	 */
	public List<Empleado> buscarEmpleadoPorId(String uid, String idEmpleado) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a buscarTodosGrado ");
		SqlSession sesionNTx = null;
		List<Empleado> listaEmpleado = null;

		try {
			sesionNTx = FabricaDeConexiones.obtenerSesionNTx();
			listaEmpleado = sesionNTx.selectList("MapperEducareCatalogos.listaEmpleadoPorId", idEmpleado);

			if (listaEmpleado.isEmpty()) {
				throw new Exception("No registro en la tabla de Empleados ");
			}

		} catch (Exception ex) {
			LogHandler.info(uid, this.getClass(), ex.getMessage());
			ex.printStackTrace();
	    } finally {
	    	FabricaDeConexiones.close(sesionNTx);
	    }

		return listaEmpleado;
	}

	/**
	 * Metodo que se utiliza para buscar Menu por un Id
	 * @param uid Identificador Unico
	 * @param idPerfil Es el Id a buscar
	 * @return Objeto de tipo menu
	 */
	public List<Menu> buscarMenuPorId(String uid, int idPerfil) throws EducareException {
		LogHandler.info(uid, this.getClass(), "buscarGradoPorId ");
		SqlSession sesionNTx = null;
		List<Menu> listaMenu = null;

		try {

			sesionNTx = FabricaDeConexiones.obtenerSesionNTx();
			listaMenu = sesionNTx.selectList("MapperEducareCatalogos.menuPorId", idPerfil);

			if (listaMenu.size() ==  0) {
				throw new Exception("No se encontro el registro de buscarMenuPorId");
			}

		} catch (Exception ex) {
			LogHandler.info(uid, this.getClass(), ex.getMessage());
			ex.printStackTrace();
	    } finally {
	    	FabricaDeConexiones.close(sesionNTx);
	    }
		return listaMenu;
	}

	/**
	 * Metodo que se utiliza para buscar el usuario
	 * @param uid Identificador Unico
	 * @param usuario el usuario a buscar
	 * @return Usuario Object
	 * @throws EducareException
	 */
	public Usuario buscarUsuario(String uid, String usuario) throws EducareException {
		LogHandler.info(uid, this.getClass(), "buscarUsuario");
		SqlSession sesionNTx = null;
		Usuario user = null;

		try {
			sesionNTx = FabricaDeConexiones.obtenerSesionNTx();
			user = sesionNTx.selectOne("MapperEducareUsuarios.obtenerUsuario", usuario);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			FabricaDeConexiones.close(sesionNTx);
		}
		return user;
	}

	/**
	 * Metodo que se utiliza para eliminar un empleado
	 * @param uid Identificador Unico
	 * @param idEmpleado Es el Id a buscar
	 * @return Objeto de tipo empleado
	 */
	public EmpleadoRespuesta eliminarEmpleado(String uid, String idEmpleado) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a eliminarEmpleado ");
		SqlSession sesionTx = null;
		EmpleadoRespuesta respuesta = new EmpleadoRespuesta();
		respuesta.setHeader(new EncabezadoRespuesta());
		respuesta.getHeader().setUid(uid);
		respuesta.getHeader().setStatus(true);
		int actualizar;

		try {

			sesionTx = FabricaDeConexiones.obtenerSesionTx();
			actualizar = sesionTx.update("MapperEducareCatalogos.eliminarEmpleado", idEmpleado);

			if ( actualizar == 0) {
				throw new Exception("No fue posible eliminar el empleado");
			}

			sesionTx.commit();
			respuesta.getHeader().setMensaje("Se actualizo correctamente el empleado");
		} catch (Exception ex) {
			LogHandler.info(uid, this.getClass(), ex.getMessage());
			ex.printStackTrace();
	    } finally {
	    	FabricaDeConexiones.close(sesionTx);
	    }
		return respuesta;

	}

	/**
	 * Metodo que sirve para actualizar empleado
	 * @param uid Identificador Unico
	 * @param empleado Es de tipop empleado
	 * @return Objeto de tipo empleado
	 */
	public EmpleadoRespuesta actualizarEmpleado(String uid, Empleado empleado)throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a actualizar empleado ");
		SqlSession sesionTx = null;
		EmpleadoRespuesta respuesta = new EmpleadoRespuesta();
		respuesta.setHeader(new EncabezadoRespuesta());
		respuesta.getHeader().setUid(uid);
		respuesta.getHeader().setStatus(true);
		int actualizar;
		try {

			final java.util.HashMap<String, Object> parametrosUpdate = new HashMap<String, Object>();
			parametrosUpdate.put( "idEmpleado", empleado.getIdEmpleado());
			parametrosUpdate.put( "nombre", empleado.getNombre());
			parametrosUpdate.put( "direccion", empleado.getDireccion());
			parametrosUpdate.put( "email", empleado.getEmail());
			parametrosUpdate.put( "telefonoCasa", empleado.getTelefonoCasa());
			parametrosUpdate.put( "telefonoCelular", empleado.getTelefonoCelular());
			parametrosUpdate.put( "colonia", empleado.getColonia());
			parametrosUpdate.put( "codigoPostal", empleado.getCodigoPostal());
			parametrosUpdate.put( "fechaIngreso", empleado.getFechaIngreso());
			parametrosUpdate.put( "fechaNacimiento", empleado.getFechaNacimiento());
			parametrosUpdate.put( "tipoSangre", empleado.getTipoSangre());
			parametrosUpdate.put( "dirImagen", empleado.getDirImagen());
			parametrosUpdate.put( "sexo", empleado.getSexo());
			parametrosUpdate.put( "curp", empleado.getCurp());
			parametrosUpdate.put( "idPuesto", empleado.getIdPuesto());
			parametrosUpdate.put( "activo", empleado.getActivo());
			parametrosUpdate.put( "apellidoPaterno", empleado.getApellidoPaterno());
			parametrosUpdate.put( "apellidoMaterno", empleado.getApellidoMaterno());
			parametrosUpdate.put( "rfc", empleado.getRfc());
			parametrosUpdate.put( "nombreContacto", empleado.getNombreContacto());
			parametrosUpdate.put( "telefonoContacto", empleado.getTelefonoContacto());
			parametrosUpdate.put( "numeroExterior", empleado.getNumeroExterior());
			parametrosUpdate.put( "numeroInterior", empleado.getNumeroInterior());
			parametrosUpdate.put( "status", empleado.getStatus());

			sesionTx = FabricaDeConexiones.obtenerSesionTx();
			actualizar = sesionTx.update("MapperEducareCatalogos.actualizarEmpleado", parametrosUpdate);

			if ( actualizar == 0) {
				throw new Exception("No fue posible actualizar el empleado");
			}

			sesionTx.commit();
			respuesta.getHeader().setMensaje("Se actualizo correctamente el empleado");
		} catch (Exception e) {
			FabricaDeConexiones.rollBack(sesionTx);
			LogHandler.info(uid, this.getClass(), e.getMessage());
			respuesta.getHeader().setStatus(false);
			respuesta.getHeader().setMensaje(e.getMessage());
	    } finally {
	    	FabricaDeConexiones.close(sesionTx);
	    }
		return respuesta;
	}

	/**
	 * Metodo que se utilizar para obtener los catalogos
	 * @param uid Identificador Unico
	 * @param tipoCatalogo Es el tipo de catalogo a buscar
	 * @return Lista de Catalogo
	 */
	public List<Catalogo> obtenerCatalogo(String uid, String tipoCatalogo) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a obtenerCatalogo ");
		SqlSession sesionNTx = null;
		List<Catalogo> listaCatalogos = null;

		try {
			sesionNTx = FabricaDeConexiones.obtenerSesionNTx();
			listaCatalogos = sesionNTx.selectList("MapperEducareCatalogos.obtenerCatalogo", tipoCatalogo);

			if (listaCatalogos.isEmpty()) {
				throw new Exception("No registro el tipo de Catalgo " + tipoCatalogo );
			}

		} catch (Exception ex) {
			LogHandler.info(uid, this.getClass(), ex.getMessage());
			ex.printStackTrace();
	    } finally {
	    	FabricaDeConexiones.close(sesionNTx);
	    }

		return listaCatalogos;
	}

	/**
	 * Metodo que se utilizar para buscar todos los grados
	 * @param uid Identificador Unico
	 * @param idPerfil Es el idPerfil a buscar
	 * @return Lista de Menu
	 */
	public List<Menu> obtenerMenu(String uid, int idPerfil) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a obtenerMenu ");
		SqlSession sesionNTx = null;
		List<Menu> listaMenu = null;

		try {
			sesionNTx = FabricaDeConexiones.obtenerSesionNTx();
			listaMenu = sesionNTx.selectList("MapperEducareCatalogos.obtenerMenu", idPerfil);

			if (listaMenu.isEmpty()) {
				throw new Exception("No registro de Menu");
			}

		} catch (Exception ex) {
			LogHandler.info(uid, this.getClass(), ex.getMessage());
			ex.printStackTrace();
		} finally {
			FabricaDeConexiones.close(sesionNTx);
		}
		return listaMenu;
	}

	/**
	 * Metodo que se utilizar para obtner el SubMenu
	 * @param uid Identificador Unico
	 * @param idPerfil Es el idPerfil a buscar
	 * @param idPadre Es el idPadre a buscar
	 * @return Lista de Menu
	 */
	public List<Menu> obtenerSubMenu(String uid, int idPerfil, int idPadre) throws EducareException {
		LogHandler.info(uid, this.getClass(), "Entro a obtenerMenu ");
		SqlSession sesionNTx = null;
		List<Menu> listaMenu = null;

		try {
			sesionNTx = FabricaDeConexiones.obtenerSesionNTx();

			final java.util.HashMap<String, Object> parametros = new HashMap<String, Object>();
			parametros.put( "idPerfil", idPerfil);
			parametros.put( "idPadre", idPadre);

			listaMenu = sesionNTx.selectList("MapperEducareCatalogos.obtenerMenu", parametros);

			if (listaMenu.isEmpty()) {
				throw new Exception("No registro de Menu");
			}

		} catch (Exception ex) {
			LogHandler.info(uid, this.getClass(), ex.getMessage());
			ex.printStackTrace();
		} finally {
			FabricaDeConexiones.close(sesionNTx);
		}
		return listaMenu;
	}

}

