using {PersonalInformation as sfec} from './PersonalInformation';

namespace ext.simple;

entity Employees as
    projection on sfec.PerPersonal {
        key personIdExternal as ID,
            firstName,
            lastName,
            displayName
    }
