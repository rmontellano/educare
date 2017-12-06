Ext.define('EducareV2.model.catalogos.Grados',{
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
			}]
});
