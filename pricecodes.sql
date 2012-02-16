/*  query to find listof pricecodes and count of reords with those price codes */
set project_table= sunrise_eiep1

select pricecode, count(pricecode) as count from scm.%project_table% group by pricecode order by count
