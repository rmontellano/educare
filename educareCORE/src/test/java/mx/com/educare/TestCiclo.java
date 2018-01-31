package mx.com.educare;

import org.junit.Test;

import mx.com.educare.core.EducareCatalogosNegocio;
import mx.com.educare.dto.Ciclo;

public class TestCiclo {
	EducareCatalogosNegocio negocio = new EducareCatalogosNegocio();

	@Test
	public void test() {
//		llenarComboSeccionCiclo();
//		llenarComboFechaInicioCiclo();
//		llenarComboFechaFinCiclo();
//		llenarComboActualCiclo();
//		buscarCiclo();
//		actualizarCiclo();
//		eliminarCiclo();
		insertarCiclo();
	}
	
	/**
	 * test para probar el metodo  llenarComboSeccionCiclo
	 */
	public void llenarComboSeccionCiclo() {		
		String respuesta = negocio.llenarComboSeccionCiclo("");
		System.out.println(respuesta);		
	}
	
	/**
	 * test para probar el metodo  llenarComboFechaInicioCiclo
	 */
	public void llenarComboFechaInicioCiclo() {		
		String respuesta = negocio.llenarComboFechaInicioCiclo("");
		System.out.println(respuesta);		
	}
	
	/**
	 * test para probar el metodo  llenarComboFechaFinCiclo
	 */
	public void llenarComboFechaFinCiclo() {		
		String respuesta = negocio.llenarComboFechaFinCiclo("");
		System.out.println(respuesta);		
	}
	
	/**
	 * test para probar el metodo  v
	 */
	public void llenarComboActualCiclo() {		
		String respuesta = negocio.llenarComboActualCiclo("");
		System.out.println(respuesta);		
	}
	
	/**
	 * test para probar el metodo  de buscar ciclo
	 */
	public void buscarCiclo() {	
		Ciclo ciclo = new Ciclo();
		ciclo.setDescripcionSeccion("Primaria");
		//ciclo.setPeriodo("2015-2016");  se utiliza periodo o fecha inicio y fin , no las dos
		ciclo.setFechaInicio("2015-11-03");
		ciclo.setFechaFin("2016-12-12");
		ciclo.setDescripcionActual("NO");
		String respuesta = negocio.buscarCiclo("", ciclo);
		System.out.println(respuesta);		
	}
	
	/**
	 * test para probar la actualizacion del ciclo
	 */
	public void actualizarCiclo() {
		Ciclo ciclo = new Ciclo();
		ciclo.setIdCiclo(19);
		ciclo.setIdSeccion(37);
		ciclo.setDescripcionSeccion("Secundaria");
		ciclo.setDescripcionActual("NO");
		ciclo.setFechaInicio("2015-11-03");
		ciclo.setFechaFin("2016-12-12");
		ciclo.setNombre("CAFE 2015-2016");
		
		String respuesta = negocio.actualizarCiclo("", ciclo);
		System.out.println(respuesta);
	}
	
	/**
	 * test para probar la eliminar el ciclo
	 */
	public void eliminarCiclo() {
		Ciclo ciclo = new Ciclo();
		ciclo.setIdCiclo(19);	
		String respuesta = negocio.eliminarCiclo("", ciclo);
		System.out.println(respuesta);
	}
	
	/**
	 * test para probar la eliminar el ciclo
	 */
	public void insertarCiclo() {
		Ciclo ciclo = new Ciclo();
		ciclo.setIdSeccion(37);
		ciclo.setActual(1);
		ciclo.setFechaInicio("2016-07-15");
		ciclo.setFechaFin("2016-07-15");
		ciclo.setNombre("PRI 2015-2016");	
		String respuesta = negocio.insertarCiclo("", ciclo);
		System.out.println(respuesta);
	}
	
	

}
