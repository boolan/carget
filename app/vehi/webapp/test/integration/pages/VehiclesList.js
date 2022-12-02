sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'kbu.carget.vehi',
            componentId: 'VehiclesList',
            entitySet: 'Vehicles'
        },
        CustomPageDefinitions
    );
});