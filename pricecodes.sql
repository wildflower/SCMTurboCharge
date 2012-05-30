/*  query to find listof pricecodes and count of reords with those price codes */

select pricecode, count(pricecode) as count from scm.sunrise_eiep1 group by pricecode order by count
