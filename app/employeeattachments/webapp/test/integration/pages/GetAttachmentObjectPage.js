sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'employeeattachments',
            componentId: 'GetAttachmentObjectPage',
            contextPath: '/GetEmployee/atNzxtYkNnmXsH42'
        },
        CustomPageDefinitions
    );
});