Ext.define('EducareV2.view.catalogos.GradosAlta',{
	extend: 'Ext.form.Panel',
	xtype: 'gradosAlta',
	itemId: 'gradosAlta',
	border: false,
	bodyPagging: 20,
	//width: '100%',
	requires: 'Ext.form.FieldContainer',
	fieldDefaults: {
		labelAlign: 'center',
		labelWidth: 70,
		labelStyle: 'font-weight:bold;font-size:0.8em',
		bodyStyle: 'padding:2px',
		margins: '3'
	},
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
					     width: 30
				   }, {
						xtype: 'label',
						text:'Sección',
						fieldStyle: 'font-size:0.8em;background: #E6E6E6; font-weight:bold;'
					}, {
						xtype: 'tbspacer',
						width: 70
					}, {
						xtype: 'label',
						text:'Nombre',
						fieldStyle: 'font-size:0.8em;background: #E6E6E6; font-weight:bold;'
					}, {
						xtype: 'tbspacer',
						width: 85
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
					width: 100,
					//store: '',
					//displayField: '',
					//queryMode: 'local',
					//valueField: '',
					editable: false,
					emptyText: 'Elegir...'
				}, {
					xtype: 'textfield',
					fieldStyle: 'font-size:0.8em;background: #E6E6E6; font-weight:bold;',
					width: 150,
					itemId: 'txfNombreGrado'
				}, {
					xtype: 'textfield',
					fieldStyle: 'font-size:0.8em;background: #E6E6E6; font-weight:bold;',
					width: 120,
					itemId: 'txfUltimoGrado'
		        }]
			   
		     }]
	    }]
     }
});