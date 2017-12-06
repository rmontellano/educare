Ext.define('EducareV2.store.catalogos.Grados', {
    extend: 'Ext.data.Store',
    model: 'EducareV2.model.catalogos.Grados',
    autoLoad: false,
	proxy: {
        type: 'ajax',
        url: '/portalEducare/ObtenerGrado?q=31323334335l31353030333437373633&s=btg',
        timeout: 30000,
        reader: {
            type: 'json',
            root: 'grados'
        },
        actionMethods: {
            read: 'POST'
        }
    }
});