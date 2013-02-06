SELECT 
    unison_registry.icp, distpricecat,unison_eiep1.startdate,unison_eiep1.enddate,  unison_eiep1.reportmonth,    unison_eiep1.unittype,    unison_eiep1.units,unison_eiep1.status, unison_eiep1.fixedvariable,
    unison_eiep1.chargeabledays,    unison_eiep1.pricecode,    unison_eiep1.pricerate,    unison_eiep1.charge,
     unison_eiep1.retailer,unison_registry.retailer as 'Current Retailer',metercontact,chargeablecapacity,     addressnumber,  
     addressstreet,    addresstown, reference ,addressuserref,   icpstatus,    category,    metertypehhr, metertypenhh,   ami,
    meterregister
FROM
    scm.unison_registry
        inner join
    unison_eiep1 ON unison_registry.icp = unison_eiep1.icp
    where  unison_eiep1.units = '0' 
and fixedvariable = 'V'
and unison_eiep1.reportmonth >'201106'
and icpstatus= '2'
 
and unison_registry.retailer = 'PUNZ'
 

    order by unison_eiep1.icp desc