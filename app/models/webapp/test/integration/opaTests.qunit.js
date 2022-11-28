sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'kbu/models/test/integration/FirstJourney',
		'kbu/models/test/integration/pages/ModelsList',
		'kbu/models/test/integration/pages/ModelsObjectPage'
    ],
    function(JourneyRunner, opaJourney, ModelsList, ModelsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('kbu/models') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheModelsList: ModelsList,
					onTheModelsObjectPage: ModelsObjectPage
                }
            },
            opaJourney.run
        );
    }
);