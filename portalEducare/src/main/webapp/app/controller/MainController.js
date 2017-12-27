var storeGradosDatos, storeSeccionDatos, storeUltimosGradosDatos;

Ext.define('EducareV2.controller.MainController',{
	extend: 'Ext.app.Controller',
	stores: ['ParametrosUrl', 'StoreGrados', 'StoreSecciones', 'StoreUltimoGrado'],
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
			},
			 'button[itemId=btnBuscarGrados]': {
	                click: this.onClickBuscarGrados
	        }
		});
	},
	onLaunch: function() {
		//cbbSeccion
        this.getStoreSeccionesStore().load({
            async: true,
            params: {
            	'q':'31323334335l31353030333437373633',
            	'operacion': 'llenarComboSeccion'
            },
            timeout: 120000,
            callback: function(th,op,sc){
                console.info('storeSeccionDatos --->')
                storeSeccionDatos = th;
                console.info(storeSeccionDatos);
            },
            failure: function(){
                console.error('Ocurrio un error al realizar la consulta de secciones.');
            }
        });
        
        this.getStoreGradosStore().load({
            async: true,
            params: {
            	'q':'31323334335l31353030333437373633',
            	'operacion': 'llenarComboGrado'
            },
            timeout: 120000,
            callback: function(th,op,sc){
                console.info('storeGradosDatos --->')
                storeGradosDatos = th;
                console.info(storeGradosDatos);
            },
            failure: function(){
                console.error('Ocurrio un error al realizar la consulta de grados.');
            }
        });
        
        this.getStoreUltimoGradoStore().load({
            async: true,
            params: {
            	'q':'31323334335l31353030333437373633',
            	'operacion': 'llenarComboUltimoGrado'
            },
            timeout: 120000,
            callback: function(th,op,sc){
                console.info('storeUltimosGradosDatos --->')
                storeUltimosGradosDatos = th;
                console.info(storeUltimosGradosDatos);
            },
            failure: function(){
                console.error('Ocurrio un error al realizar la consulta de ultimos grados.');
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
	
	onClickBuscarGrados: function() {
		 console.info('>>>>> Buscar Grado <<<<<<');
		var mask = this.mostrarMascara('Buscando Grados');
		 var idSeccion='';
         if(Ext.ComponentQuery.query('combobox[itemId=cbbSeccion_Grado]')[0] != undefined)
        	 idSeccion = Ext.ComponentQuery.query('combobox[itemId=cbbSeccion_Grado]')[0].getValue();
         var idGrado='';
         if(Ext.ComponentQuery.query('combobox[itemId=cbbGrado_Grado]')[0] != undefined)
        	 idGrado = Ext.ComponentQuery.query('combobox[itemId=cbbGrado_Grado]')[0].getValue();
         var idUltimoGrado='';
         if(Ext.ComponentQuery.query('combobox[itemId=cbbUltimoGradoEscolar_Grado]')[0] != undefined)
        	 idUltimoGrado = Ext.ComponentQuery.query('combobox[itemId=cbbUltimoGradoEscolar_Grado]')[0].getValue();
         console.info('idSeccion: ' + idSeccion);
         console.info('idGrado: ' + idGrado);
         console.info('idUltimoGrado: ' + idUltimoGrado);
         
         Ext.Ajax.request({
             params: {
                 'idSeccion': idSeccion,
                 'idGrado': idGrado,
                 'idUltimoGrado': idUltimoGrado,
                 'q':'31323334335l31353030333437373633',
             	  'operacion': 'catalogoBusquedaGrado'
             },
             timeout: 900000,
             url: '/portalEducare/ObtenerGrado',
             method: 'POST',
             scope: this,
             success: function(th,opt,suc){
                 console.log(th);
                 //Cambio de Xml a Json
                  var guardarXmlResponse = Ext.decode(th.responseText);
                 console.info('guardarXmlResponse:');
                 console.info(guardarXmlResponse);
                 mask.hide();
             },
             failure: function(th,opt,suc){
                 mask.hide();
             }
         });      
		
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
