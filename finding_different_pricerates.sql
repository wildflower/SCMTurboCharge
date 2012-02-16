/* I used this to try and figure out when pricecodes changed their rate and if Retailers where using the correct rate for the code,
this would help to make Lewanna's reports more accurate
*/

SELECT pricecode, pricerate, reportmonth FROM scm.sunrise_eiep1 where fixedvariable = 'V' group by pricecode, reportmonth order by reportmonth, pricecode