update champion_eiep1 set  chargeabledays = dayofyear(enddate) - dayofyear(startdate) + 1  where chargeabledays = 0