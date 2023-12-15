using catsanity as service from '../../srv/catsanity-service';
using from '../../db/schema';

annotate service.Cats with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'name',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'color',
            Value : color,
        },
        {
            $Type : 'UI.DataField',
            Label : 'birthday',
            Value : birthdate,
        },
    ]
);
annotate service.MentalIllnesses with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'name',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'description',
            Value : description,
        },
        {
            $Type : 'UI.DataField',
            Label : 'insanityStage',
            Value : insanityStage,
        },
    ]
);
annotate service.Cats with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'color',
                Value : color,
            },
            {
                $Type : 'UI.DataField',
                Label : 'birthday',
                Value : birthdate,
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
            $Type : 'UI.ReferenceFacet',
            Label : 'mentali',
            ID : 'mentali',
            Target : 'mentalIllnesses/@UI.LineItem#mentali',
        },
    ]
);
annotate service.CatsMentalIllnesses with @(
    UI.LineItem #mentali : [
        {
            $Type : 'UI.DataField',
            Value : mentalIllness.ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : cat.mentalIllnesses.mentalIllness.name,
            Label : 'name',
        },
        {
            $Type : 'UI.DataField',
            Value : mentalIllness.description,
            Label : 'description',
        },]
);
