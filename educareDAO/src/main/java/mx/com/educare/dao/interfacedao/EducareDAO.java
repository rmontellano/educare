/**
 *
 */
package mx.com.educare.dao.interfacedao;

import java.util.List;

import mx.com.educare.dto.Catalogo;
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
import mx.com.educare.dto.auth.Usuario;
import mx.com.educare.dto.util.RespuestaCiclo;
import mx.com.educare.dto.util.RespuestaGrado;
import mx.com.educare.util.excepciones.EducareException;

/**
 * Interface que nos ayudara en para implementar el patron de dise&ntilde;o daofactory
 * @author tonyocampoc@gmail.com
 * @version 1.0.1
 */
public interface EducareDAO {

	/**
	 * Metodo que sirve para insertar grado
	 * @param uid Identificador Unico
	 * @param grado Objeto de tipo grado
	 * @return GradoRespuesta
	 */
	RespuestaGrado insertarGrado(String uid, Grado grado) throws EducareException;

	/**
	 * Metodo que sirve para actualizar grado
	 * @param uid Identificador Unico
	 * @param grado Es el Id a buscar
	 * @return Lista de tipo grado
	 */
	RespuestaGrado actualizarGrado(String uid, Grado grado) throws EducareException;

	/**
 	 * Metodo que se utiliza para eliminar un grado
	 * @param uid Identificador Unico
	 * @param idGrado Es el Id a buscar
	 * @return Objeto de tipo grado
	 */
	RespuestaGrado eliminarGrado(String uid, Grado idGrado) throws EducareException;
	
	/**
	 * Metodo de realizar la busqueda de secciones
	 * @param uid Identificador Unico
	 * @param grado Objeto de tipo grado
	 * @return Lista de tipo grado
	 */
	List<Grado> llenarComboSeccion(String uid) throws Exception;
	
	/**
	 * Metodo de realizar la busqueda de grados
	 * @param uid Identificador Unico
	 * @param grado Objeto de tipo grado
	 * @return Lista de tipo grado
	 */
	List<Grado> llenarComboGrado(String uid) throws Exception;
	
	/**
	 * Metodo de realizar la busqueda de la ultimo grado
	 * @param uid Identificador Unico
	 * @param grado Objeto de tipo grado
	 * @return Lista de tipo grado
	 */
	List<Grado> llenarComboUltimoGrado(String uid) throws Exception;

	/**
	 * Metodo que se utilizar para obtener todos los grados por columna
	 * @param uid Identificador Unico
	 * @param grado Objeto de tipo grado
	 * @return Lista de tipo grado
	 */
	List<Grado> buscarGrado(String uid, Grado grado)  throws EducareException;
	
	/**
	 * Metodo de realizar la busqueda de ciclos
	 * @param uid Identificador Unico
	 * @return Lista de tipo ciclo
	 */
	List<Ciclo> llenarComboSeccionCiclo(String uid) throws Exception;

	/**
	 * Metodo de realizar la busqueda de la fecha inicio
	 * @param uid Identificador Unico
	 * @return Lista de tipo ciclo
	 */
	List<Ciclo> llenarComboFechaInicioCiclo(String uid) throws Exception;
	
	/**
	 * Metodo de realizar la busqueda de la fecha fin
	 * @param uid Identificador Unico
	 * @return Lista de tipo ciclo
	 */
	List<Ciclo> llenarComboFechaFinCiclo(String uid) throws Exception;
	
	/**
	 * Metodo de realizar la busqueda actual
	 * @param uid Identificador Unico
	 * @return Lista de tipo ciclo
	 */
	List<Ciclo> llenarComboActualCiclo(String uid) throws Exception;

	/**
	 * Metodo que se utilizar para obtener todos los ciclos por columna
	 * @param uid Identificador Unico
	 * @param ciclo Objeto de tipo Ciclo
	 * @return Lista de tipo Ciclo
	 */
	List<Ciclo> buscarCiclo(String uid, Ciclo ciclo) throws EducareException;

	/**
	 * Metodo que sirve para actualizar grado
	 * @param uid Identificador Unico
	 * @param grado Es el Id a buscar
	 * @return Objeto de tipo grado
	 */
	RespuestaCiclo actualizarCiclo(String uid, Ciclo ciclo) throws EducareException;
	
