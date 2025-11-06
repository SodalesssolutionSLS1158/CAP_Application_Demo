using SiteInspection as service from '../../srv/services';
annotate service.getSiteInspection with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'INSID',
                Value : INSID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'REPBY',
                Value : REPBY,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FACID',
                Value : FACID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DEPID',
                Value : DEPID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AREAT',
                Value : AREAT,
            },
            {
                $Type : 'UI.DataField',
                Label : 'INSLD',
                Value : INSLD,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SHIFT',
                Value : SHIFT,
            },
            {
                $Type : 'UI.DataField',
                Label : 'INSDT',
                Value : INSDT,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BULCL',
                Value : BULCL,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SICID',
                Value : SICID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'POSCT',
                Value : POSCT,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TOTSA',
                Value : TOTSA,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TOTNI',
                Value : TOTNI,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TOTNA',
                Value : TOTNA,
            },
            {
                $Type : 'UI.DataField',
                Label : 'REPBYNM',
                Value : REPBYNM,
            },
            {
                $Type : 'UI.DataField',
                Label : 'INSLDNM',
                Value : INSLDNM,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'INSID',
            Value : INSID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'REPBY',
            Value : REPBY,
        },
        {
            $Type : 'UI.DataField',
            Label : 'FACID',
            Value : FACID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'DEPID',
            Value : DEPID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'AREAT',
            Value : AREAT,
        },
    ],
);

annotate service.getSiteInspection with {
    REPBY @(
        UI.MultiLineText : true,
        Common.FieldControl : #Mandatory,
    )
};

annotate service.getSiteInspection with {
    FACID @UI.MultiLineText : true
};

annotate service.getSiteInspection with {
    DEPID @UI.MultiLineText : true
};

