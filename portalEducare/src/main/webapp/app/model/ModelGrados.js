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
		        url: '/portalEducare/ObtenerGrado',
		        timeout: 30000,
		        reader: {
		            type: 'json',
		            root: 'listGrado'
		        },
		        actionMethods: {
		            read: 'POST'
		        }
		    }
});
