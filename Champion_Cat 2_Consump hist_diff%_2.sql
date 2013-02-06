/*Champion_Cat 2_Consump hist_diff%_2.sql*/

select 
    champion_registry.icp,icpcommisiondate,profile,category,metertypehhr,metertypenhh,    
    
sum(units*(1-abs(sign(left(reportmonth,4)-2005)))) as 'sum 05', 
sum(units*(1-abs(sign(left(reportmonth,4)-2006)))) as 'sum 06',
sum(units*(1-abs(sign(left(reportmonth,4)-2007)))) as 'sum 07',
sum(units*(1-abs(sign(left(reportmonth,4)-2008)))) as 'sum 08',
sum(units*(1-abs(sign(left(reportmonth,4)-2009)))) as 'sum 09',
sum(units*(1-abs(sign(left(reportmonth,4)-2010)))) as 'sum 10',
sum(units*(1-abs(sign(left(reportmonth,4)-2011)))) as 'sum 11',
format((sum(units*(1-abs(sign(left(reportmonth,4)-2012))))/5*12),0) as 'prorated yr12', /*this needs to be updated as the monthly submissions are sent in, it may be wrong as the retailer has not submitted data*/
sum(units*(1-abs(sign(left(reportmonth,4)-2012)))) as 'sum_part 12',

concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2006))))-sum(units*(1-abs(sign(left(reportmonth,4)-2005)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2005))))*100,0),'%') as 'DIFF 06_05%', 
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2007))))-sum(units*(1-abs(sign(left(reportmonth,4)-2006)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2006))))*100,0),'%') as 'DIFF 07_06%',
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2008))))-sum(units*(1-abs(sign(left(reportmonth,4)-2007)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2007))))*100,0),'%') as 'DIFF 08_07%', 
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2009))))-sum(units*(1-abs(sign(left(reportmonth,4)-2008)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2008))))*100,0),'%') as 'DIFF 09_08%',
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2010))))-sum(units*(1-abs(sign(left(reportmonth,4)-2009)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2009))))*100,0),'%') as 'DIFF 10_09%',
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2011))))-sum(units*(1-abs(sign(left(reportmonth,4)-2005)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2005))))*100 ,0),'%')as 'DIFF 11_05%',
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2011))))-sum(units*(1-abs(sign(left(reportmonth,4)-2006)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2006))))*100 ,0),'%')as 'DIFF 11_06%',
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2011))))-sum(units*(1-abs(sign(left(reportmonth,4)-2007)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2007))))*100 ,0),'%')as 'DIFF 11_07%',
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2011))))-sum(units*(1-abs(sign(left(reportmonth,4)-2008)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2008))))*100 ,0),'%')as 'DIFF 11_08%',
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2011))))-sum(units*(1-abs(sign(left(reportmonth,4)-2009)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2009))))*100 ,0),'%')as 'DIFF 11_09%',
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2011))))-sum(units*(1-abs(sign(left(reportmonth,4)-2010)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2010))))*100,0),'%') as 'DIFF 11_10%',


champion_eiep1.retailer,champion_registry.retailer as 'Current retailer',distpricecat, metercontact, addressuserref,    addressnumber,   addressstreet,    addresstown,
icpstatus,  metertypehhr,  ami,  meterregister  
from
    champion_eiep1 inner join champion_registry on champion_registry.icp = champion_eiep1.icp
where
    fixedvariable = 'V' and champion_registry.category >'1'   
    group by  icp  
    
 