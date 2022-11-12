using kbu.carget as ns from '../db/carget-model';
using sap.common as common;

service CargetService {

  entity Vehicles as projection on ns.Vehicles;
    annotate Vehicles with @odata.draft.enabled;

  entity Bookings as projection on ns.Bookings;
    annotate Bookings with @odata.draft.enabled;

  entity Models   as projection on ns.Models;  
    annotate Models with @odata.draft.enabled;
    
  entity Currencies as projection on common.Currencies;
}