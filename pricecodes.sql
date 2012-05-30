/*  query to find listof pricecodes and count of reords with those price codes */
 

select pricecode,fixedvariable, count(pricecode) as count from scm.champion_eiep1   group by pricecode order by count
