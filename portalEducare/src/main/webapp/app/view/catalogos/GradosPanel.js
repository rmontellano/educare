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
				itemId: 'cbbSeccion_Grado',
				width: 270,
				store: 'StoreSecciones',
				queryMode: 'local',
				allowBlank: false,
				displayField: 'descripcion',
				valueField: 'descripcion',
//				editable: false,
				fieldStyle: 'font-size:10px;color:#213DA9;font-weight:bold;',
				emptyText: 'Elegir...'
			}, {
				xtype: 'combobox',
				fieldLabel: 'Grado',
				itemId: 'cbbGrado_Grado',
				width: 270,
				store: 'StoreGrados',
				queryMode: 'local',
				allowBlank: false,
				displayField: 'numGrado',
				valueField: 'numGrado',
//				editable: false,
				fieldStyle: 'font-size:10px;color:#213DA9;font-weight:bold;',
				emptyText: 'Elegir...'
			},{
				xtype: 'container',
				padding: '0px',
				layout: 'hbox',
				items: [{
					xtype: 'combobox',
					fieldLabel: 'Último Grado Escolar',
					itemId: 'cbbUltimoGradoEscolar_Grado',
					width: 270,
					store: 'StoreUltimoGrado',
					queryMode: 'local',
					allowBlank: false,
					displayField: 'descripcion',
					valueField: 'descripcion',
//					editable: false,
					fieldStyle: 'font-size:10px;color:#213DA9;font-weight:bold;',
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