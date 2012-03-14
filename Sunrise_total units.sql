select avg(units)
from Sunrise_eiep1
where icp = '1000011242BP559' 
and pricecode= 'HET012'
and reportmonth> '201102' 
and reportmonth<'201201'

