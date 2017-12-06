Ext.define('EducareV2.view.display.ToolBarUp', {
    extend: 'Ext.panel.Panel',
    alias: 'widget.toolBarUp',

    initComponent: function() {
        this.dockedItems = [{
            xtype: 'container',
            layout: {
                type: 'hbox',
                align: 'middle'
            },
            height: 50,
            
                items: [{
                    xtype: 'component',
                    itemId: 'toolbar',
                    tpl: '<div id="session"><table class="tbl-session"><tbody><tr><td>Usuario:</td><td>{usuario}.</td></tr><tr><td>Nombre:</td><td>{nombreUsuario}.</td></tr></tbody></table></div>'
                
                }]
            
        }];
        
        this.callParent();
    },
    
    update: function(record) {
        var data = record ? record.data : {};
        this.down('#toolbar').update(data);
        this.callParent([data]);
    }
});