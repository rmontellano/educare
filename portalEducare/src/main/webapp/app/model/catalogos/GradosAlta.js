Ext.define('EducareV2.model.catalogos.GradosAlta',{
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
				name:'tipo',
				type:'int'
			},{
				name:'descripcion',
				type:'string'
			}],
			
			proxy: {
		        type: 'ajax',
		        url: 'data/gradoAlta.json',
		        timeout: 30000,
		        reader: {
		            type: 'json',
		            root: 'grados'
		        }
		    }
			
});
