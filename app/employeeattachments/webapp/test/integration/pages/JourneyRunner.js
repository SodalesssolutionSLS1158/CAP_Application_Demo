sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"employeeattachments/test/integration/pages/GetEmployeeList",
	"employeeattachments/test/integration/pages/GetEmployeeObjectPage",
	"employeeattachments/test/integration/pages/GetAttachmentObjectPage"
], function (JourneyRunner, GetEmployeeList, GetEmployeeObjectPage, GetAttachmentObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('employeeattachments') + '/test/flp.html#app-preview',
        pages: {
			onTheGetEmployeeList: GetEmployeeList,
			onTheGetEmployeeObjectPage: GetEmployeeObjectPage,
			onTheGetAttachmentObjectPage: GetAttachmentObjectPage
        },
        async: true
    });

    return runner;
});

