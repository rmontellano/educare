Ext.define('EducareV2.controller.MainController',{
	extend: 'Ext.app.Controller',
	stores: ['ParametrosUrl', 'StoreGrados'],
	requires: [
		'EducareV2.view.catalogos.GradosGrid',
		'EducareV2.view.catalogos.GradosPanel',
		'EducareV2.view.catalogos.GradosAlta'
	],
	init: function(){
		this.getUrlParams();
        var storeUrlParams = this.getParametrosUrlStore();
        var recordUrlParams = storeUrlParams.getAt(0);
        _usrLogin = recordUrlParams.get('q');
		this.control({
			'#btnGrados':{
				click: this.catalogoGrados
			}
		});
	},
	catalogoGrados: function(){
		if(Ext.ComponentQuery.query('[itemId=gradosWindow]')[0] == undefined) {
			var gradosWindow = Ext.create('Ext.window.Window', {
	            title: 'Grados',
	            itemId: 'gradosWindow',
	            closeAction: 'destroy',
	            maximized: false,
	            width: 600,
	            height: 400,
	            layout: 'vbox',
	            resizable: true,
	            constrain: true,
	            closable : true,
	            items: [{
	                xtype: 'gradospanel'
	            },{
	                xtype: 'gradosAlta'
	            },{
	                xtype: 'gradosgrid'
	            }]
	        });	
			//Secciones
		    Ext.ComponentQuery.query('combobox[itemId=cbbSeccion]')[0].setReadOnly(true);
		    //Carga de secciones
		    Ext.ComponentQuery.query('combobox[itemId=cbbSeccion]')[0].getStore().load();
			//Ext.ComponentQuery.query('gradospanel')[0].setSize(330,40);
			//Ext.ComponentQuery.query('[itemId=fsgrados]')[0].hide();
//			Ext.ComponentQuery.query('[itemId=btnGuardar]')[0].hide();
//        	Ext.ComponentQuery.query('[itemId=btnAgregar]')[0].show();
//			Ext.ComponentQuery.query('[itemId=btnActualizar]')[0].hide();
        	//Ext.ComponentQuery.query('[itemId=gradosWindow]')[0].setSize(330,300);
			//gradosWindow.setSize(330,200);
			Ext.ComponentQuery.query('[itemId=mainContainer]')[0].add(gradosWindow);
//			Ext.ComponentQuery.query('gradosgrid')[0].getStore().load({
//				scope: this,
//			    callback: function(records, operation, success) {
//			    	console.log(records);
//			        console.log(operation);
//			        console.log(success);
//			    	if(success) {
//			    		var jsonResponse = Ext.decode(operation.response.responseText);
//			    		if(jsonResponse.tipo == -1) {
//			    			//history.go(-(history.length - 1));
//			    			//window.location.replace('/portalEducare');
//			    		}
//			    	}
//			    }
//			});
			gradosWindow.show();
		}
	},
	mostrarMascara : function (msg) {
        var mensaje =  '<br/><br/><br/> <b> ' + msg + '...</b> <br>  Espere por favor.';
        var myMask = new Ext.LoadMask( Ext.getBody(), {
                msg : mensaje
            });
        myMask.show();
        return myMask;
    },
	getUrlParams: function() {
      // Se obtienen los parametros de la URL.
      var getParams = document.URL.split("?");
      // Se transforman los parametros GET en un diccionario.
      var params = Ext.urlDecode(getParams[getParams.length - 1]);

      /*var parametrosRecord = {
              token : params['token']
          };*/
      console.info('p: ' + params['q']);
      var parametrosStore = this.getParametrosUrlStore();

      parametrosStore.add(parametrosRecord);

      //var record = parametrosStore.getAt(0);
	}
});

function creaPestana (titulo, id, xtipo) {
    var tabs=Ext.getCmp('pestanas');
    var tabIndex = tabs.items.findIndex('id', id);

    if(tabIndex != -1){
      tabs.setActiveTab(tabIndex);
    }else{  
          tab = tabs.add({
            title: titulo,
            id: id,
            defaults:{ 
              autoScroll:true 
            },
            closable: true,
            layout: 'fit',
            items:[{
              xtype: xtipo
            }]
        });

        tabs.setActiveTab(tab);
    }
}
