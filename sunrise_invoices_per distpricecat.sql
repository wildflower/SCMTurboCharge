 select sunrise_invoice.icp,distpricecat,sunrise_registry.retailer,category,metertypenhh,chargeablecapacity,reference, 
 sunrise_invoice.reportmonth, sunrise_invoice.startdate, sunrise_invoice.enddate, sunrise_eiep1.fixedvariable,
 sunrise_invoice.pricecode, sunrise_invoice.pricerate, sunrise_invoice.units as "Inv Units",
 sunrise_eiep1.units as "Retailer Units", sunrise_invoice.charge as "Inv Charge", sunrise_eiep1.charge as "Retailer Charge" 
 
 
 
 from sunrise_invoice left join sunrise_eiep1 on sunrise_eiep1.icp = sunrise_invoice.icp 
 and sunrise_eiep1.reportmonth = sunrise_invoice.reportmonth 
 and sunrise_eiep1.pricecode = sunrise_invoice.pricecode 
 and sunrise_eiep1.startdate = sunrise_invoice.startdate inner join sunrise_registry on sunrise_registry.icp=sunrise_invoice.icp 
 
 
 
 where distpricecat in  ('NMDU','NMDR')
 
 and sunrise_eiep1.fixedvariable= 'V'
  
  
  
 order by icp, reportmonth desc
 