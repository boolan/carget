using CargetService as service from '../../srv/carget-model';

annotate service.Vehicles with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'plate',
            Value : plate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'color',
            Value : color,
        },
        {
            $Type : 'UI.DataField',
            Label : 'mileage',
            Value : mileage,
        },
        {
            $Type : 'UI.DataField',
            Label : 'mileage_unit',
            Value : mileage_unit,
        },
        {
            $Type : 'UI.DataField',
            Label : 'daily_rate',
            Value : daily_rate,
        },
    ]
);
annotate service.Vehicles with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'plate',
                Value : plate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'color',
                Value : color,
            },
            {
                $Type : 'UI.DataField',
                Label : 'mileage',
                Value : mileage,
            },
            {
                $Type : 'UI.DataField',
                Label : 'mileage_unit',
                Value : mileage_unit,
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
            {
                $Type : 'UI.DataField',
                Label : 'last_overhaul',
                Value : last_overhaul,
            },
            {
                $Type : 'UI.DataField',
                Label : 'next_overhaul',
                Value : next_overhaul,
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
