 select sunrise_registry.icp, units, pricecode, pricerate
 from scm.sunrise_eiep1  
 INNER JOIN scm.sunrise_registry on scm.sunrise_registry.icp = scm.sunrise_eiep1.icp 
 where  pricecode = 'HET012'
 and sunrise_registry.icpstatus = 2
 and reportmonth >   '201107'
 
 order by 'startdate'

 
 
  
  
  