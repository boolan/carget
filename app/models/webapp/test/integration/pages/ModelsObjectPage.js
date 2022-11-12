sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'kbu.models',
            componentId: 'ModelsObjectPage',
            entitySet: 'Models'
        },
        CustomPageDefinitions
    );
});