SELECT * 
FROM  scm.champion_eiep1
where 
(
reportmonth = '201108' 
or reportmonth = '201109'
or reportmonth = '201110'
or reportmonth = '201111'
or reportmonth = '201112'
)
and (pricecode = 'WA02' 
or pricecode = 'WA03'
)

order by icp