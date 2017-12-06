Ext.define('EducareV2.view.catalogos.GradosGrid',{
	extend: 'Ext.grid.Panel',
	
	xtype: 'gradosgrid',
    itemId: 'gradosgrid',
	//title: 'Grados',
	store: 'catalogos.Grados',
    viewConfig: {
        stripeRows: false
    },
    width: '100%',
	columns:[{
        xtype: 'actioncolumn',
        //locked: true,
        text: 'Eliminar',
        width: 49,
        sortable: false,
        items: [{
            icon: 'images/icons/eliminar.png',
            tooltip: 'Ver',
            scope: this,
            handler: function(grid, rowIndex, colIndex) {
            	Ext.Msg.confirm('Educare - Confirmación', '\xBFEstá seguro de eliminar el registro?', function(id){
                   if(id === 'yes'){
                	   grid.getStore().removeAt(rowIndex);
                   }
		        });
            	//alert('Eliminar');
                //var rec = grid.getStore().getAt(rowIndex);
                //window.open(rec.get('ruta'),'',false);
            }
        }]
    },{
        text: 'Sección',
        dataIndex: 'descripcion',
        width: 80
    },{
        text: 'Grado',
        dataIndex: 'numGrado',
        width: 55
    },{
        text: 'Último grado',
        dataIndex: 'ultimoGrado',
        renderer :  function(val, metadata, record, rowIndex, colIndex, store, view) {
        	if (val == 0) {
        		return 'NO';
        	} else {
        		return 'SI';
        	}
        },
        width: 72
    },{
        xtype: 'actioncolumn',
        //locked: true,
        text: 'Editar',
        width: 41,
        sortable: false,
        items: [{
            icon: 'images/icons/editar.png',
            tooltip: 'Editar',
            scope: this,
            handler: function(grid, rowIndex, colIndex) {
            	//alert('Editar');
            	Ext.ComponentQuery.query('gradospanel')[0].show();
            	Ext.ComponentQuery.query('[itemId=btnGuardar]')[0].hide();
            	Ext.ComponentQuery.query('[itemId=btnAgregar]')[0].hide();
    			Ext.ComponentQuery.query('[itemId=btnActualizar]')[0].show();
            	Ext.ComponentQuery.query('[itemId=gradosWindow]')[0].setSize(330,400);
                var rec = grid.getStore().getAt(rowIndex);
                Ext.ComponentQuery.query('[itemId=numNombreGrado]')[0].setValue(rec.get('numGrado'));
                Ext.ComponentQuery.query('[itemId=cbbSeccion]')[0].setValue(rec.get('descripcion'));
                Ext.ComponentQuery.query('[itemId=cbbUltimoGradoEscolar]')[0].setValue(rec.get('ultimoGrado'));
                //window.open(rec.get('ruta'),'',false);
            }
        }]
    }]
});
