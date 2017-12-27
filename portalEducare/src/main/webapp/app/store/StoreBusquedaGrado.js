Ext.define('EducareV2.store.StoreBusquedaGrado', {
    extend: 'Ext.data.Store',
    requires: 'EducareV2.model.ModelBusquedaGrado',
    model: 'EducareV2.model.ModelBusquedaGrado',
    autoLoad: false
});