namespace INS;


context T {

    @cds.persistence.exists
    @cds.persistence.calcview
    @title           : 'Employee List'
    @Core.Description: 'Employee List to show User'
    @UI.headerInfo   : {
        typeName      : 'Employee',
        typeNamePlural: 'Employees',
        title         : { type : 'Standard', value: 'EMPNM' },
        description   : { value: 'EMPID' }
    }
    entity EMPLOYEE {
        @UI.Hidden
        key EMUNQ : Integer @title: 'Employee Table Unique Id';

        @UI.lineItem:       [{ position: 50, label: 'Employee ID'}]
        @UI.identification: [{ position: 50, label: 'Employee ID'}]
        EMPID : String(100)  @title: 'Employee ID';

        @UI.lineItem:       [{ position: 20, label: 'Employee Name' }]
        @UI.identification: [{ position: 20, label: 'Employee Name' }]
        EMPNM : String(100)  @title: 'Employee Name';

        @UI.lineItem:       [{ position: 30, label: 'Department' }]
        @UI.identification: [{ position: 30, label: 'Department' }]
        DEPID : String(10)  @title: 'Department';

        @UI.Hidden
        ISDEL : Integer;  

        atNzxtYkNnmXsH42 : Association to many ATTACHMENT
            on atNzxtYkNnmXsH42.UPDBY = EMPID  @title: 'Attachment Navigation';
    }

    @cds.persistence.exists
    @cds.persistence.calcview
    entity ATTACHMENT {
       
        @UI.lineItem: [ { position: 9, label: 'Unique ID' } ]
        key ATTID : Integer @title: 'Unique ID';

        @UI.lineItem: [ { position: 10, label: 'File Name' } ]
        FILNM : String(100);

        @UI.lineItem: [ { position: 20, label: 'File Type' } ]
        FLTYP : String(100);

        @UI.lineItem: [ { position: 30, label: 'Uploaded By' } ]
        UPDBY : String(100);

        @UI.lineItem: [ { position: 40, label: 'Upload Date' } ]
        UPDDT : Date;

        @UI.lineItem: [ { position: 50, label: 'Description' } ]
        DESTX : String(1000);

        @UI.lineItem: [ { position: 60, label: 'DMS ID' } ]
        DMSID : String(100);

        @UI.Hidden
        ISDEL : Integer;
        EMPNM : String(100);
    }
}
