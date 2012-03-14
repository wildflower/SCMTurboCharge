SELECT 
champion_registry.icp,  
sum(units*(1-abs(sign(substr(reportmonth,1,4)-2005)))) as "2005",
sum(units*(1-abs(sign(substr(reportmonth,1,4)-2006)))) as "2006",
sum(units*(1-abs(sign(substr(reportmonth,1,4)-2007)))) as "2007",
sum(units*(1-abs(sign(substr(reportmonth,1,4)-2008)))) as "2008",
sum(units*(1-abs(sign(substr(reportmonth,1,4)-2009)))) as "2009",
sum(units*(1-abs(sign(substr(reportmonth,1,4)-2010)))) as "2010",
sum(units*(1-abs(sign(substr(reportmonth,1,4)-2011)))) as "2011",

   champion_registry.retailer ,   addressuserref,    addressnumber,    addressstreet,
    addresstown,    icpstatus,    metertypenhh,    distpricecat,    category
    



from `champion_eiep1` inner join `champion_registry` using (icp) where `champion_registry`.icpstatus = '2' and
champion_registry.category = '2'
  group by icp
