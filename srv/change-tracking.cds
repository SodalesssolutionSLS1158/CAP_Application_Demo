namespace changetrack;
using {INS as my} from '../db/schema';


using {
    cuid,
    managed
} from '@sap/cds/common';


annotate my.T.INSPECTIONTEAM with {
    DESCP @changelog;
    EMPNM @changelog;
}

entity DemoSev : cuid, managed {
    MYID : Integer
}
annotate changetrack.DemoSev with {
    MYID @changelog;
}