	/**
	 * Metodo que se utiliza para eliminar un ciclo
	 * @param uid Identificador Unico
	 * @param ciclo Es el Id a buscar
	 * @return Objeto de tipo ciclo
	 */
	RespuestaCiclo eliminarCiclo(String uid, Ciclo ciclo) throws EducareException;
	
	/**
	 * Metodo que sirve para insertar ciclo
	 * @param uid Identificador Unico
	 * @param ciclo Objeto de tipo ciclo
	 * @return RespuestaCiclo
	 */
	RespuestaCiclo insertarCiclo(String uid, Ciclo ciclo) throws EducareException;

	/**
	 * Metodo de realizar el llenado del combo descripcion
	 * @param uid Identificador Unico
	 * @return Lista de tipo grupo
	 */
	List<Grupo> llenarComboDescripcionGrupo(String uid) throws Exception;
	
	/**
	 * Metodo que realiza el llenado del combo grado de grupo
	 * @param uid Identificador Unico
	 * @return Lista de tipo grupo
	 */
	List<Grupo> llenarComboDescripcionGradoGrupo(String uid) throws Exception;
	
	/**
	 * Metodo que realiza el llenado del combo nombre de grupo
	 * @param uid Identificador Unico
	 * @return Lista de tipo grupo
	 */
    List<Grupo> llenarComboNombreGrupo(String uid) throws Exception;
    
	/**
	 * Metodo que realiza el llenado del combo capacidad de grupo
	 * @param uid Identificador Unico
	 * @return Lista de tipo grupo
	 */
	List<Grupo> llenarComboCapacidadGrupo(String uid) throws Exception;
	
	/**
	 * Metodo que se utilizar para obtener todos los grupos por columna
	 * @param uid Identificador Unico
	 * @param grado Objeto de tipo grado
	 * @return Lista de tipo grupo
	 */
	List<Grupo> buscarGrupo(String uid, Grupo grupo) throws EducareException;

	/**
	 * Metodo que se utilizar para buscar todos los Grupos
	 * @param uid Identificador Unico
	 * @return Lista de Grupo
	 */
	public List<Grupo> buscarTodosGrupo(String uid) throws EducareException;

	/**
	 * Metodo que sirve para insertar grupo
	 * @param uid Identificador Unico
	 * @param grupo Objeto de tipo grupo
	 * @return GradoRespuesta
	 */
	public GrupoRespuesta insertarGrupo(String uid, Grupo grupo) throws EducareException;

	/**
	 * Metodo que se utiliza para buscar por un Id
	 * @param uid Identificador Unico
	 * @param idGrupo Es el Id a buscar
	 * @return Objeto de tipo grupo
	 */
	public Grupo buscarGrupoPorId(String uid, int idGrupo) throws EducareException;

	/**
	 * Metodo que sirve para actualizar grupo
	 * @param uid Identificador Unico
	 * @param grupo Es el Id a buscar
	 * @return Objeto de tipo grupo
	 */
	public GrupoRespuesta actualizarGrupo(String uid, Grupo grupo) throws EducareException;

	/**
	 * Metodo que se utiliza para eliminar un grupo
	 * @param uid Identificador Unico
	 * @param idGrado Es el Id a buscar
	 * @return Objeto de tipo grupo
	 */
	public GrupoRespuesta eliminarGrupo(String uid, int idGrado) throws EducareException;

	/**
	 * Metodo que se utiliza para listaGrupoSeccion
	 * @param uid Identificador Unico
	 * @return Lista de tipo grupo
	 */
	public List<Grupo> listaGrupoSeccion(String uid) throws EducareException;

	/**
	 * Metodo que se utilizar para obtener todos los grupos
	 * @param uid Identificador Unico
	 * @return Lista de tipo grupo
	 */
	public List<Grupo> obtieneTodosGrupos(String uid) throws EducareException;

	/**
	 * Metodo que se utilizar para obtener todos los grupo por columna
	 * @param uid Identificador Unico
	 * @param grupo Objeto de tipo grado
	 * @return Lista de tipo grupo
	 */
	public List<Grupo> obtieneTodoGrupoPorColumna(String uid, Grupo grupo)  throws EducareException;

