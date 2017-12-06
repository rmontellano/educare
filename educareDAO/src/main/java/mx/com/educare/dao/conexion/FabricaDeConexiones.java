/**
 * Clase de Fabrica de conexiones
 */
package mx.com.educare.dao.conexion;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.log4j.Logger;

import mx.com.educare.constantes.ConstantesConexion;

/**
 * Clase que sirve para realizar nuestras conexiones.
 * @author tonyocampoc@gmail.com
 *
 */
public final class FabricaDeConexiones {
	/**
	 *Variable que permite el logging de las actividades.
	 */
	 private static final Logger LOGGER = Logger.getLogger(FabricaDeConexiones.class);

		/**
		 * sesion SqlSessionFactory.
		 */
		private static SqlSessionFactory fACTORY_TX;
		/**
		 * sesion FACTORY_NTX.
		 */
		private static SqlSessionFactory fACTORY_NTX;
	/**
	 * Constructor de la clase FabricaConexiones.
	 */
	private  FabricaDeConexiones() {
		//;//Evita que se generen objetos de esta clase
		}


	/**
	 * sesion FACTORY_BATCH
	 */

	static {
		//Tx
		iobtenerSesionTx();

		//NTx
		iobtenerSesionNTx();
	}

	/**
	 * Obtiene una sesion a la base de datos.
	 * @throws IOException
	 */
	private static void iobtenerSesionTx() {
		Reader 						readerTx;
		SqlSessionFactoryBuilder 	builderTx;
		SqlSessionFactory 			sqlMapperTx = null;
		try {

			readerTx 		= Resources.getResourceAsReader(ConstantesConexion.IBATIS_CONFIG.getValor());

			builderTx 		= new SqlSessionFactoryBuilder( );
			sqlMapperTx 	= builderTx.build( readerTx );
		} catch ( Exception e ) {
			LOGGER.info( "Error : " + e.getMessage(), e );
			LOGGER.info("Error : " + e.getCause(), e );
			LOGGER.info("Error : " + e.getClass().getName(), e );
			LOGGER.info( "Existio un erorr en la Fabrica de Conexiones Tx", e);
 		}
		fACTORY_TX = sqlMapperTx;
		}

	/**
	 * Obtiene una sesion a la base de datos.
	 * @throws IOException
	 */
	private static void iobtenerSesionNTx()	{
		Reader 						readerNTx;
		SqlSessionFactoryBuilder 	builderNTx;
		SqlSessionFactory 			sqlMapperNTx = null;
		try {

			readerNTx 		= Resources.getResourceAsReader(ConstantesConexion.IBATIS_CONFIG.getValor() );

			builderNTx 		= new SqlSessionFactoryBuilder( );
			sqlMapperNTx 	= builderNTx.build( readerNTx );
		} catch ( Exception e ) {
			LOGGER.info( "Existio un error en la Fabrica de Conexiones NTx", e);
 		}
		fACTORY_NTX = sqlMapperNTx;
		}


	/**
	 * Obtiene una sesion a la base de datos.
	 * @return Sesion.
	 * @throws IOException
	 */
	public static SqlSession obtenerSesionTx( ) throws SQLException {
		SqlSession regreso = null;
		try {
			if ( fACTORY_TX == null ) {
				iobtenerSesionTx();
			}
			if ( fACTORY_TX != null ) {
				regreso = fACTORY_TX.openSession( false );
			}
			if ( regreso == null ) {
				throw new Exception(  );
			}
		} catch (Exception e) {
			LOGGER.info( "Existio un error al obtenerSesionTx", e);
			throw new SQLException( "Sin conexion TX a la base de datos" );
		}
		return regreso;
	}


	/**
	 * Obtiene una sesion a la base de datos.
	 * @return Sesion.
	 * @throws IOException
	 */
	public static SqlSession obtenerSesionNTx( ) throws SQLException {
		SqlSession regreso = null;
		try {
			if ( fACTORY_NTX == null ) {
				iobtenerSesionNTx();
			}
			if ( fACTORY_NTX != null ) {
				regreso = fACTORY_NTX.openSession( true ); //Autocommit ON, no permite transacciones
			}
			if ( regreso == null ) {
				throw new Exception(  );
			}
		} catch (Exception e) {
			LOGGER.info( "Existio un error al obtenerSesionNTx", e);
			throw new SQLException( "Sin conexion NTX a la base de datos" );
		}
		return regreso;
	}

	/**
	 * Cierra una sesion a la base de datos.
	 * @param conn tipo SqlSession
	 * @throws IOException
	 */
	public static void close(SqlSession conn) {
		if ( conn != null ) {
			conn.close( );
			conn = null;
			}
	}
	/**
	 * Regresa los cambios de la base de datos.
	 * @param conn tipo SqlSession
	 * @throws IOException
	 */
	public static void rollBack(final SqlSession conn) {
		if ( conn != null ) {
			conn.rollback( true );
		}
	}

	}
