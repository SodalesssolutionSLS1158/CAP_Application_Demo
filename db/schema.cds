namespace INS;

// using {managed} from '@sap/cds/common';

context T {


    @cds.persistence.exists
    @cds.persistence.calcview
    entity EMPLOYEE {
        key EMUNQ : Integer;
            EMPID : String(100);
            EMPNM : String(100);
            DEPID : String(10);
            ISDEL : Integer;
            atNzxtYkNnmXsH42 : Association to many ATTACHMENT
                                   on atNzxtYkNnmXsH42.UPDBY = EMPID;
    }

    @cds.persistence.exists
    @cds.persistence.calcview
    entity ATTACHMENT {
        key ATTID            : Integer      @title: 'ATTID: Unique id';
            FILNM            : String(100)  @title: 'FILNM: FILNM';
            FLTYP            : String(100)  @title: 'FLTYP: FLTYP';
            UPDBY            : String(100)  @title: 'UPDBY: UPDBY';
            UPDDT            : Date         @title: 'UPDDT: UPDDT';
            DESTX            : String(1000) @title: 'DESTX: DESTX';
            DMSID            : String(100)  @title: 'DMSID: DMSID';
            ISDEL            : Integer      @title: 'ISDEL: ISDEL';
            EMPNM            : String(100)  @title: 'EMPNM: EMPNM';
            
    }
}
