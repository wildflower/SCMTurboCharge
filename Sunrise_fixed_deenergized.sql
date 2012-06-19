 select
 sunrise_invoice.icp,distpricecat, sunrise_registry.icpstatus,  sunrise_registry.icpstatusreason,
 registry_events.eventDate,registry_events.eventType,registry_events.eventDataSummary,
 sunrise_invoice.retailer as 'Invoiced Retailer', sunrise_eiep1.retailer as 'Submitted retailer',
 category,metertypenhh,   sunrise_invoice.reportmonth,
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
 and sunrise_eiep1.pricecode = sunrise_invoice.pricecode 
 inner join sunrise_registry on sunrise_registry.icp=sunrise_invoice.icp   
 inner join registry_events on sunrise_registry.icp=registry_events.icp 
 
 where   sunrise_invoice.reportmonth > '201201'  
  and sunrise_eiep1.retailer = 'PUNZ'
  and  sunrise_eiep1.fixedvariable = 'F' 
  and sunrise_registry.icpstatus ='3'
  and registry_events.eventType = 'status'
  
   #and registry_events.eventDataSummary like '%1,4%'  vacant deenergized
    #and registry_events.eventDataSummary like '%3,2%' ...decommissioned
   #and registry_events.eventDataSummary like '%3,3%' ...amalgamated 
   
 order by icp desc
 