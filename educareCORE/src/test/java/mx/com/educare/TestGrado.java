package mx.com.educare;

import static org.junit.Assert.*;

import org.junit.Test;

import mx.com.educare.core.EducareCatalogosNegocio;

public class TestGrado {
	
	EducareCatalogosNegocio negocio = new EducareCatalogosNegocio();

	@Test
	public void test() {
//		llenarComboSeccion();
		llenarComboGrado();
	}
	
	public void llenarComboSeccion() {
		
		String respuesta = negocio.llenarComboSeccion("");
		System.out.println(respuesta);
		
	}
	
    public void llenarComboGrado() {
		
		String respuesta = negocio.llenarComboGrado("");
		System.out.println(respuesta);
		
	}

}
