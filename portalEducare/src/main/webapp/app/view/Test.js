Ext.define('EducateV2.view.Test', {
    requires: [
        //'Ext.grid.*',
        'Ext.tab.*'
    ],
    extend: 'Ext.tab.Panel',
    alias: 'widget.test',
    cls:'verticaltab',
    tabBar: {
       // width: 340,
       //minTabWidth: 330,
        //maxTabWidth: 330,
        height:20,
        orientation: 'vertical'
    },
    tabPosition: 'left',

    plain: true,
    items:[
        {
            title:'first',
            html:'first'
        },
        {
            title:'second',
            html:'second'
        }
    ]
});