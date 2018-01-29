package mx.com.educare;

import org.junit.Test;

import mx.com.educare.core.EducareCatalogosNegocio;

public class TestCiclo {
	EducareCatalogosNegocio negocio = new EducareCatalogosNegocio();

	@Test
	public void test() {
//		llenarComboSeccionCiclo();
//		llenarComboFechaInicioCiclo();
		llenarComboFechaFinCiclo();
//		llenarComboActualCiclo();
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

}
