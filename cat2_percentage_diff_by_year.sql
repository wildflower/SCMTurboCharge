select 
    champion_registry.icp,
    sum(units*(1-abs(sign(left(reportmonth,4)-2006)))) as 'sum 06',
sum(units*(1-abs(sign(left(reportmonth,4)-2007)))) as 'sum 07',
sum(units*(1-abs(sign(left(reportmonth,4)-2008)))) as 'sum 08',
sum(units*(1-abs(sign(left(reportmonth,4)-2009)))) as 'sum 09',
sum(units*(1-abs(sign(left(reportmonth,4)-2010)))) as 'sum 10',
sum(units*(1-abs(sign(left(reportmonth,4)-2011)))) as 'sum 11',
sum(units*(1-abs(sign(left(reportmonth,4)-2012)))) as 'sum 12',

    (sum(units*(1-abs(sign(left(reportmonth,4)-2006))))-sum(units*(1-abs(sign(left(reportmonth,4)-2007)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2007))))*100 as '2006',
    (sum(units*(1-abs(sign(left(reportmonth,4)-2007))))-sum(units*(1-abs(sign(left(reportmonth,4)-2008)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2008))))*100 as '2007',
    (sum(units*(1-abs(sign(left(reportmonth,4)-2008))))-sum(units*(1-abs(sign(left(reportmonth,4)-2009)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2009))))*100 as '2008',
    (sum(units*(1-abs(sign(left(reportmonth,4)-2009))))-sum(units*(1-abs(sign(left(reportmonth,4)-2010)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2010))))*100 as '2009',
    (sum(units*(1-abs(sign(left(reportmonth,4)-2010))))-sum(units*(1-abs(sign(left(reportmonth,4)-2011)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2011))))*100 as '2010',
    (sum(units*(1-abs(sign(left(reportmonth,4)-2011))))-sum(units*(1-abs(sign(left(reportmonth,4)-2012)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2012))))*100 as '2011',
    (sum(units*(1-abs(sign(left(reportmonth,4)-2006))))-sum(units*(1-abs(sign(left(reportmonth,4)-2011)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2011))))*100 as 'tot var',
 
    addressuserref,
    addressnumber,
    addressstreet,
    addresstown,    
    icpstatus,
    category,
    metertypehhr,
    ami,
    meterregister,
    distpricecat


from
    champion_eiep1 inner join champion_registry on champion_registry.icp = champion_eiep1.icp
where
    fixedvariable = 'V' and champion_registry.category = 2 group by  icp
 