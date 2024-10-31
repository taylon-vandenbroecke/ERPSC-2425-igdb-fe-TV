using {sap.igdbfe.cap as my} from '../db/schema';

service FlightService {
  entity Game    as projection on my.Game;
  entity Student as projection on my.Student;
}
