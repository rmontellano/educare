Ext.application({

	views: [
    ],
	controllers: [
        'MainController'
    ],
	stores: [
		'catalogos.Grados'
    ],
	model:  [
    ],

    name: 'EducareV2',

    launch: function() {
        var _appGlobal = this;
        var _usrLogin = undefined;
        Ext.create('EducareV2.view.display.Viewport');
    }

});
