select 
   monthname(startdate) as 'Month',
   year(startdate) as 'Year',
   sum(case
       when status = 'RD' then units
   end) as 'RD',
   sum(case
       when status = 'FL' then units
   end) as 'FL',
   sum(case
       when status = 'ES' then units
   end) as 'ES',
   sum(units) as 'Total'
from
   sunrise_eiep1
where
   icp = '1000016009bp74f'
   
group by year(startdate) , month(startdate);