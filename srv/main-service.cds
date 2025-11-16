using {data} from '../db/schema';
using {ext} from './external';

service MainService {
    entity Feedbacks as projection on data.model.Feedbacks;
    entity Employees as projection on ext.simple.Employees; 
}
