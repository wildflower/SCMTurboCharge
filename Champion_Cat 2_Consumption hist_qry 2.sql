select 
champion_registry.icp,
champion_registry.metertypehhr,
icpstatus,

sum(units*(1-abs(sign(left(reportmonth,4)-2006)))) as 'sum 06',
sum(units*(1-abs(sign(left(reportmonth,4)-2007)))) as 'sum 07',
sum(units*(1-abs(sign(left(reportmonth,4)-2008)))) as 'sum 08',
sum(units*(1-abs(sign(left(reportmonth,4)-2009)))) as 'sum 09',
sum(units*(1-abs(sign(left(reportmonth,4)-2010)))) as 'sum 10',
sum(units*(1-abs(sign(left(reportmonth,4)-2011)))) as 'sum 11',
sum(units*(1-abs(sign(left(reportmonth,4)-2012)))) as 'sum 12',

concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2007))))-sum(units*(1-abs(sign(left(reportmonth,4)-2006)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2006))))*100,0),'%') as 'Yrs 06_07 var',
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2008))))-sum(units*(1-abs(sign(left(reportmonth,4)-2007)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2007))))*100,0),'%') as 'Yrs 07_08 var',
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2009))))-sum(units*(1-abs(sign(left(reportmonth,4)-2008)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2008))))*100,0),'%') as 'Yrs 08_09 var',
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2010))))-sum(units*(1-abs(sign(left(reportmonth,4)-2009)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2009))))*100,0),'%') as 'Yrs 09_10 var',
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2011))))-sum(units*(1-abs(sign(left(reportmonth,4)-2010)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2010))))*100,0),'%') as 'Yrs 10_11 var',
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2012))))-sum(units*(1-abs(sign(left(reportmonth,4)-2011)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2011))))*100,0),'%') as 'Yrs 12_11 var_incomplete',
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2011))))-sum(units*(1-abs(sign(left(reportmonth,4)-2006)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2006))))*100,0),'%') as 'Yrs 06_11',
 
   champion_registry.retailer,distpricecat, addressuserref,    addressnumber,    addressstreet,    addresstown,        icpstatus,    category,    metertypehhr,    ami,    meterregister,    distpricecat


from
    champion_eiep1 inner join champion_registry on champion_registry.icp = champion_eiep1.icp
where
    fixedvariable = 'V' and champion_registry.category = '2'   
    group by  icp
 