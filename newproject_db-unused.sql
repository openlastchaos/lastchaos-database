
SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `t_attendance_event_2011`;
CREATE TABLE `t_attendance_event_2011` (
  `a_char_idx` int(10) unsigned NOT NULL DEFAULT 0,
  `a_tda` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `a_tda_date` datetime NOT NULL,
  `a_oda` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `a_oda_date` datetime NOT NULL,
  `a_today` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `a_today_date` datetime NOT NULL,
  `a_accday` int(10) unsigned NOT NULL DEFAULT 0,
  `a_reward` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_idx`),
  KEY `a_tda` (`a_tda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_backup_tradeagent`;
CREATE TABLE `t_backup_tradeagent` (
  `a_index` int(11) NOT NULL DEFAULT 0,
  `a_item_serial` int(11) NOT NULL DEFAULT 0,
  `a_item_serial2` varchar(20) NOT NULL DEFAULT '',
  `a_item_plus` int(11) NOT NULL DEFAULT 0,
  `a_item_flag` int(11) NOT NULL DEFAULT 0,
  `a_option_count` int(11) DEFAULT 0,
  `a_option_0_type` int(11) DEFAULT 0,
  `a_option_0_level` int(11) DEFAULT 0,
  `a_option_1_type` int(11) DEFAULT 0,
  `a_option_1_level` int(11) DEFAULT 0,
  `a_option_2_type` int(11) DEFAULT 0,
  `a_option_2_level` int(11) DEFAULT 0,
  `a_option_3_type` int(11) DEFAULT 0,
  `a_option_3_level` int(11) DEFAULT 0,
  `a_option_4_type` int(11) DEFAULT 0,
  `a_option_4_level` int(11) DEFAULT 0,
  `a_item_origin_0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_name` varchar(50) NOT NULL DEFAULT '''''',
  `a_item_level` int(11) NOT NULL DEFAULT 0,
  `a_item_type` int(11) NOT NULL DEFAULT 0,
  `a_item_subtype` tinyint(3) NOT NULL DEFAULT 0,
  `a_item_class` int(11) NOT NULL DEFAULT 0,
  `a_quantity` int(11) NOT NULL DEFAULT 0,
  `a_totalmoney` bigint(20) NOT NULL DEFAULT 0,
  `a_regist_date` datetime NOT NULL,
  `a_process_date` datetime NOT NULL,
  `a_account_date` datetime NOT NULL,
  `a_sell_charindex` int(11) NOT NULL DEFAULT 0,
  `a_sell_charname` varchar(50) NOT NULL DEFAULT '''''',
  `a_buy_charindex` int(11) NOT NULL DEFAULT 0,
  `a_buy_charname` varchar(50) NOT NULL DEFAULT '''''',
  `a_state` tinyint(4) NOT NULL DEFAULT 0,
  `a_buycalc_state` tinyint(4) NOT NULL DEFAULT 0,
  `a_sellcalc_state` tinyint(4) NOT NULL DEFAULT 0,
  `a_guaranty` int(11) NOT NULL DEFAULT 0,
  `a_process_state` tinyint(2) unsigned NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_charbirthday_log`;
CREATE TABLE `t_charbirthday_log` (
  `a_char_idx` int(11) unsigned NOT NULL DEFAULT 0,
  `a_craetedate` date NOT NULL,
  `a_next_birthday` date NOT NULL,
  `a_gift_cnt` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_idx`),
  UNIQUE KEY `a_char_idx` (`a_char_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='캐릭터 1주년 이벤트 테이블';

DROP TABLE IF EXISTS `t_event_2007_newserver`;
CREATE TABLE `t_event_2007_newserver` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_userindex` int(11) NOT NULL DEFAULT 0,
  `a_charindex` int(11) NOT NULL DEFAULT 0,
  `a_date` datetime NOT NULL,
  `a_give` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`),
  UNIQUE KEY `idx_idname` (`a_userindex`),
  KEY `idx_date` (`a_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event_akan_temple`;
CREATE TABLE `t_event_akan_temple` (
  `a_index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `a_char_index` int(10) unsigned NOT NULL DEFAULT 0,
  `a_char_name` char(50) NOT NULL DEFAULT '0',
  `a_user_index` int(10) unsigned NOT NULL DEFAULT 0,
  `a_exchange_count` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='아칸사원 이벤트 : 영혼의 징표 교환 기록';

DROP TABLE IF EXISTS `t_event_childrensday2007`;
CREATE TABLE `t_event_childrensday2007` (
  `a_charIndex` int(11) unsigned NOT NULL DEFAULT 0,
  `a_itemIndex` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_charIndex`,`a_itemIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event_flowertree2007`;
CREATE TABLE `t_event_flowertree2007` (
  `a_charIndex` int(11) NOT NULL DEFAULT 0,
  `a_point` int(11) unsigned NOT NULL DEFAULT 0,
  `a_recvTicket` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_charIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event_moonstone`;
CREATE TABLE `t_event_moonstone` (
  `a_charindex` int(11) NOT NULL DEFAULT 0,
  `a_mixcount` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_charindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event_newafron2009`;
CREATE TABLE `t_event_newafron2009` (
  `a_charidx` int(11) NOT NULL DEFAULT 0,
  `a_update_date` datetime NOT NULL,
  PRIMARY KEY (`a_charidx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event_newyear2006`;
CREATE TABLE `t_event_newyear2006` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_total_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='2006 New Year Event';

DROP TABLE IF EXISTS `t_event_presscorps`;
CREATE TABLE `t_event_presscorps` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_charindex` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`,`a_charindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event_teach2007`;
CREATE TABLE `t_event_teach2007` (
  `a_index` int(11) NOT NULL DEFAULT 0,
  `a_addflower` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`a_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event_teach_lightuser`;
CREATE TABLE `t_event_teach_lightuser` (
  `a_index` int(11) unsigned NOT NULL DEFAULT 0,
  `a_result` int(11) unsigned DEFAULT 0,
  `a_date` datetime DEFAULT NULL,
  `a_update` datetime DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event_teach_lightuser_result`;
CREATE TABLE `t_event_teach_lightuser_result` (
  `a_teacher` int(11) unsigned NOT NULL DEFAULT 0,
  `a_student` int(11) unsigned NOT NULL DEFAULT 0,
  `a_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_extend_guildmember_prebugfix`;
CREATE TABLE `t_extend_guildmember_prebugfix` (
  `a_guild_index` int(11) NOT NULL DEFAULT 0,
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_position_name` varchar(30) DEFAULT NULL,
  `a_contribute_exp` int(11) DEFAULT 0,
  `a_contribute_fame` int(11) DEFAULT 0,
  `a_point` int(11) DEFAULT 0,
  PRIMARY KEY (`a_guild_index`,`a_char_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_guildmember_new`;
CREATE TABLE `t_guildmember_new` (
  `a_guild_index` int(11) NOT NULL DEFAULT 0,
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_char_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `a_pos` int(11) NOT NULL DEFAULT 0,
  `a_regdate` datetime NOT NULL,
  PRIMARY KEY (`a_guild_index`,`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_guildmember_prebugfix`;
CREATE TABLE `t_guildmember_prebugfix` (
  `a_guild_index` int(11) NOT NULL DEFAULT 0,
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_char_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `a_pos` int(11) NOT NULL DEFAULT 0,
  `a_regdate` datetime NOT NULL,
  PRIMARY KEY (`a_guild_index`,`a_char_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_guildmember_test`;
CREATE TABLE `t_guildmember_test` (
  `a_guild_index` int(11) NOT NULL DEFAULT 0,
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_char_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `a_pos` int(11) NOT NULL DEFAULT 0,
  `a_regdate` datetime NOT NULL,
  PRIMARY KEY (`a_guild_index`,`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_inven_stats`;
CREATE TABLE `t_inven_stats` (
  `a_char_index` int(10) NOT NULL DEFAULT 0,
  `a_item_index` int(10) NOT NULL DEFAULT 0,
  `a_item_count` int(10) NOT NULL DEFAULT 0,
  KEY `charindex` (`a_char_index`),
  KEY `itemindex` (`a_item_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_inzonedata`;
CREATE TABLE `t_inzonedata` (
  `a_zoneno` int(11) NOT NULL DEFAULT -1,
  `a_roomno` int(11) NOT NULL DEFAULT 0,
  `a_jointype` int(11) NOT NULL DEFAULT 0,
  `a_storemiddle` int(11) NOT NULL DEFAULT 0,
  `a_monsterinfo` int(11) NOT NULL DEFAULT 0,
  `a_is_misclear` int(11) NOT NULL DEFAULT 0,
  `a_misclear_date` datetime NOT NULL,
  PRIMARY KEY (`a_zoneno`,`a_roomno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_mempos_ksw`;
CREATE TABLE `t_mempos_ksw` (
  `a_char_idx` int(10) unsigned NOT NULL DEFAULT 0,
  `a_mem_0` varchar(200) NOT NULL DEFAULT '',
  `a_mem_1` varchar(200) NOT NULL DEFAULT '',
  `a_mem_2` varchar(200) NOT NULL DEFAULT '',
  `a_mem_3` varchar(200) NOT NULL DEFAULT '',
  `a_mem_4` varchar(200) NOT NULL DEFAULT '',
  `a_mem_5` varchar(200) NOT NULL DEFAULT '',
  `a_mem_6` varchar(200) NOT NULL DEFAULT '',
  `a_mem_7` varchar(200) NOT NULL DEFAULT '',
  `a_mem_8` varchar(200) NOT NULL DEFAULT '',
  `a_mem_9` varchar(200) NOT NULL DEFAULT '',
  `a_mem_10` varchar(200) NOT NULL DEFAULT '',
  `a_mem_11` varchar(200) NOT NULL DEFAULT '',
  `a_mem_12` varchar(200) NOT NULL DEFAULT '',
  `a_mem_13` varchar(200) NOT NULL DEFAULT '',
  `a_mem_14` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_mempos_plus`;
CREATE TABLE `t_mempos_plus` (
  `a_char_idx` int(10) unsigned NOT NULL DEFAULT 0,
  `a_mem_0` varchar(200) NOT NULL DEFAULT '',
  `a_mem_1` varchar(200) NOT NULL DEFAULT '',
  `a_mem_2` varchar(200) NOT NULL DEFAULT '',
  `a_mem_3` varchar(200) NOT NULL DEFAULT '',
  `a_mem_4` varchar(200) NOT NULL DEFAULT '',
  `a_mem_5` varchar(200) NOT NULL DEFAULT '',
  `a_mem_6` varchar(200) NOT NULL DEFAULT '',
  `a_mem_7` varchar(200) NOT NULL DEFAULT '',
  `a_mem_8` varchar(200) NOT NULL DEFAULT '',
  `a_mem_9` varchar(200) NOT NULL DEFAULT '',
  `a_mem_10` varchar(200) NOT NULL DEFAULT '',
  `a_mem_11` varchar(200) NOT NULL DEFAULT '',
  `a_mem_12` varchar(200) NOT NULL DEFAULT '',
  `a_mem_13` varchar(200) NOT NULL DEFAULT '',
  `a_mem_14` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`a_char_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_mempos_test`;
CREATE TABLE `t_mempos_test` (
  `a_char_idx` int(10) unsigned NOT NULL DEFAULT 0,
  `a_mem_0` varchar(200) NOT NULL DEFAULT '',
  `a_mem_1` varchar(200) NOT NULL DEFAULT '',
  `a_mem_2` varchar(200) NOT NULL DEFAULT '',
  `a_mem_3` varchar(200) NOT NULL DEFAULT '',
  `a_mem_4` varchar(200) NOT NULL DEFAULT '',
  `a_mem_5` varchar(200) NOT NULL DEFAULT '',
  `a_mem_6` varchar(200) NOT NULL DEFAULT '',
  `a_mem_7` varchar(200) NOT NULL DEFAULT '',
  `a_mem_8` varchar(200) NOT NULL DEFAULT '',
  `a_mem_9` varchar(200) NOT NULL DEFAULT '',
  `a_mem_10` varchar(200) NOT NULL DEFAULT '',
  `a_mem_11` varchar(200) NOT NULL DEFAULT '',
  `a_mem_12` varchar(200) NOT NULL DEFAULT '',
  `a_mem_13` varchar(200) NOT NULL DEFAULT '',
  `a_mem_14` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`a_char_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='zone x z ylayer comment';

DROP TABLE IF EXISTS `t_parcel_room00`;
CREATE TABLE `t_parcel_room00` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_item_idx` int(11) NOT NULL DEFAULT -1,
  `a_plus` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos` tinyint(4) NOT NULL DEFAULT -1,
  `a_flag` int(11) NOT NULL DEFAULT 0,
  `a_serial` varchar(255) NOT NULL DEFAULT '',
  `a_count` bigint(20) NOT NULL DEFAULT 0,
  `a_used` int(11) NOT NULL DEFAULT -1,
  `a_item_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_used_2` int(11) NOT NULL DEFAULT -1,
  PRIMARY KEY (`a_index`),
  KEY `a_user_idx` (`a_user_idx`),
  KEY `a_item_idx` (`a_item_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_parcel_room01`;
CREATE TABLE `t_parcel_room01` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_item_idx` int(11) NOT NULL DEFAULT -1,
  `a_plus` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos` tinyint(4) NOT NULL DEFAULT -1,
  `a_flag` int(11) NOT NULL DEFAULT 0,
  `a_serial` varchar(255) NOT NULL DEFAULT '',
  `a_count` bigint(20) NOT NULL DEFAULT 0,
  `a_used` int(11) NOT NULL DEFAULT -1,
  `a_item_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_used_2` int(11) NOT NULL DEFAULT -1,
  PRIMARY KEY (`a_index`),
  KEY `a_user_idx` (`a_user_idx`),
  KEY `a_item_idx` (`a_item_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_parcel_room02`;
CREATE TABLE `t_parcel_room02` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_item_idx` int(11) NOT NULL DEFAULT -1,
  `a_plus` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos` tinyint(4) NOT NULL DEFAULT -1,
  `a_flag` int(11) NOT NULL DEFAULT 0,
  `a_serial` varchar(255) NOT NULL DEFAULT '',
  `a_count` bigint(20) NOT NULL DEFAULT 0,
  `a_used` int(11) NOT NULL DEFAULT -1,
  `a_item_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_used_2` int(11) NOT NULL DEFAULT -1,
  PRIMARY KEY (`a_index`),
  KEY `a_user_idx` (`a_user_idx`),
  KEY `a_item_idx` (`a_item_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_parcel_room03`;
CREATE TABLE `t_parcel_room03` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_item_idx` int(11) NOT NULL DEFAULT -1,
  `a_plus` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos` tinyint(4) NOT NULL DEFAULT -1,
  `a_flag` int(11) NOT NULL DEFAULT 0,
  `a_serial` varchar(255) NOT NULL DEFAULT '',
  `a_count` bigint(20) NOT NULL DEFAULT 0,
  `a_used` int(11) NOT NULL DEFAULT -1,
  `a_item_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_used_2` int(11) NOT NULL DEFAULT -1,
  PRIMARY KEY (`a_index`),
  KEY `a_user_idx` (`a_user_idx`),
  KEY `a_item_idx` (`a_item_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_parcel_room04`;
CREATE TABLE `t_parcel_room04` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_item_idx` int(11) NOT NULL DEFAULT -1,
  `a_plus` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos` tinyint(4) NOT NULL DEFAULT -1,
  `a_flag` int(11) NOT NULL DEFAULT 0,
  `a_serial` varchar(255) NOT NULL DEFAULT '',
  `a_count` bigint(20) NOT NULL DEFAULT 0,
  `a_used` int(11) NOT NULL DEFAULT -1,
  `a_item_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_used_2` int(11) NOT NULL DEFAULT -1,
  PRIMARY KEY (`a_index`),
  KEY `a_user_idx` (`a_user_idx`),
  KEY `a_item_idx` (`a_item_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_parcel_room05`;
CREATE TABLE `t_parcel_room05` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_item_idx` int(11) NOT NULL DEFAULT -1,
  `a_plus` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos` tinyint(4) NOT NULL DEFAULT -1,
  `a_flag` int(11) NOT NULL DEFAULT 0,
  `a_serial` varchar(255) NOT NULL DEFAULT '',
  `a_count` bigint(20) NOT NULL DEFAULT 0,
  `a_used` int(11) NOT NULL DEFAULT -1,
  `a_item_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_used_2` int(11) NOT NULL DEFAULT -1,
  PRIMARY KEY (`a_index`),
  KEY `a_user_idx` (`a_user_idx`),
  KEY `a_item_idx` (`a_item_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_parcel_room06`;
CREATE TABLE `t_parcel_room06` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_item_idx` int(11) NOT NULL DEFAULT -1,
  `a_plus` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos` tinyint(4) NOT NULL DEFAULT -1,
  `a_flag` int(11) NOT NULL DEFAULT 0,
  `a_serial` varchar(255) NOT NULL DEFAULT '',
  `a_count` bigint(20) NOT NULL DEFAULT 0,
  `a_used` int(11) NOT NULL DEFAULT -1,
  `a_item_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_used_2` int(11) NOT NULL DEFAULT -1,
  PRIMARY KEY (`a_index`),
  KEY `a_user_idx` (`a_user_idx`),
  KEY `a_item_idx` (`a_item_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_parcel_room07`;
CREATE TABLE `t_parcel_room07` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_item_idx` int(11) NOT NULL DEFAULT -1,
  `a_plus` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos` tinyint(4) NOT NULL DEFAULT -1,
  `a_flag` int(11) NOT NULL DEFAULT 0,
  `a_serial` varchar(255) NOT NULL DEFAULT '',
  `a_count` bigint(20) NOT NULL DEFAULT 0,
  `a_used` int(11) NOT NULL DEFAULT -1,
  `a_item_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_used_2` int(11) NOT NULL DEFAULT -1,
  PRIMARY KEY (`a_index`),
  KEY `a_user_idx` (`a_user_idx`),
  KEY `a_item_idx` (`a_item_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_parcel_room08`;
CREATE TABLE `t_parcel_room08` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_item_idx` int(11) NOT NULL DEFAULT -1,
  `a_plus` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos` tinyint(4) NOT NULL DEFAULT -1,
  `a_flag` int(11) NOT NULL DEFAULT 0,
  `a_serial` varchar(255) NOT NULL DEFAULT '',
  `a_count` bigint(20) NOT NULL DEFAULT 0,
  `a_used` int(11) NOT NULL DEFAULT -1,
  `a_item_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_used_2` int(11) NOT NULL DEFAULT -1,
  PRIMARY KEY (`a_index`),
  KEY `a_user_idx` (`a_user_idx`),
  KEY `a_item_idx` (`a_item_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_parcel_room09`;
CREATE TABLE `t_parcel_room09` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_item_idx` int(11) NOT NULL DEFAULT -1,
  `a_plus` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos` tinyint(4) NOT NULL DEFAULT -1,
  `a_flag` int(11) NOT NULL DEFAULT 0,
  `a_serial` varchar(255) NOT NULL DEFAULT '',
  `a_count` bigint(20) NOT NULL DEFAULT 0,
  `a_used` int(11) NOT NULL DEFAULT -1,
  `a_item_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_used_2` int(11) NOT NULL DEFAULT -1,
  PRIMARY KEY (`a_index`),
  KEY `a_user_idx` (`a_user_idx`),
  KEY `a_item_idx` (`a_item_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_reset_pk`;
CREATE TABLE `t_reset_pk` (
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_pkpenalty` int(11) NOT NULL DEFAULT 0,
  `a_pkcount` int(11) NOT NULL DEFAULT 0,
  `a_pkrecover` int(11) NOT NULL DEFAULT 0,
  `a_pkpenaltyhp` int(11) NOT NULL DEFAULT 0,
  `a_pkpenaltymp` int(11) NOT NULL DEFAULT 0,
  UNIQUE KEY `a_char_idx` (`a_char_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_reward_idc2007`;
CREATE TABLE `t_reward_idc2007` (
  `a_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_date` date NOT NULL,
  PRIMARY KEY (`a_user_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_rps_list`;
CREATE TABLE `t_rps_list` (
  `a_index` int(10) NOT NULL AUTO_INCREMENT,
  `a_name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`a_index`),
  UNIQUE KEY `a_index` (`a_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_stash_stats`;
CREATE TABLE `t_stash_stats` (
  `a_user_index` int(10) NOT NULL DEFAULT 0,
  `a_item_index` int(10) NOT NULL DEFAULT 0,
  `a_item_count` int(10) NOT NULL DEFAULT 0,
  KEY `charindex` (`a_user_index`),
  KEY `itemindex` (`a_user_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_summon_monster_cool_time`;
CREATE TABLE `t_summon_monster_cool_time` (
  `a_char_index` int(10) NOT NULL DEFAULT 0,
  `a_item_db_index` int(10) NOT NULL DEFAULT 0,
  `a_cool_time` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`,`a_item_db_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='몬스터 용병 쿨타임 테이블';

DROP TABLE IF EXISTS `t_tab`;
CREATE TABLE `t_tab` (
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_tab_1` varchar(200) NOT NULL DEFAULT '',
  `a_tab_2` varchar(200) NOT NULL DEFAULT '',
  `a_tab_3` varchar(200) NOT NULL DEFAULT '',
  `a_tab_4` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`a_char_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_teach_log`;
CREATE TABLE `t_teach_log` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_teacher_index` int(11) NOT NULL DEFAULT 0,
  `a_update_date` datetime NOT NULL,
  PRIMARY KEY (`a_char_index`),
  KEY `TeachKey` (`a_char_index`,`a_teacher_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_tradeagent_back`;
CREATE TABLE `t_tradeagent_back` (
  `a_index` int(11) NOT NULL DEFAULT 0,
  `a_item_serial` int(11) NOT NULL DEFAULT 0,
  `a_item_serial2` varchar(20) NOT NULL DEFAULT '',
  `a_item_plus` int(11) NOT NULL DEFAULT 0,
  `a_item_flag` int(11) NOT NULL DEFAULT 0,
  `a_option_count` int(11) DEFAULT 0,
  `a_option_0_type` int(11) DEFAULT 0,
  `a_option_0_level` int(11) DEFAULT 0,
  `a_option_1_type` int(11) DEFAULT 0,
  `a_option_1_level` int(11) DEFAULT 0,
  `a_option_2_type` int(11) DEFAULT 0,
  `a_option_2_level` int(11) DEFAULT 0,
  `a_option_3_type` int(11) DEFAULT 0,
  `a_option_3_level` int(11) DEFAULT 0,
  `a_option_4_type` int(11) DEFAULT 0,
  `a_option_4_level` int(11) DEFAULT 0,
  `a_item_name` varchar(50) NOT NULL DEFAULT '''''',
  `a_item_level` int(11) NOT NULL DEFAULT 0,
  `a_item_type` int(11) NOT NULL DEFAULT 0,
  `a_item_subtype` tinyint(3) NOT NULL DEFAULT 0,
  `a_item_class` int(11) NOT NULL DEFAULT 0,
  `a_quantity` int(11) NOT NULL DEFAULT 0,
  `a_totalmoney` bigint(20) NOT NULL DEFAULT 0,
  `a_regist_date` datetime NOT NULL,
  `a_process_date` datetime NOT NULL,
  `a_account_date` datetime NOT NULL,
  `a_sell_charindex` int(11) NOT NULL DEFAULT 0,
  `a_sell_charname` varchar(50) NOT NULL DEFAULT '''''',
  `a_buy_charindex` int(11) NOT NULL DEFAULT 0,
  `a_buy_charname` varchar(50) NOT NULL DEFAULT '''''',
  `a_state` tinyint(4) NOT NULL DEFAULT 0,
  `a_buycalc_state` tinyint(4) NOT NULL DEFAULT 0,
  `a_sellcalc_state` tinyint(4) NOT NULL DEFAULT 0,
  `a_guaranty` int(11) NOT NULL DEFAULT 0,
  `a_process_state` tinyint(2) unsigned NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET FOREIGN_KEY_CHECKS=1;
