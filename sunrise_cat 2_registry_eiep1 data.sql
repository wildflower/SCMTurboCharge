SELECT  

sunrise_registry.icp,
    addressuserref,
    addressnumber,
    addressstreet,
    addresstown,    
    icpstatus,
    category,
    metertypehhr,
    metertypenhh,
    metertypeunm,
    ami,
    dailyunmeteredkwh,
    unmeteredretailer,
    meteruserref,
    icpstatus,
  sunrise_eiep1.reportmonth,
    sunrise_eiep1.units,    
    sunrise_eiep1.status,
    sunrise_eiep1.retailer,
    sunrise_eiep1.pricecode,
    sunrise_eiep1.pricerate,
    sunrise_eiep1.charge   

from scm.sunrise_registry
inner join sunrise_eiep1 on sunrise_registry.icp = sunrise_eiep1.icp
where category= '2'
order by
sunrise_registry.icp



 