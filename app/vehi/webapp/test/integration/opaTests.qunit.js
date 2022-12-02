sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'kbu/carget/vehi/test/integration/FirstJourney',
		'kbu/carget/vehi/test/integration/pages/VehiclesList',
		'kbu/carget/vehi/test/integration/pages/VehiclesObjectPage'
    ],
    function(JourneyRunner, opaJourney, VehiclesList, VehiclesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('kbu/carget/vehi') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheVehiclesList: VehiclesList,
					onTheVehiclesObjectPage: VehiclesObjectPage
                }
            },
            opaJourney.run
        );
    }
);