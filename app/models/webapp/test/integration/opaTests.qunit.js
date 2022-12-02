sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'kbu/carget/models/test/integration/FirstJourney',
		'kbu/carget/models/test/integration/pages/ModelsList',
		'kbu/carget/models/test/integration/pages/ModelsObjectPage'
    ],
    function(JourneyRunner, opaJourney, ModelsList, ModelsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('kbu/carget/models') + '/index.html'
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