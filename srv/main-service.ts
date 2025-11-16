import cds from "@sap/cds";
import { Employees } from "#cds-models/MainService";

export class MainService extends cds.ApplicationService {
    async init() {

        const sfecService = await cds.connect.to('PersonalInformation');

        this.on('READ', Employees, (req) => {
            return sfecService.run(req.query);
        })

        return super.init();
    }
}