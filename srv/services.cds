using { INS.T as INS } from '../db/schema';

service SiteInspection {
    
    @readonly
    entity GetAttachment as select from INS.ATTACHMENT;
    @readonly
    entity GetEmployee as select from INS.EMPLOYEE;

    action udEdZTYjwE(oPayload:LargeString) returns String;
    function GetData() returns String;
    function getNortwindCategory() returns String;
    function capView() returns String;
    // entity getInspectionTeam as select from INS.INSPECTIONTEAM;
    entity GetCreateAudit as select from INS.AUDITLOG;
    entity getSiteInspection as select from INS.SITEINSPECTION;
    type ids {
        ID: Integer;
    };
    function CryptoJS(value:LargeString) returns String;

    function getAttachmentDetails(
        date:String,insid:String
    ) returns many {
                                    ATTID   : Integer;
                                    FILNM   : String;
                                    FLTYP   : String;
                                    UPDBYNM : String;
                                    UPDDT   : DateTime;
                                    DESTX   : String;
                                    DMSID   : String;
                                    INSID   : Integer;
                                 };
}