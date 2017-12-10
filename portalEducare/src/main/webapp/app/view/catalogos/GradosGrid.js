Ext.define('EducareV2.view.catalogos.GradosGrid',{
	extend: 'Ext.grid.Panel',
	requires: 'Ext.grid.column.CheckColumn',
	xtype: 'gradosgrid',
    itemId: 'gradosgrid',
	title: 'Grados',
	autoScroll: true,
	flex: 1,
	height: 350,
	width: '100%',
	//store: 'catalogos.Grados',
	plugins: [
        Ext.create('Ext.grid.plugin.CellEditing', {
            clicksToEdit: 2,
            listeners: {
              'beforeedit': function(e) {
                var me = this;
                console.log(me);
                var allowed = !!me.isEditAllowed;
                if (!me.isEditAllowed)
                      	me.isEditAllowed = true;
                    	me.startEditByPosition({row: e.rowIdx, column: e.colIdx});
                return allowed;
              },
              'edit': function(e) {
                this.isEditAllowed = false;
              },
              'afteredit': function(e) {
                //Despues de la edición
                    console.info('Salio con Enter');
              }
            }
        })
    ],
    viewConfig: {
        stripeRows: false
    },
   
	columns:[{
        text: '#',
        xtype: 'rownumberer',
		align: 'center',
		summaryType: 'count',
		summaryRenderer: function(v, params, data) {
	        return ('<b>REG:</b>&nbsp;&nbsp;' + v); 
        },	        
        width: 50
        }, {
    		xtype: 'actioncolumn', 
    		text: 'Editar',
    		width: 50,
    		itemId: 'GridEditarGrado',
    		align: 'center',
    		items: [{
    			tooltip : 'Editar Grado',
    			icon	: 'images/icons/editp.png'
    		}]
    	},{
    		xtype: 'actioncolumn', 
    		text: 'Eliminar',
    		width: 50,
    		itemId: 'GridEliminarGrado',
    		align: 'center',
    		items: [{
    			tooltip : 'Eliminar Grado',
    			icon	: 'images/icons/eliminar.png'      	
    		}]
    },{
        text: 'Sección',
        dataIndex: 'descripcion',
        width: 200
    },{
        text: 'Grado',
        dataIndex: 'numGrado',
        width: 150
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
        width: 150
    }]
});
