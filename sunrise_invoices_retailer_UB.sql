select 
sunrise_invoice.icp,distpricecat,
 sunrise_invoice.retailer as 'Invoiced Retailer', sunrise_eiep1.retailer as 'Submitted retailer',
 category,metertypenhh,  
 sunrise_invoice.reportmonth,
 sunrise_invoice.startdate as 'Inv startdate', sunrise_invoice.enddate as 'Inv enddate',
 sunrise_eiep1.startdate as 'Ret startdate', sunrise_eiep1.enddate as 'Ret enddate', 
  
   
 sunrise_invoice.pricecode as 'Inv pricecode',sunrise_eiep1.pricecode as 'Ret pricecode',
 sunrise_invoice.pricerate as 'INV pricerate',sunrise_eiep1.pricerate as 'RET pricerate',
 sunrise_invoice.units as 'Inv Units', sunrise_eiep1.units as 'Retailer Units',
 sunrise_invoice.charge as 'Inv Charge', sunrise_eiep1.charge as 'Retailer Charge',  
 chargeablecapacity,reference,sunrise_eiep1.fixedvariable,
  sunrise_invoice.chargeabledays as 'Inv chargeable days', sunrise_eiep1.chargeabledays as 'Ret chargeable days'
 
 from sunrise_invoice left join sunrise_eiep1 on sunrise_eiep1.icp = sunrise_invoice.icp 
 and sunrise_eiep1.reportmonth = sunrise_invoice.reportmonth 
   inner join sunrise_registry on sunrise_registry.icp=sunrise_invoice.icp  
 
 
 where  
 sunrise_invoice.reportmonth = '201204'
  and sunrise_eiep1.retailer = 'PUNZ'   
  and sunrise_invoice.retailer = 'PUNZ'
  and sunrise_eiep1.status = 'UB'
  
  
 order by icp desc
 