	/**
	 * Metodo que se utilizar para obtener todos los criterio
	 * @param uid Identificador Unico
	 * @return Lista de tipo Criterio
	 */
	public List<Criterio> obtieneTodosCriterio(String uid) throws EducareException;

	/**
	 * Metodo que sirve para insertar criterio
	 * @param uid Identificador Unico
	 * @param criterio Objeto de tipo criterio
	 * @return CriterioRespuesta
	 */
	public CriterioRespuesta insertarCriterio(String uid, Criterio criterio) throws EducareException;

	/**
	 * Metodo que sirve para actualizar Criterio
	 * @param uid Identificador Unico
	 * @param criterio Es el Id a buscar
	 * @return Objeto de tipo criterio
	 */
	public CriterioRespuesta actualizarCriterio(String uid, Criterio criterio) throws EducareException;

	/**
	 * Metodo que se utiliza para eliminar un Criterio
	 * @param uid Identificador Unico
	 * @param idCriterio Es el Id a buscar
	 * @return Objeto de tipo Criterio
	 */
	public CriterioRespuesta eliminarCriterio(String uid, int idCriterio) throws EducareException;

	/**
	 * Metodo que se utiliza para buscar por un Id
	 * @param uid Identificador Unico
	 * @param idCriterio Es el Id a buscar
	 * @return Objeto de tipo Criterio
	 */
	public Criterio buscarCriterioPorId(String uid, int idCriterio) throws EducareException;

	/**
	 * Metodo que se utilizar para buscar todas las Materias
	 * @param uid Identificador Unico
	 * @return Lista de Materia
	 */
	public List<Materia> buscarTodasMaterias(String uid) throws EducareException;

	/**
	 * Metodo que sirve para insertar Materia
	 * @param uid Identificador Unico
	 * @param materia Objeto de tipo Materia
	 * @return MateriaRespuesta
	 */
	public MateriaRespuesta insertarMateria(String uid, Materia materia) throws EducareException;

	/**
	 * Metodo que sirve para actualizar Materia
	 * @param uid Identificador Unico
	 * @param materia Es el Id a buscar
	 * @return Objeto de tipo materia
	 */
	public MateriaRespuesta actualizarMateria(String uid, Materia materia)throws EducareException;

	/**
	 * Metodo que sirve para eliminar Materia
	 * @param uid Identificador Unico
	 * @param idMateria Es el Id a buscar
	 * @return Objeto de tipo materia
	 */
	public MateriaRespuesta eliminarMateria(String uid, String idMateria)throws EducareException;

	/**
	 * Metodo que se utiliza para buscar materia por un Id
	 * @param uid Identificador Unico
	 * @param idMateria Es el Id a buscar
	 * @return Objeto de tipo materia
	 */
	public Materia buscarMateriaPorId(String uid, String idMateria) throws EducareException;

	/**
	 * Metodo que se utilizar para buscar todas las Materias Horario
	 * @param uid Identificador Unico
	 * @param idGrado Es el Id a buscar
	 * @return Lista de Materia
	 */
	public List<Materia> obtieneMateriasHorario(String uid, int idGrado) throws EducareException;

	/**
	 * Metodo que se utilizar para obtener las materias por columna
	 * @param uid Identificador Unico
	 * @param materia de tipo materia
	 * @return Lista de Materia
	 */
	public List<Materia> obtieneMateriasPorColumna(String uid, Materia materia) throws EducareException;

	/**
	 * Metodo que sirve para insertar Puesto
	 * @param uid Identificador Unico
	 * @param puesto Objeto de tipo Puesto
	 * @return PuestoRespuesta
	 */
	public PuestoRespuesta insertarPuesto(String uid, Puesto puesto)  throws EducareException;

	/**
	 * Metodo que sirve para eliminar Puesto
	 * @param uid Identificador Unico
	 * @param idPuesto Es el Id a buscar
	 * @return Objeto de tipo puesto
	 */
	public PuestoRespuesta eliminarPuesto(String uid, int idPuesto)throws EducareException;

