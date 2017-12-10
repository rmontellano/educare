Ext.define('EducareV2.view.catalogos.GradosAlta',{
	extend: 'Ext.form.Panel',
	xtype: 'gradosAlta',
	itemId: 'gradosAlta',
	border: false,
	bodyPagging: 10,
	width: '100%',
	requires: 'Ext.form.FieldContainer',
	fieldDefaults: {
		labelAlign: 'center',
		labelWidth: 70,
		labelStyle: 'font-weight:bold;font-size:0.8em',
		bodyStyle: 'padding:2px',
		margins: '3'
	},
	
	dockedItems: [{
		dock: 'top',
		//cls: '',
		xtype: 'toolbar',
		pack: 'end',
		//heigth: 10,
		items: [{                         
			xtype: 'button',
			text: 'Agregar Grado',
			itemId: 'btnAgregarGrados',
			icon: 'images/icons/nuevo.png',
			margin: '0px 0px 0px 10px',
			scale: 'small'	
		}, {
			xtype: 'tbspacer',
			width: 125
		}, {                         
			xtype: 'button',
			text: 'Limpiar Grado',
			itemId: 'btnLimpiarGrados',
			icon: 'images/icons/limpiar.png',
			margin: '0px 0px 0px 10px',
			scale: 'small'	
		}, {
			xtype: 'tbspacer',
			width: 125
		}, {                         
			xtype: 'button',
			text: 'Guardar Grado',
			itemId: 'btnGuardarGrados',
			icon: 'images/icons/guardar.png',
			margin: '0px 0px 0px 10px',
			scale: 'small'	
		}]
	}],
	
	config: {
		items: [{
			xtype: 'fieldset',
			itemId: 'fieldsetGenerales',
			border: 1,
			style: {borderColor:'#000000', borderStyle:'solid', borderWidth:'1px', background: 'gray'}, 
			items: [{
				xtype: 'container',
				layout: {
					type: 'hbox',
					align: 'stretch'
				},
				items: [{
					     xtype: 'tbspacer',
					     width: 80
				   }, {
						xtype: 'label',
						text:'Sección',
						fieldStyle: 'font-size:0.8em;background: #E6E6E6; font-weight:bold;'
					}, {
						xtype: 'tbspacer',
						width: 200
					}, {
						xtype: 'label',
						text:'Grado',
						fieldStyle: 'font-size:0.8em;background: #E6E6E6; font-weight:bold;'
					}, {
						xtype: 'tbspacer',
						width: 125
					}, {
						xtype: 'label',
						text:'Último Grado Escolar',
						fieldStyle: 'font-size:0.8em;background: #E6E6E6; font-weight:bold;'
			    }]
		   }, {
			   xtype: 'container',
				layout: {
					type: 'hbox',
					align: 'stretch'
				},
				items: [{
					xtype: 'combobox',
					itemId: 'cbbSeccionGrado',
					width: 200,
					//store: '',
					//displayField: '',
					//queryMode: 'local',
					//valueField: '',
					editable: false,
					emptyText: 'Elegir...'
				}, {
					xtype: 'tbspacer',
					width: 50
				}, {
					xtype: 'textfield',
					fieldStyle: 'font-size:0.8em;background: #E6E6E6; font-weight:bold;',
					width: 150,
					itemId: 'txfNombreGrado'
				}, {
					xtype: 'tbspacer',
					width: 50
				}, {
					xtype: 'textfield',
					fieldStyle: 'font-size:0.8em;background: #E6E6E6; font-weight:bold;',
					width: 150,
					itemId: 'txfUltimoGrado'
		        }]
			   
		     }]
	    }]
     }
});