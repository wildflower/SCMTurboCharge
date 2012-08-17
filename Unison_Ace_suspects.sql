SELECT 
    unison_registry.icp,    unison_eiep1.reportmonth,    unison_eiep1.units,    unison_eiep1.status,    unison_eiep1.retailer,    metercontact,
    unison_eiep1.pricecode,    unison_eiep1.pricerate,    unison_eiep1.charge,    addressuserref,    addressnumber,    addressstreet,
    addresstown,    icpstatus,    metertypenhh,    distpricecat,    category
FROM
    scm.unison_registry
        inner join
    unison_eiep1 ON unison_registry.icp = unison_eiep1.icp
where
unison_eiep1.units = '0'
and unison_eiep1.status = 'RD'
and icpstatus = '2'
and unison_registry.icp in (select distinct registry_events.icp from registry_events where eventType = "TN" and eventDataSummary like "%CTCT,0500%")

     
order by reportmonth desc
  
   
  





 
 

 
 


  







 
 
 