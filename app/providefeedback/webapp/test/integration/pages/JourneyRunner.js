sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"providefeedback/test/integration/pages/FeedbacksObjectPage"
], function (JourneyRunner, FeedbacksObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('providefeedback') + '/test/flp.html#app-preview',
        pages: {
			onTheFeedbacksObjectPage: FeedbacksObjectPage
        },
        async: true
    });

    return runner;
});

