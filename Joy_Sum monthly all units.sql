select 
    champion_registry.icp,
    champion_registry.retailer as 'current retailer',
    champion_registry.icpcommisiondate,
    sum(units*(1-abs(sign(reportmonth-201001)))) as 'JAN10',
    sum(units*(1-abs(sign(reportmonth-201002)))) as 'FEB10',
    sum(units*(1-abs(sign(reportmonth-201003)))) as 'MAR10',
    sum(units*(1-abs(sign(reportmonth-201004)))) as 'APR10',
    sum(units*(1-abs(sign(reportmonth-201005)))) as 'MAY10',
    sum(units*(1-abs(sign(reportmonth-201006)))) as 'JUN10',
    sum(units*(1-abs(sign(reportmonth-201007)))) as 'JUL10',
    sum(units*(1-abs(sign(reportmonth-201008)))) as 'AUG10',
    sum(units*(1-abs(sign(reportmonth-201009)))) as 'SEP10',
    sum(units*(1-abs(sign(reportmonth-201010)))) as 'OCT10',
    sum(units*(1-abs(sign(reportmonth-201011)))) as 'NOV10',
    sum(units*(1-abs(sign(reportmonth-201012)))) as 'DEC10',
    sum(units*(1-abs(sign(reportmonth-201101)))) as 'JAN11',
    sum(units*(1-abs(sign(reportmonth-201102)))) as 'FEB11',
    sum(units*(1-abs(sign(reportmonth-201103)))) as 'MAR11',
    sum(units*(1-abs(sign(reportmonth-201104)))) as 'APR11',
    sum(units*(1-abs(sign(reportmonth-201105)))) as 'MAY11',
    sum(units*(1-abs(sign(reportmonth-201106)))) as 'JUN11',
    sum(units*(1-abs(sign(reportmonth-201107)))) as 'JUL11',
    sum(units*(1-abs(sign(reportmonth-201108)))) as 'AUG11',
    sum(units*(1-abs(sign(reportmonth-201109)))) as 'SEP11',
    sum(units*(1-abs(sign(reportmonth-201110)))) as 'OCT11',
    sum(units*(1-abs(sign(reportmonth-201111)))) as 'NOV11',
    sum(units*(1-abs(sign(reportmonth-201112)))) as 'DEC11',
    sum(units*(1-abs(sign(reportmonth-201201)))) as 'JAN12',
    sum(units*(1-abs(sign(reportmonth-201202)))) as 'FEB12',
    sum(units*(1-abs(sign(reportmonth-201203)))) as 'MAR12',
    sum(units*(1-abs(sign(reportmonth-201204)))) as 'APR12',
    sum(units*(1-abs(sign(reportmonth-201205)))) as 'MAY12',  
    
   metertypehhr,
   metertypenhh,
   ami,
   icpstatus
   addressunit,
   addressnumber,
   addressstreet
   addresstown
   
    
from
    champion_eiep1
        inner join
   champion_registry ON champion_registry.icp = champion_eiep1.icp
where
    champion_registry.category > '1'
    
    group by icp
    
 