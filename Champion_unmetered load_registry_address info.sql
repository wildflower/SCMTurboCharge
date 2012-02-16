select 
 icp,
 category,
 dailyunmeteredkwh,
 unmeteredretailer,
 metermultiplier,
 metertypehhr,
 metertypenhh,
 metertypeunm,
 metertypepp,
 ami,
 retailer,
 icpstatus,
 addressuserref,
 addressunit,
 addressnumber,
 addressstreet,
 addresstown 
 
from  champion_registry
where dailyunmeteredkwh != '' 
or unmeteredretailer != ''
