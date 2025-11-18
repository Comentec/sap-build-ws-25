using {
    sap.common.CodeList as CodeList,
                           cuid,
                           managed
} from '@sap/cds/common';
using {ext} from '../srv/external';

namespace data.model;

entity CoreValues : CodeList {
    key code : String;
}

entity Feedbacks : cuid, managed {
    reporter  : Association to ext.simple.Employees;
    subject   : Association to ext.simple.Employees;
    comment   : LargeString;
    coreValue : Association to CoreValues;
}
