Ext.define('EducareV2.view.catalogos.GradosPanel',{
	extend: 'Ext.form.Panel',
	xtype: 'gradospanel',
	itemId: 'gradospanel',
	width: '100%',
	bodyPadding: 10,
	requires: 'Ext.form.FieldContainer',
	fieldDefaults: {
		labelAlign: 'center',
		labelWidth: 70,
		labelStyle: 'font-weight:bold;font-size:0.8em',
		bodyStyle: 'padding:2px',
		margins: '3'
	},
	//title: 'Grados',
	dockedItems: [{
		dock: 'bottom',
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
		}]
	}],
	config: {
		items: [{
			xtype: 'fieldset',
			itemId: 'fsgrados',
			//cls: 'clase',
			border: true,
			//title: '<b>Grados</b>',
			items: [{
				xtype: 'combobox',
				fieldLabel: 'Sección',
				itemId: 'cbbSeccion',
				//store: '',
				//displayField: '',
				//queryMode: 'local',
				//valueField: '',
				editable: false,
				emptyText: 'Elegir...'
			},{
				xtype: 'numberfield',
				fieldLabel: 'Grado',
				itemId: 'numNombreGrado',
				maxValue: 6,
				minValue: 1,
				//store: '',
				//displayField: '',
				//queryMode: 'local',
				//valueField: '',
				editable: false,
				emptyText: 'Elegir...'
			},{
				xtype: 'container',
				padding: '0px',
				layout: 'hbox',
				items: [{
					xtype: 'combobox',
					fieldLabel: 'Último Grado Escolar',
					itemId: 'cbbUltimoGradoEscolar',
					//store: '',
					//displayField: '',
					//queryMode: 'local',
					//valueField: '',
					editable: false,
					emptyText: 'Elegir...'
				},{
					xtype: 'button',
					text: 'Buscar',
					itemId: 'btnBuscarGrados',
					icon: 'images/icons/buscar.png',
					border: 0,
					//style:'background:none;',
					margin: '4px 0 0 20px'
				}]
			}]
		}]
	}
});