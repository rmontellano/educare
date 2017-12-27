Ext.define('EducareV2.model.ModelSeccion',{
	extend: 'Ext.data.Model',

	fields: [{
				name:'idSeccion',
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