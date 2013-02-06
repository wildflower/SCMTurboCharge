/*Champion_Cat 2_Cons  hist and current year_mthly_2.sql*/

select 
champion_registry.icp,distpricecat,
 champion_eiep1.retailer,champion_registry.retailer as 'current retailer', 
 champion_registry.metercontact, icpcommisiondate,profile,category,metertypehhr,metertypenhh,
 
sum(units*(1-abs(sign(left(reportmonth,4)-2006)))) as 'sum yr 06', 
sum(units*(1-abs(sign(left(reportmonth,4)-2007)))) as 'sum yr 07',
sum(units*(1-abs(sign(left(reportmonth,4)-2008)))) as 'sum yr 08',
sum(units*(1-abs(sign(left(reportmonth,4)-2009)))) as 'sum yr 09',
sum(units*(1-abs(sign(left(reportmonth,4)-2010)))) as 'sum yr 10',
sum(units*(1-abs(sign(left(reportmonth,4)-2011)))) as 'sum yr 11',

format((sum(units*(1-abs(sign(left(reportmonth,4)-2012))))/5*12),0) as 'prorated yr 12', /*this is prorated based on 4 months submissions
but it may be wrong as the retailer may not have submitted monthly data so if too low check the monthly submisions to see if there is one
and follow up with retailer*/

sum(units*(1-abs(sign(left(reportmonth,4)-2012)))) as 'sum yr 12',

sum(units*(1-abs(sign(reportmonth-201201)))) as 'Jan12',
sum(units*(1-abs(sign(reportmonth-201202)))) as 'Feb12',
sum(units*(1-abs(sign(reportmonth-201203)))) as 'Mar12',
sum(units*(1-abs(sign(reportmonth-201204)))) as 'Apr12',
sum(units*(1-abs(sign(reportmonth-201205)))) as 'May12',



concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2011))))-sum(units*(1-abs(sign(left(reportmonth,4)-2006)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2006))))*100,0),'%') as 'YRs11_06 VAR%',
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2011))))-sum(units*(1-abs(sign(left(reportmonth,4)-2007)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2007))))*100,0),'%') as 'YRs11_07 VAR%',
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2011))))-sum(units*(1-abs(sign(left(reportmonth,4)-2008)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2008))))*100,0),'%') as 'YRs11_08 VAR%',
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2011))))-sum(units*(1-abs(sign(left(reportmonth,4)-2009)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2009))))*100,0),'%') as 'YRs11_09 VAR%',
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2011))))-sum(units*(1-abs(sign(left(reportmonth,4)-2010)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2010))))*100,0),'%') as 'YRs11_10 VAR%',


 
 
concat(format((sum(units*(1-abs(sign(reportmonth-201203))))-sum(units*(1-abs(sign(reportmonth-201201)))))/sum(units*(1-abs(sign(reportmonth-201201))))*100,0),'%') as 'Mar-Jan var',
concat(format((sum(units*(1-abs(sign(reportmonth-201203))))-sum(units*(1-abs(sign(reportmonth-201202)))))/sum(units*(1-abs(sign(reportmonth-201202))))*100,0),'%') as 'Mar-Feb var',
concat(format((sum(units*(1-abs(sign(reportmonth-201204))))-sum(units*(1-abs(sign(reportmonth-201203)))))/sum(units*(1-abs(sign(reportmonth-201203))))*100,0),'%') as 'Apr-Mar var',
concat(format((sum(units*(1-abs(sign(reportmonth-201205))))-sum(units*(1-abs(sign(reportmonth-201204)))))/sum(units*(1-abs(sign(reportmonth-201204))))*100,0),'%') as 'May-Apr var',

meterregister,   addressnumber,    addressstreet,    addresstown,    icpstatus,  
addressuserref       
from
    champion_eiep1
    inner join champion_registry on  champion_registry.icp = champion_eiep1.icp    
where champion_registry.category > '1' 
    and  champion_eiep1.fixedvariable= 'V'       
    group by champion_eiep1.icp ;