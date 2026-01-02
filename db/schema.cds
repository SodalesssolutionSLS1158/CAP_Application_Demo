namespace INS;


context T {

    @cds.persistence.exists
    @cds.persistence.calcview
    @title           : 'Employee List'
    @Core.Description: 'Employee List to show User'
    @UI.headerInfo   : {
        typeName      : 'Employee',
        typeNamePlural: 'Employees',
        title         : {
            type : 'Standard',
            value: 'EMPNM'
        },
        description   : {value: 'EMPID'}
    }
    entity EMPLOYEE {
            @UI.Hidden
        key EMUNQ            : Integer     @title: 'Employee Table Unique Id';

            @UI.lineItem      : [{
                position: 50,
                label   : 'Employee ID'
            }]
            @UI.identification: [{
                position: 50,
                label   : 'Employee ID'
            }]
            EMPID            : String(100) @title: 'Employee ID';

            @UI.lineItem      : [{
                position: 20,
                label   : 'Employee Name'
            }]
            @UI.identification: [{
                position: 20,
                label   : 'Employee Name'
            }]
            EMPNM            : String(100) @title: 'Employee Name';

            @UI.lineItem      : [{
                position: 30,
                label   : 'Department'
            }]
            @UI.identification: [{
                position: 30,
                label   : 'Department'
            }]
            DEPID            : String(10)  @title: 'Department';

            @UI.Hidden
            ISDEL            : Integer;

            atNzxtYkNnmXsH42 : Association to many ATTACHMENT
                                   on atNzxtYkNnmXsH42.UPDBY = EMPID
                                           @title: 'Attachment Navigation';
    }

    @cds.persistence.exists
    @cds.persistence.calcview
    entity ATTACHMENT {
        key ATTID : Integer @title: 'Unique ID';
            FILNM : String(100);
            FLTYP : String(100);
            UPDBY : String(100);
            UPDDT : Date;
            DESTX : String(1000);
            DMSID : String(100);
            ISDEL : Integer;
            EMPNM : String(100);
            INSID : Integer;
    }

    @cds.persistence.exists
    @cds.persistence.calcview
    @readonly
    entity INSPECTIONTEAM {
        INSTID : Integer;
        INTEID : String(100);
        DESCP  : String(1000);
        // ISDEL  : String(1);
        INSID  : Integer;
        EMPNM  : String(100);
        EMPID  : String(100);
    }

    entity AUDITLOG {
        key AUDID : Integer;
            SECUP : String(500);
            UPDDT : String(500);
            UPDBY : String(500);
            ISDEL : String(1);
    }

    @cds.persistence.exists
    @cds.persistence.calcview
    entity ATTACHMENTVIEW {
        key ATTID : Integer @title: 'Unique ID';
            FILNM : String(100);
            FLTYP : String(100);
            UPDBY : String(100);
            UPDDT : Date;
            DESTX : String(1000);
            DMSID : String(100);
            ISDEL : Integer;
            INSID : Integer;
    }

    @cds.persistence.exists
    @cds.persistence.calcview
    entity SITEINSPECTION {
        key INSID          : Integer;
            REPBY          : String(100);
            FACID          : String(10);
            DEPID          : String(10);
            AREAT          : String(100);
            INSLD          : String(100);
            SHIFT          : String(10);
            INSDT          : Date;
            BULCL          : String(100);
            SICID          : String(10);
            POSCT          : String(5000);
            TOTSA          : String(100);
            TOTNI          : String(100);
            TOTNA          : String(100);
            REPBYNM        : String(100);
            INSLDNM        : String(100);
            Attachments    : Association to many ATTACHMENT
                                 on Attachments.INSID = INSID
                             @title: 'Attachment Navigation';
            InspectionTeam : Association to many INSPECTIONTEAM
                                 on InspectionTeam.INSID = INSID
                             @title: 'Inspection Team Navigation';
            CorrectiveAction:Association to many CORRECTIVEACTIONCAL on CorrectiveAction.INSID = INSID
    }

    @cds.persistence.exists
    @cds.persistence.calcview
    @readonly
    entity CORRECTIVEACTIONCAL {
        key CAID  : Integer;
            INSID : Integer;
            CAASN : String(100);
            CASTS : String(100);
            COMDT : Date;
            NOTES : String(5000);
            CREBY : String(100);
            CREDT : Date;
    }

}
