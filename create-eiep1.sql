CREATE TABLE IF NOT EXISTS `sunrise-eiep1` (
  `fileid` char(5) NOT NULL,
  `icp` varchar(15) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `unittype` varchar(10) NOT NULL,
  `units` int(11) NOT NULL,
  `status` char(2) NOT NULL,  
  `pricecode` char(10) NOT NULL,
  `pricerate` float NOT NULL,
  `fixedvariable` enum('F','V') NOT NULL,
  `chargeabledays` int(11) NOT NULL,
  `charge` float NOT NULL,
  `reportmonth` char(6) NOT NULL,
  KEY `icp_key` (`icp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 ;

