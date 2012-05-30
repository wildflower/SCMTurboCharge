/*  query to find listof pricecodes and count of reords with those price codes */
<<<<<<< HEAD
 

select pricecode,fixedvariable, count(pricecode) as count from scm.champion_eiep1   group by pricecode order by count
=======

select pricecode, count(pricecode) as count from scm.sunrise_eiep1 group by pricecode order by count
>>>>>>> a75007c7b94c8597d44bf114070c1eba8aacd94b
