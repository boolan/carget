using CargetService as service from '../../srv/carget-model';

annotate service.Models with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'model',
            Value : model,
        },
        {
            $Type : 'UI.DataField',
            Label : 'description',
            Value : description,
        },
        {
            $Type : 'UI.DataField',
            Label : 'daily_rate',
            Value : daily_rate,
        },
        {
            $Type : 'UI.DataField',
            Value : currency_code,
        },
    ]
);
annotate service.Models with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'model',
                Value : model,
            },
            {
                $Type : 'UI.DataField',
                Label : 'description',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'daily_rate',
                Value : daily_rate,
            },
            {
                $Type : 'UI.DataField',
                Value : currency_code,
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
    ]
);
