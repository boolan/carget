namespace kbu.carget;
using { Country, Currency, managed, cuid } from '@sap/cds/common';
using sap.common as common;

type Color : String enum {
  Black; Blue; Gray; Green; Red; White;
}

type TUsername      : String(10);
type TMake          : String(10);
type TManufact      : String(15);
type TModel         : String(25);
type TDailyRate     : Decimal(7,2);
type TPlate         : String(10);

entity Bookings : cuid, managed {
    customer_id             : Integer;    
    booking_status          : Integer;
    booked_from             : DateTime;
    booked_to               : DateTime;
    vehicle                 : Association to Vehicles;
}


entity Vehicles : cuid, managed {
    plate                   : TPlate;
    color                   : Color;
    mileage                 : Decimal(7, 1);
    mileage_unit            : String(2);
    daily_rate              : TDailyRate;
    currency                : Currency;
    last_overhaul           : Date;
    next_overhaul           : Date;
    bookings                : Association to many Bookings on bookings.vehicle = $self;  
    model                   : Association to Models
}

entity Models : cuid, managed {
    model                   : TModel;
    description             : String(50);
    daily_rate              : TDailyRate;
    currency                : Currency;
    vehicles                : Association to many Vehicles on vehicles.model = $self
}














