SELECT 
    champion_registry.icp,champion_eiep1.startdate,champion_eiep1.enddate,    champion_eiep1.reportmonth,   champion_eiep1.units,    champion_eiep1.status,    champion_eiep1.retailer,
    metercontact,    champion_eiep1.pricecode,    champion_eiep1.fixedvariable,    champion_eiep1.pricerate,    champion_eiep1.charge,champion_eiep1.chargeabledays,
    champion_registry.retailer as 'current retailer' , distpricecat,    category, meterregister, metermultiplier,
    addressuserref,    addressnumber,    addressstreet,    addresstown,    icpstatus,    metertypenhh
    
FROM
    champion_registry         inner join
    champion_eiep1 ON champion_registry.icp = champion_eiep1.icp
where
          champion_eiep1.icp= '0000146787WA731' /* this icp # can be updated to another icp # */
          
          and fixedvariable = 'V' /*this can be removed from the query if the daily fixed charge needs to be checked */
          
 
     order by champion_eiep1.enddate desc /*this can be changed to reportmonth, the results can vary if the submission is altered at a later date 
                                             and reported in a differnt month */

     


 
    
 


       
  
   
  





 
 

 
 


  







 
 
 