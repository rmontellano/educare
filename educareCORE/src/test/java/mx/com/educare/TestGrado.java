package mx.com.educare;

import static org.junit.Assert.*;

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
//		buscarGrado();
		actualizarGrado();
	}
	
	public void llenarComboSeccion() {		
		String respuesta = negocio.llenarComboSeccion("");
		System.out.println(respuesta);		
	}
	
    public void llenarComboGrado() {	
		String respuesta = negocio.llenarComboGrado("");
		System.out.println(respuesta);	
	}
    
    public void llenarComboUltimoGrado() {	
  		String respuesta = negocio.llenarComboUltimoGrado("");
  		System.out.println(respuesta);	
  	}
    
    public void buscarGrado() {
    	Grado grado = new Grado();
    	grado.setDescripcionSeccion("Primaria");
    	grado.setNumGrado(4);
    	grado.setUltimoGrado(0);
    	String respuesta = negocio.buscarGrado("", grado);
    	System.out.println(respuesta);
    }
    
    public void actualizarGrado() {
    	Grado grado = new Grado();
    	grado.setIdGrado(7);
    	grado.setDescripcionSeccion("Secundaria");
    	grado.setNumGrado(6);
    	grado.setDescripcionUltimoGrado("SI");
    	String respuesta = negocio.actualizarGrado("", grado);
    	System.out.println(respuesta);
    }

}
