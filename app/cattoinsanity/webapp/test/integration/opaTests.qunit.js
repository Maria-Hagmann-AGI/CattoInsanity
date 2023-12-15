sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'cattoinsanity/test/integration/FirstJourney',
		'cattoinsanity/test/integration/pages/CatsList',
		'cattoinsanity/test/integration/pages/CatsObjectPage'
    ],
    function(JourneyRunner, opaJourney, CatsList, CatsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('cattoinsanity') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCatsList: CatsList,
					onTheCatsObjectPage: CatsObjectPage
                }
            },
            opaJourney.run
        );
    }
);