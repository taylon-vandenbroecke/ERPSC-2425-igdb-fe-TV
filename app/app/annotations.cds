using GameService as service from '../../srv/game-service';

annotate service.Student with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Student_ID',
            Value : Student_ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'First_name',
            Value : First_name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Last_name',
            Value : Last_name,
        },
    ],
    UI.Identification : [
        {
            $Type : 'UI.DataFieldForIntentBasedNavigation',
            SemanticObject : 'Back',
            Action : 'Display',
            Label : 'Back',
        },
    ],
);
annotate service.Student with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'First_name',
                Value : First_name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Last_name',
                Value : Last_name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Student_ID',
                Value : Student_ID,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Favorite games',
            ID : 'Fav',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Games',
                    ID : 'Favos',
                    Target : 'to_favos/@UI.LineItem#Favos',
                },
            ],
        },
    ]
);
annotate service.Student with @odata.draft.enabled;
annotate service.FavoriteGame with @(
    UI.LineItem #Favorites : [
        {
            $Type : 'UI.DataField',
            Value : to_game.Name,
            Label : 'Name',
        },
    ],
    UI.LineItem #Favos : [
        {
            $Type : 'UI.DataField',
            Value : to_game.Name,
            Label : 'Name',
        },
        {
            $Type : 'UI.DataField',
            Value : to_game.Cover_url,
            Label : 'Cover_url',
        },
        {
            $Type : 'UI.DataField',
            Value : to_game.Publisher,
            Label : 'Publisher',
        },
        {
            $Type : 'UI.DataField',
            Value : to_game.Genre,
            Label : 'Genre',
        },
        {
            $Type : 'UI.DataField',
            Value : to_game.Platform,
            Label : 'Platform',
        },
        {
            $Type : 'UI.DataField',
            Value : to_game.Release_date,
            Label : 'Release_date',
        },
    ],
);

annotate service.Game with {
    Cover_url @UI.IsImageURL : true
};

