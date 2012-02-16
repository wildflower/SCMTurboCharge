SELECT *
FROM scm.champion_eiep1
where  
fixedvariable = 'V' 
and pricecode = 'WA06'
or pricecode = 'WA07' 
and reportmonth > 201105
order by reportmonth