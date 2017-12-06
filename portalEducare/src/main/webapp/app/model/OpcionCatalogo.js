Ext.define('Educare.model.OpcionCatalogo',{
	extend: 'Ext.data.Model',

	fields: [{
				name:'idopcioncat',
				type:'int'
			},{
				name:'idcatologo',
				type:'int'
			},{
				name:'descripcion',
				type:'string'
			},{
				name:'status',
				type:'string'
			},{
				name:'tipocat',
				type:'string'
			},{
				name:'desctipocat',
				type:'string'
			}]
});
