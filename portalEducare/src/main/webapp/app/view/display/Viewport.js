var hora = Ext.create('Ext.toolbar.TextItem', {text: Ext.Date.format(new Date(), 'g:i:s A')});
Ext.define('EducareV2.view.display.Viewport',{
	extend: 'Ext.container.Viewport',
	requires: ['EducareV2.view.display.Menu', 
			   'EducareV2.view.display.ToolBarUp'],
	layout: {
		type: 'border'	
	},
	viewConfig: {
        forceFit: true
    },

	items: [{
		xtype: 'panel',
		height: 30,
		width: '100%',
		html: 'EDUCARE V2.0.1',
		region: 'north',
		dockedItems: [{
	        dock: 'top',
	        cls: 'bloque0',
	        xtype: 'toolbar',
	        height: 100,
	        items: [{
	            width: 390,
	            xtype: 'toolBarUp'
	        },'->', {
	            xtype: 'component',
	            autoEl: {
	                tag: 'img'
	                //src: '../resources/images/.png'
	            }
	        }]
	    },{
	        dock: 'bottom',
	        xtype: 'toolbar',
	        height: 20,
	        items: [
	            Ext.Date.format(new Date(), 'd/n/Y')
	        , '-' ,
	            hora
	        , '->', {
	            xtype: 'component',
	            html: '<span style="font-family: Tahoma;"> Eduacare <b> v2.3.0 </b> </span>'
	        }],
	        listeners: {
	            render: {
	                fn: function(){
	                    Ext.fly(hora.getEl().parent()).addCls('x-status-text-panel').createChild({cls:'spacer'});
	                 Ext.TaskManager.start({
	                     run: function(){
	                         Ext.fly(hora.getEl()).update(Ext.Date.format(new Date(), 'g:i:s A'));
	                     },
	                     interval: 1000
	                 });
	                },
	                delay: 100
	            }
	        }
	    }]
	},{
		xtype: 'panel',
		itemId: 'mainContainer',
		margin: '2px 2px 2px 2px',
		autoScroll: true,
		region: 'center',
		width: '100%',
		html: 'center',
		height: '100%'
		//layout: { type: 'vbox', align: 'stretch'},
	},{
		xtype: 'menuLateral',
		layout: 'accordion',
		collapsible: true,
	    //height: 400,
	    defaults: {
	        bodyPadding: 0
	    },
	    multi: true,
	    fill: false,
	    width: 140,
		region: 'west'
	}]
});
