select 
champion_registry.icp,distpricecat,
 champion_eiep1.retailer,champion_registry.retailer as 'current retailer', 
 champion_registry.metercontact,
sum(units*(1-abs(sign(left(reportmonth,4)-2008)))) as 'sum yr 08',
sum(units*(1-abs(sign(left(reportmonth,4)-2009)))) as 'sum yr 09',
sum(units*(1-abs(sign(left(reportmonth,4)-2010)))) as 'sum yr 10',
sum(units*(1-abs(sign(left(reportmonth,4)-2011)))) as 'sum yr 11',
sum(units*(1-abs(sign(left(reportmonth,4)-2012)))) as 'sum yr 12',

concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2011))))-sum(units*(1-abs(sign(left(reportmonth,4)-2009)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2009))))*100,0),'%') as 'YRs11_09 VAR',
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2011))))-sum(units*(1-abs(sign(left(reportmonth,4)-2010)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2010))))*100,0),'%') as 'YRs11_10 VAR',

sum(units*(1-abs(sign(reportmonth-201201)))) as 'Jan12',
sum(units*(1-abs(sign(reportmonth-201202)))) as 'Feb12',
sum(units*(1-abs(sign(reportmonth-201203)))) as 'Mar12',

 
concat(format((sum(units*(1-abs(sign(reportmonth-201203))))-sum(units*(1-abs(sign(reportmonth-201201)))))/sum(units*(1-abs(sign(reportmonth-201201))))*100,0),'%') as 'Mar-Jan var',
concat(format((sum(units*(1-abs(sign(reportmonth-201203))))-sum(units*(1-abs(sign(reportmonth-201202)))))/sum(units*(1-abs(sign(reportmonth-201202))))*100,0),'%') as 'Mar-Feb var',






meterregister, metertypenhh, addressnumber,    addressstreet,    addresstown,    icpstatus, metertypenhh,
addressuserref,   category , champion_eiep1.retailer,champion_registry.retailer as 'current retailer'    
from
    champion_eiep1
    inner join champion_registry on  champion_registry.icp = champion_eiep1.icp    
where champion_registry.category = '2' 
    and  champion_eiep1.fixedvariable= 'V'       
    group by champion_eiep1.icp ;