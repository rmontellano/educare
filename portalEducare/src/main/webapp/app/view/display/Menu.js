Ext.define('EducareV2.view.display.Menu',{
    extend: 'Ext.panel.Panel',
    //requires: 'EducareV2.view.Test',
    xtype: 'menuLateral',
    
    
    //floatable: true,
    //split: true,
    items: [{
            title: 'Catalogos',
            items: [{
                xtype: 'button',
                plain: true,
                text: 'Alumnos',
                width: '100%'
            },{
                xtype: 'button',
                plain: true,
                text: 'Empleados',
                width: '100%'
            },{
                xtype: 'button',
                plain: true,
                text: 'Ciclo',
                width: '100%'
            },{
                xtype: 'button',
                plain: true,
                id: 'btnGrados',
                text: 'Grados',
                width: '100%'
            },{
                xtype: 'button',
                plain: true,
                text: 'Grupos',
                width: '100%'
            },{
                xtype: 'button',
                plain: true,
                text: 'Salones',
                width: '100%'
            },{
                xtype: 'button',
                plain: true,
                text: 'Materias',
                width: '100%'
            },{
                xtype: 'button',
                plain: true,
                text: 'Puestos',
                width: '100%'
            },{
                xtype: 'button',
                plain: true,
                text: 'Criterios de Evaluación',
                width: '100%'
            },{
                xtype: 'button',
                plain: true,
                text: 'Grupos Especiales',
                width: '100%'
            },{
                xtype: 'button',
                plain: true,
                text: 'Cambio de Grupos',
                width: '100%'
            },{
                xtype: 'button',
                plain: true,
                text: 'Avisos y Comentarios',
                width: '100%'
            }]
        }, {
            title: 'Horarios',
            items: [{
                xtype: 'button',
                
                text: 'Creación de horarios',
                width: '100%'
            }]
        }, {
            title: 'Registro de Calificaciones',
            html: 'MENU 1 <BR> MENU 2'
        }, {
            title: 'Reportes',
            html: 'MENU 1 <BR> MENU 2'
        }, {
            title: 'Utilerias',
            html: 'MENU 1 <BR> MENU 2'
        }]
});