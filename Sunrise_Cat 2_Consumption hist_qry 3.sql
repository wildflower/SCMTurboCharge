select 
    sunrise_registry.icp,  
 


sum(units*(1-abs(sign(left(reportmonth,4)-2008)))) as 'sum 08',

sum(units*(1-abs(sign(left(reportmonth,4)-2009)))) as 'sum 09',
 concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2009))))-sum(units*(1-abs(sign(left(reportmonth,4)-2008)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2008))))*100,0),'%') as 'DIFF 09_08',  

sum(units*(1-abs(sign(left(reportmonth,4)-2010)))) as 'sum 10',
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2010))))-sum(units*(1-abs(sign(left(reportmonth,4)-2009)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2009))))*100,0),'%') as 'DIFF 10_09', 

sum(units*(1-abs(sign(left(reportmonth,4)-2011)))) as 'sum 11',
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2011))))-sum(units*(1-abs(sign(left(reportmonth,4)-2010)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2010))))*100,0),'%') as 'DIFF 11_10',

concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2011))))-sum(units*(1-abs(sign(left(reportmonth,4)-2009)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2008))))*100,0),'%') as 'DIFF 11_09',

sum(units*(1-abs(sign(left(reportmonth,4)-2012)))) as 'sum 12',

    
sunrise_registry.retailer as 'Reg_Retailer',distpricecat, metercontact, addressuserref,    addressnumber,   
addressstreet,    addresstown,        icpstatus,    category,  metertypehhr,  
ami,  meterregister  


from
    sunrise_eiep1 inner join sunrise_registry on sunrise_registry.icp = sunrise_eiep1.icp
where
    fixedvariable = 'V' and sunrise_registry.category = '2' and icpstatus = '2' and  sunrise_registry.metertypehhr = 'N'
    group by  icp  
    
 