select 
    sunrise_registry.icp,  
 


format(sum(kwh*(1-abs(sign(left(reportmonth,4)-2008)))),0) as 'sum 08',

format(sum(kwh*(1-abs(sign(left(reportmonth,4)-2009)))),0) as 'sum 09',
 concat(format((sum(kwh*(1-abs(sign(left(reportmonth,4)-2009))))-sum(kwh*(1-abs(sign(left(reportmonth,4)-2008)))))/sum(kwh*(1-abs(sign(left(reportmonth,4)-2008))))*100,0),'%') as 'DIFF 09_08',  

format(sum(kwh*(1-abs(sign(left(reportmonth,4)-2010)))),0) as 'sum 10',
concat(format((sum(kwh*(1-abs(sign(left(reportmonth,4)-2010))))-sum(kwh*(1-abs(sign(left(reportmonth,4)-2009)))))/sum(kwh*(1-abs(sign(left(reportmonth,4)-2009))))*100,0),'%') as 'DIFF 10_09', 

format(sum(kwh*(1-abs(sign(left(reportmonth,4)-2011)))),0) as 'sum 11',
concat(format((sum(kwh*(1-abs(sign(left(reportmonth,4)-2011))))-sum(kwh*(1-abs(sign(left(reportmonth,4)-2010)))))/sum(kwh*(1-abs(sign(left(reportmonth,4)-2010))))*100,0),'%') as 'DIFF 11_10',

concat(format((sum(kwh*(1-abs(sign(left(reportmonth,4)-2011))))-sum(kwh*(1-abs(sign(left(reportmonth,4)-2009)))))/sum(kwh*(1-abs(sign(left(reportmonth,4)-2008))))*100,0),'%') as 'DIFF 11_09',

format(sum(kwh*(1-abs(sign(left(reportmonth,4)-2012)))),0) as 'sum 12',

    
sunrise_registry.retailer as 'Reg_Retailer',distpricecat,metercontact, addressuserref,    addressnumber,   
addressstreet,    addresstown,        icpstatus,    category,  metertypehhr,  
ami,  meterregister  


from
    sunrise_eiep3 inner join sunrise_registry on sunrise_registry.icp = sunrise_eiep3.icp
where
  sunrise_registry.metertypehhr = 'Y' and icpstatus = '2' 
    group by  icp  
    
 