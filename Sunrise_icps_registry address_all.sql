SELECT 
    icp,
    addressuserref,
    addressnumber,
    addressstreet,
    addresstown,
    addressregion
FROM
    scm.sunrise_registry
order by icp
 