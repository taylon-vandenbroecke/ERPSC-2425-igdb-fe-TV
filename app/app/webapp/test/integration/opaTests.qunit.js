sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'app/test/integration/FirstJourney',
		'app/test/integration/pages/StudentList',
		'app/test/integration/pages/StudentObjectPage',
		'app/test/integration/pages/FavoriteGameObjectPage'
    ],
    function(JourneyRunner, opaJourney, StudentList, StudentObjectPage, FavoriteGameObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('app') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheStudentList: StudentList,
					onTheStudentObjectPage: StudentObjectPage,
					onTheFavoriteGameObjectPage: FavoriteGameObjectPage
                }
            },
            opaJourney.run
        );
    }
);