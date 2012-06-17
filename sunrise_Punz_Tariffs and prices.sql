select
sunrise_registry.icp,distpricecat, sunrise_eiep1.retailer,  reportmonth, fixedvariable,tariffs.Price as 'Ret Tariff',
sunrise_eiep1.pricecode, pricerate
from sunrise_eiep1 inner join tariffs on tariffs.code = sunrise_eiep1.pricecode 
and (sunrise_eiep1.startdate > tariffs.StartDate and sunrise_eiep1.startdate < date_add(tariffs.StartDate,interval 1 year)) inner join sunrise_registry on sunrise_registry.icp = sunrise_eiep1.icp where sunrise_eiep1.retailer = 'PUNZ'