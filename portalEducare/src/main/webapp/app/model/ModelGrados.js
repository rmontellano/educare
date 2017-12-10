Ext.define('EducareV2.model.ModelGrados',{
	extend: 'Ext.data.Model',

	fields: [{
				name:'idGrado',
				type:'int'
			},{
				name:'idSeccion',
				type:'int'
			},{
				name:'numGrado',
				type:'int'
			},{
				name:'ultimoGrado',
				type:'int'
			},{
				name:'status',
				type:'int'
			},{
				name:'descripcion',
				type:'string'
			}],
			
			proxy: {
		        type: 'ajax',
		        url: '/portalEducare/ObtenerGrado?q=31323334335l31353030333437373633&operacion=catalogoGrado',
		        timeout: 30000,
		        reader: {
		            type: 'json',
		            root: 'listGrado'
		        },
		        actionMethods: {
		            read: 'GET'
		        }
		    }
});
