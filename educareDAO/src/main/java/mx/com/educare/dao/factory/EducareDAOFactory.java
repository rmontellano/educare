/**
 *
 */
package mx.com.educare.dao.factory;

import mx.com.educare.dao.impl.EducareDAOImpl;
import mx.com.educare.dao.interfacedao.EducareDAO;

/**
 * /**
 * Clase que nos permite implementar el Daofactory
 * @author tonyocampoc@gmail.com
 */
public class EducareDAOFactory {
	/**
	 * M&eacute;todo que permite crear una instancia de EducareDAOImpl
	 *
	 * @return EducareDAO que crear una instancia de EducareDAOImpl
	 * @throws Exception
	 */
	public EducareDAO obtenerInstanciaDao() throws Exception {
		return new EducareDAOImpl();
	}

}
