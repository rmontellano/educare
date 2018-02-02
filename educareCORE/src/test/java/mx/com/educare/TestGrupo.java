package mx.com.educare;

import org.junit.Test;

import mx.com.educare.core.EducareCatalogosNegocio;
import mx.com.educare.dto.Grupo;

public class TestGrupo {
	EducareCatalogosNegocio negocio = new EducareCatalogosNegocio();

	@Test
	public void test() {
//		llenarComboDescripcionGrupo();
//		llenarComboDescripcionGradoGrupo();
//		llenarComboNombreGrupo();
//		llenarComboCapacidadGrupo();
		buscarGrupo();
	}
	
	/**
	 * test para probar el metodo  llenarComboDescripcionGrupo
	 */
	public void llenarComboDescripcionGrupo() {		
		String respuesta = negocio.llenarComboDescripcionGrupo("");
		System.out.println(respuesta);		
	}
	
	/**
	 * test para probar el metodo  llenarComboDescripcionGradoGrupo
	 */
	public void llenarComboDescripcionGradoGrupo() {		
		String respuesta = negocio.llenarComboDescripcionGradoGrupo("");
		System.out.println(respuesta);		
	}
	
	/**
	 * test para probar el metodo  llenarComboNombreGrupo
	 */
	public void llenarComboNombreGrupo() {		
		String respuesta = negocio.llenarComboNombreGrupo("");
		System.out.println(respuesta);		
	}
	
	/**
	 * test para probar el metodo  llenarComboCapacidadGrupo
	 */
	public void llenarComboCapacidadGrupo() {		
		String respuesta = negocio.llenarComboCapacidadGrupo("");
		System.out.println(respuesta);		
	}
	
	/**
	 * test para probar el metodo  llenarComboCapacidadGrupo
	 */
	public void buscarGrupo() {
        Grupo grupo = new Grupo();
        grupo.setDescripcionSeccion("Primaria");
        grupo.setNumeroGrado(1);
        //grupo.setNombreGrupo("A");
       // grupo.setCapacidad(25);
		String respuesta = negocio.buscarGrupo("", grupo);
		System.out.println(respuesta);		
	}

}
