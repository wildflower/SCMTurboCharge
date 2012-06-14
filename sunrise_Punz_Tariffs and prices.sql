select
icp,retailer, reportmonth, tariffs.Price as 'Tariff',
sunrise_eiep1.pricecode, pricerate
from sunrise_eiep1 inner join tariffs on tariffs.code = sunrise_eiep1.pricecode 
and (sunrise_eiep1.startdate > tariffs.StartDate and sunrise_eiep1.startdate < date_add(tariffs.StartDate,interval 1 year)) where retailer = 'PUNZ'