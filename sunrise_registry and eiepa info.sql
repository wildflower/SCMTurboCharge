<<<<<<< HEAD
SELECT 
    sunrise_registry.icp, distpricecat,sunrise_eiep1.startdate,sunrise_eiep1.enddate,  sunrise_eiep1.reportmonth,    sunrise_eiep1.unittype,    sunrise_eiep1.units,sunrise_eiep1.status, sunrise_eiep1.fixedvariable,
    sunrise_eiep1.chargeabledays,    sunrise_eiep1.pricecode,    sunrise_eiep1.pricerate,    sunrise_eiep1.charge,
     sunrise_eiep1.retailer,sunrise_registry.retailer as 'Current Retailer',metercontact,chargeablecapacity,     addressnumber,  
     addressstreet,    addresstown, reference ,addressuserref,   icpstatus,    category,    metertypehhr,    ami,
    meterregister
FROM
    scm.sunrise_registry
        inner join
    sunrise_eiep1 ON sunrise_registry.icp = sunrise_eiep1.icp
    where  sunrise_eiep1.icp ='1000015752BPC71'

    order by sunrise_eiep1.reportmonth desc

    









  

    
     
     

 
    
     
    
 

 
  
  
    







 
 
=======
SELECT 
    sunrise_registry.icp,    distpricecat,    sunrise_eiep1.startdate,    sunrise_eiep1.enddate,    sunrise_eiep1.reportmonth,    sunrise_eiep1.unittype,
    sunrise_eiep1.units,    sunrise_eiep1.status,    sunrise_eiep1.fixedvariable,    sunrise_eiep1.chargeabledays,    sunrise_eiep1.pricecode,
    sunrise_eiep1.pricerate,    sunrise_eiep1.charge,    sunrise_eiep1.retailer,
    sunrise_registry.retailer AS 'Current Retailer',
    metercontact,    chargeablecapacity,    addressnumber,    addressstreet,    addresstown,    reference,    addressuserref,    icpstatus,
    category,    metertypehhr,    metertypenhh,    ami,    meterregister
FROM
    scm.sunrise_registry
        INNER JOIN
    sunrise_eiep1 ON sunrise_registry.icp = sunrise_eiep1.icp
WHERE
    sunrise_eiep1.icp = '1000015881BP2FC'
     
  
    



ORDER BY sunrise_eiep1.reportmonth DESC

    









  

    
     
     

 
    
     
    
 

 
  
  
    







 
 
>>>>>>> commit
 