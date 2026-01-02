using {INS.T as INS} from '../db/schema';
using {changetrack as db} from './change-tracking';

service SiteInspection @(path: '/admin') {

    @readonly
    entity GetAttachment       as select from INS.ATTACHMENT;

    @readonly
    entity GetEmployee         as select from INS.EMPLOYEE;

    action   udEdZTYjwE(oPayload: LargeString)                 returns String;
    function GetData()                                         returns String;
    function getNortwindCategory()                             returns String;
    function capView()                                         returns String;

    @readonly
    entity getInspectionTeam   as select from INS.INSPECTIONTEAM;

    @readonly
    entity GetCreateAudit      as select from INS.AUDITLOG;

    @readonly
    entity getSiteInspection   as select from INS.SITEINSPECTION;

    type ids {
        ID : Integer;
    };

    function CryptoJS(value: LargeString)                      returns String;

    function getAttachmentDetails(date: String, insid: String) returns many {
        ATTID   : Integer;
        FILNM   : String;
        FLTYP   : String;
        UPDBYNM : String;
        UPDDT   : DateTime;
        DESTX   : String;
        DMSID   : String;
        INSID   : Integer;
    };

    entity ChangeLogs          as projection on db.DemoSev;

    entity getCorrectiveAction as select from INS.CORRECTIVEACTIONCAL
}

// service MyService {

//     entity ChangeLogs as projection on db.DemoSev;

// }
