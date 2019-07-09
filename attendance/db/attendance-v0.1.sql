-- ----------------------------
-- Table structure for cb_attendance
-- ----------------------------
CREATE TABLE `cb_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guest_id` varchar(0) DEFAULT NULL,
  `guest_type` enum('Member','Guest') DEFAULT NULL,
  `date_check` date DEFAULT NULL,
  `time_check` time DEFAULT NULL,
  `motive` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for cb_guest
-- ----------------------------
CREATE TABLE `cb_guest` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` enum('M','F') DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
