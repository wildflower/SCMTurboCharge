SELECT 
    sunrise_registry.icp,
    addressuserref,
    addressnumber,
    addressstreet,
    addresstown,    
    icpstatus,
    category,
    metertypehhr,
    ami,
    meterregister,
    distpricecat,
	enddate,
    sunrise_eiep1.reportmonth,
    sunrise_eiep1.units, 
  sunrise_eiep1.chargeabledays,
    sunrise_eiep1.status,
    sunrise_eiep1.retailer,
    sunrise_eiep1.pricecode,
    sunrise_eiep1.pricerate,
    sunrise_eiep1.charge       
   
FROM
    scm.sunrise_registry
inner join sunrise_eiep1 on sunrise_registry.icp = sunrise_eiep1.icp
where     
 
 category = '2'
and reportmonth > '200701'
and sunrise_eiep1.icp = '1000015752BPC71'
order by sunrise_eiep1.reportmonth desc


 
 
 
  
    







 
 
 