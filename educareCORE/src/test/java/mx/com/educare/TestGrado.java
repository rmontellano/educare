package mx.com.educare;

import org.junit.Test;

import mx.com.educare.core.EducareCatalogosNegocio;
import mx.com.educare.dto.Grado;

public class TestGrado {
	
	EducareCatalogosNegocio negocio = new EducareCatalogosNegocio();

	@Test
	public void test() {
//		llenarComboSeccion();
//		llenarComboGrado();
//		llenarComboUltimoGrado();
		buscarGrado();
//		actualizarGrado();
//		eliminarGrado();
//		insertarGrado();
	}

	/**
	 * test para probar el metodo  llenarComboSeccion
	 */
	public void llenarComboSeccion() {		
		String respuesta = negocio.llenarComboSeccion("");
		System.out.println(respuesta);		
	}

	/**
	 * test para probar el metodo  llenarComboGrado
	 */
    public void llenarComboGrado() {	
		String respuesta = negocio.llenarComboGrado("");
		System.out.println(respuesta);	
	}

    /**
	 * test para probar el metodo  llenarComboUltimoGrado
	 */
    public void llenarComboUltimoGrado() {	
  		String respuesta = negocio.llenarComboUltimoGrado("");
  		System.out.println(respuesta);	
  	}
 
    /**
	 * test para probar el metodo  buscarGrado
	 */
    public void buscarGrado() {
    	Grado grado = new Grado();
    	grado.setDescripcionSeccion("Primaria");
    	grado.setNumGrado(4);
    	grado.setDescripcionUltimoGrado("NO");
    	String respuesta = negocio.buscarGrado("", grado);
    	System.out.println(respuesta);
    }
   
    /**
	 * test para probar el metodo  actualizarGrado
	 */
    public void actualizarGrado() {
    	Grado grado = new Grado();
    	grado.setIdGrado(7);
    	grado.setDescripcionSeccion("Secundaria");
    	grado.setNumGrado(6);
    	grado.setDescripcionUltimoGrado("SI");
    	String respuesta = negocio.actualizarGrado("", grado);
    	System.out.println(respuesta);
    }
  
    /**
	 * test para probar el metodo  eliminarGrado
	 */
    public void eliminarGrado() {
    	Grado grado = new Grado();
    	grado.setIdGrado(17);
    	String respuesta = negocio.eliminarGrado("", grado);
    	System.out.println(respuesta);
    }
   
    /**
	 * test para probar el metodo  insertarGrado
	 */
    public void insertarGrado() {
    	Grado grado = new Grado();
    	grado.setIdSeccion(38);
    	grado.setNumGrado(2);
    	grado.setUltimoGrado(0);
    	String respuesta = negocio.insertarGrado("", grado);
    	System.out.println(respuesta);
    }

}
