Ext.define('Educare.store.generico', {
	extend: 'Ext.data.Store',
	//requires: 'Educare.model.configuracion.Periodo',
	model: 'Educare.model.extra.generico',
	proxy: {
		type: 'ajax',
		//url: '/educareweb/ServletPeriodo',
		extraParams: {
                //operacion: "buscarTodos",
            },
            actionMethods: {
                read: 'POST', 
            },
            reader: {
              messageProperty: 'message'
            },
            jsonData: true,
            callback: function(records, operation, success) {
			if(!success) {
				Ext.MessageBox.alert({
	              	title: 'Error',
	              	msg:  operation.getError(),
	              	buttons: Ext.Msg.OK,
	              	icon:   Ext.Msg.WARNING
	            });
			}
		},
        failure: function(th, response, options){
                Ext.MessageBox.alert({
                    title: 'Error',
                    msg:  response,
                    buttons: Ext.Msg.OK,
                    icon:   Ext.Msg.ERROR
                });
            }

        },
        autoLoad: false
    });
