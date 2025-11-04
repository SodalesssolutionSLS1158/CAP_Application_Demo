using SiteInspection as service from '../../srv/services';
annotate service.GetEmployee with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : EMUNQ,
            },
            {
                $Type : 'UI.DataField',
                Value : EMPID,
            },
            {
                $Type : 'UI.DataField',
                Value : EMPNM,
            },
            {
                $Type : 'UI.DataField',
                Value : DEPID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ISDEL',
                Value : ISDEL,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Employee Basic Detail',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Attachments',
            ID : 'Attachments',
            Target : 'atNzxtYkNnmXsH42/@UI.LineItem#Attachments',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : EMUNQ,
        },
        {
            $Type : 'UI.DataField',
            Value : EMPID,
        },
        {
            $Type : 'UI.DataField',
            Value : EMPNM,
        },
        {
            $Type : 'UI.DataField',
            Value : DEPID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'ISDEL',
            Value : ISDEL,
        },
    ],
    UI.FieldGroup #attachemntinform : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
    UI.HeaderInfo : {
        TypeNamePlural : 'Employee',
        TypeName : '',
    },
);

annotate service.GetAttachment with @(
    UI.LineItem #Attachments : [
        {
            $Type : 'UI.DataField',
            Value : ATTID,
        },
        {
            $Type : 'UI.DataField',
            Value : DESTX,
            Label : 'DESTX',
        },
        {
            $Type : 'UI.DataField',
            Value : DMSID,
            Label : 'DMSID',
        },
        {
            $Type : 'UI.DataField',
            Value : EMPNM,
            Label : 'EMPNM',
        },
        {
            $Type : 'UI.DataField',
            Value : FILNM,
            Label : 'FILNM',
        },
        {
            $Type : 'UI.DataField',
            Value : FLTYP,
            Label : 'FLTYP',
        },
        {
            $Type : 'UI.DataField',
            Value : UPDBY,
            Label : 'UPDBY',
        },
        {
            $Type : 'UI.DataField',
            Value : UPDDT,
            Label : 'UPDDT',
        },
    ]
);

