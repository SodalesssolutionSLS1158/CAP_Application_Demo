sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"siteinspectionui/test/integration/pages/getSiteInspectionList",
	"siteinspectionui/test/integration/pages/getSiteInspectionObjectPage",
	"siteinspectionui/test/integration/pages/GetAttachmentObjectPage"
], function (JourneyRunner, getSiteInspectionList, getSiteInspectionObjectPage, GetAttachmentObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('siteinspectionui') + '/test/flp.html#app-preview',
        pages: {
			onThegetSiteInspectionList: getSiteInspectionList,
			onThegetSiteInspectionObjectPage: getSiteInspectionObjectPage,
			onTheGetAttachmentObjectPage: GetAttachmentObjectPage
        },
        async: true
    });

    return runner;
});

