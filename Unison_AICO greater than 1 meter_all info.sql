select   
    unison_registry.icp, distpricecat,unison_eiep1.startdate,unison_eiep1.enddate,  unison_eiep1.reportmonth,    unison_eiep1.unittype,    unison_eiep1.units,unison_eiep1.status, unison_eiep1.fixedvariable,
    unison_eiep1.chargeabledays,    unison_eiep1.pricecode,    unison_eiep1.pricerate,    unison_eiep1.charge,
     unison_eiep1.retailer,unison_registry.retailer as 'Current Retailer',metercontact,chargeablecapacity,     addressnumber,  
     addressstreet,    addresstown, reference ,addressuserref,   icpstatus,    category,    metertypehhr,    ami,
    meterregister
    
 from unison_eiep1 inner join unison_registry on unison_registry.icp = unison_eiep1.icp

where unison_eiep1.pricecode like '%AICO'
and unison_registry.meterregister > 1


order by unison_eiep1.reportmonth desc