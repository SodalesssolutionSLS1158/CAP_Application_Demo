using { INS.T as INS } from '../db/schema';

service SiteInspection {
    
    @readonly
    entity GetAttachment as select from INS.ATTACHMENT;
    @readonly
    entity GetEmployee as select from INS.EMPLOYEE;

    action udEdZTYjwE(oPayload:LargeString) returns String;
    function GetData() returns String;

}