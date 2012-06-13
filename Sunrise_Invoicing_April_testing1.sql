 select *
 
 #sunrise_invoice.icp,distpricecat,sunrise_registry.retailer,category,metertypenhh,chargeablecapacity,reference, 
 #sunrise_invoice.reportmonth, sunrise_invoice.startdate, sunrise_invoice.enddate,
 #sunrise_invoice.pricecode, sunrise_eiep1.unittype, sunrise_invoice.pricerate as 'Inv price rate',   sunrise_eiep1.pricerate as 'Retailer pricerate',
 #sunrise_invoice.units as "Inv Units",sunrise_eiep1.units as "Retailer Units", sunrise_invoice.charge as "Inv Charge", sunrise_eiep1.charge as "Retailer Charge" 
  
 from sunrise_invoice left join sunrise_eiep1 on sunrise_eiep1.icp = sunrise_invoice.icp 
 #and sunrise_eiep1.reportmonth = sunrise_invoice.reportmonth 
 #and sunrise_eiep1.pricecode = sunrise_invoice.pricecode 
 #and sunrise_eiep1.startdate = sunrise_invoice.startdate
  inner join sunrise_registry on sunrise_registry.icp=sunrise_invoice.icp  
 
 where  sunrise_invoice.reportmonth= '201204'
 and sunrise_eiep1.retailer = 'PUNZ'
 and sunrise_eiep1.icp = '1000000004BP535'

  
# order by sunrise_eiep1.icp desc
 
#  and sunrise_eiep1.startdate = sunrise_invoice.startdate
 