	/**
	 * Metodo que sirve para actualizar Puesto
	 * @param uid Identificador Unico
	 * @param puesto Es el Id a buscar
	 * @return Objeto de tipo puesto
	 */
	public PuestoRespuesta actualizarPuesto(String uid, Puesto puesto) throws EducareException;

	/**
	 * Metodo que se utiliza para buscar Puesto por un Id
	 * @param uid Identificador Unico
	 * @param idPuesto Es el Id a buscar
	 * @return Objeto de tipo puesto
	 */
	public Puesto buscarPuestoPorId(String uid, int idPuesto) throws EducareException;

	/**
	 * Metodo que se utiliza para listaPuestoTodos
	 * @param uid Identificador Unico
	 * @return Lista de tipo puesto
	 */
	public List<Puesto> listaPuestoTodos(String uid) throws EducareException;

	/**
	 * Metodo que se utilizar para obtener el puesto por columna
	 * @param uid Identificador Unico
	 * @param puesto Objeto de tipo grado
	 * @return Lista de tipo puesto
	 */
	public List<Puesto> obtienePuestoPorColumna(String uid, Puesto puesto) throws EducareException;

	/**
	 * Metodo que sirve para insertar Empleado
	 * @param uid Identificador Unico
	 * @param empleado Objeto de tipo Empleado
	 * @return EmpleadoRespuesta
	 */
	public EmpleadoRespuesta insertarEmpleado(String uid, Empleado empleado) throws EducareException;

	/**
	 * Metodo que se utilizar para buscar todos los Empleados
	 * @param uid Identificador Unico
	 * @return Lista de Empleado
	 */
	public List<Empleado> buscarTodosEmpleado(String uid) throws EducareException;

	/**
	 * Metodo que se utilizar para buscar por Id un Empleado
	 * @param uid Identificador Unico
	 * @param idEmpleado Id del empleado a buscar
	 * @return Lista de Empleado
	 */
	public List<Empleado> buscarEmpleadoPorId(String uid, String idEmpleado) throws EducareException;

	/**
	 * Metodo que se utiliza para buscar Menu por un Id
	 * @param uid Identificador Unico
	 * @param idMenu Es el Id a buscar
	 * @return Objeto de tipo menu
	 */
	public List<Menu> buscarMenuPorId(String uid, int idMenu) throws EducareException;

	/**
	 * Metodo que se utiliza para buscar el usuario
	 * @param uid Identificador Unico
	 * @param usuario el usuario a buscar
	 * @return Usuario Object
	 * @throws EducareException
	 */
	public Usuario buscarUsuario(String uid, String usuario) throws EducareException;

	/**
	 * Metodo que se utiliza para eliminar un empleado
	 * @param uid Identificador Unico
	 * @param idEmpleado Es el Id a buscar
	 * @return Objeto de tipo empleado
	 */
	public EmpleadoRespuesta eliminarEmpleado(String uid, String idEmpleado) throws EducareException;

	/**
	 * Metodo que sirve para actualizar empleado
	 * @param uid Identificador Unico
	 * @param empleado Es de tipop empleado
	 * @return Objeto de tipo empleado
	 */
	public EmpleadoRespuesta actualizarEmpleado(String uid, Empleado empleado)throws EducareException;

	/**
	 * Metodo que se utilizar para obtener los catalogos
	 * @param uid Identificador Unico
	 * @param tipoCatalogo Es el tipo de catalogo a buscar
	 * @return Lista de Catalogo
	 */
	public List<Catalogo> obtenerCatalogo(String uid, String tipoCatalogo) throws EducareException;

	/**
	 * Metodo que se utilizar para buscar todos los grados
	 * @param uid Identificador Unico
	 * @param idPerfil Es el idPerfil a buscar
	 * @return Lista de Menu
	 */
	public List<Menu> obtenerMenu(String uid, int idPerfil) throws EducareException;

	/**
	 * Metodo que se utilizar para obtner el SubMenu
	 * @param uid Identificador Unico
	 * @param idPerfil Es el idPerfil a buscar
	 * @param idPadre Es el idPadre a buscar
	 * @return Lista de Menu
	 */
	public List<Menu> obtenerSubMenu(String uid, int idPerfil, int idPadre) throws EducareException;
}

