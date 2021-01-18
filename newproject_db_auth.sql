
SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `bg_user`;
CREATE TABLE `bg_user` (
  `user_code` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '0',
  `chk_tester` char(1) NOT NULL DEFAULT 'N',
  `jumin` varchar(20) DEFAULT '0',
  `chk_service` char(1) DEFAULT 'Y',
  `partner_id` char(2) NOT NULL DEFAULT 'LC',
  `active_passwd` varchar(15) NOT NULL DEFAULT '0',
  `active_time` datetime NOT NULL,
  `create_date` datetime NOT NULL,
  `password_old` varchar(15) DEFAULT NULL,
  `enc_jumin1` varchar(32) NOT NULL DEFAULT '0',
  `enc_jumin3` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_code`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `passwd` (`passwd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `bg_user_active`;
CREATE TABLE `bg_user_active` (
  `active_index` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `active_code` int(11) unsigned NOT NULL DEFAULT 0,
  `active_game` char(3) NOT NULL DEFAULT '24',
  `active_time` datetime NOT NULL DEFAULT '2006-04-20 00:00:00',
  `active_passwd` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`active_index`),
  UNIQUE KEY `idx_user` (`active_code`,`active_game`),
  KEY `active_index` (`active_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_connect_count`;
CREATE TABLE `t_connect_count` (
  `a_index` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `a_count` int(11) unsigned NOT NULL DEFAULT 0,
  `a_date` datetime DEFAULT NULL,
  `a_server` int(11) DEFAULT 0,
  `a_sub_num` int(11) unsigned DEFAULT 0,
  `a_zone_num` int(10) unsigned NOT NULL DEFAULT 0,
  `a_area` char(2) DEFAULT 'BJ',
  `a_level_count` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`),
  KEY `a_sub_num` (`a_sub_num`,`a_zone_num`),
  KEY `a_date` (`a_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_connect_log`;
CREATE TABLE `t_connect_log` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_idname` varchar(25) NOT NULL DEFAULT '',
  `a_date` datetime NOT NULL,
  `a_ip` varchar(20) DEFAULT '0.0.0.0',
  PRIMARY KEY (`a_index`),
  KEY `idx_ip` (`a_ip`),
  KEY `idx_date` (`a_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_connect_max`;
CREATE TABLE `t_connect_max` (
  `a_index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `a_count` int(10) unsigned DEFAULT 0,
  `a_count_max` int(10) unsigned DEFAULT 0,
  `a_date` date DEFAULT NULL,
  `a_server` int(11) DEFAULT 0,
  `a_sub_num` int(10) unsigned DEFAULT 0,
  `a_zone_num` int(10) unsigned NOT NULL DEFAULT 0,
  `a_level_count` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`),
  KEY `idx_date_sub_zone` (`a_date`,`a_sub_num`,`a_zone_num`,`a_server`),
  KEY `idx_date` (`a_date`),
  KEY `idx_server` (`a_server`,`a_sub_num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_connect_status`;
CREATE TABLE `t_connect_status` (
  `a_server` int(10) unsigned NOT NULL DEFAULT 0,
  `a_sub_num` int(10) unsigned NOT NULL DEFAULT 0,
  `a_count` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_server`,`a_sub_num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_ct_limit`;
CREATE TABLE `t_ct_limit` (
  `a_server` int(11) NOT NULL DEFAULT -1,
  `a_ct_id` int(11) NOT NULL DEFAULT -1,
  `a_sell` int(11) NOT NULL DEFAULT 0,
  `a_limit` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_ct_id`,`a_server`),
  KEY `a_ct_id_2` (`a_ct_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='제한상품 리스트';

DROP TABLE IF EXISTS `t_eur2_promotion`;
CREATE TABLE `t_eur2_promotion` (
  `a_key` varchar(20) NOT NULL DEFAULT '',
  `a_user_index` int(11) NOT NULL DEFAULT 0,
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_use_date` datetime NOT NULL,
  UNIQUE KEY `a_key` (`a_key`),
  KEY `a_user_index` (`a_user_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event`;
CREATE TABLE `t_event` (
  `a_index` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `a_good_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '00',
  `a_good_index` int(10) unsigned NOT NULL DEFAULT 0,
  `a_idname` varchar(30) NOT NULL DEFAULT '0',
  `a_user_index` int(10) unsigned NOT NULL DEFAULT 0,
  `a_week_index` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `a_create_date` datetime NOT NULL DEFAULT '2004-12-28 00:00:00',
  `a_event_point` tinyint(3) unsigned NOT NULL DEFAULT 5,
  PRIMARY KEY (`a_index`,`a_user_index`),
  UNIQUE KEY `a_index` (`a_index`),
  KEY `char_index` (`a_good_index`),
  KEY `a_user_index` (`a_user_index`,`a_week_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event_gomdori_count`;
CREATE TABLE `t_event_gomdori_count` (
  `a_server` int(11) NOT NULL DEFAULT 0,
  `a_count` int(11) NOT NULL DEFAULT 0,
  `a_updatedate` datetime NOT NULL,
  PRIMARY KEY (`a_server`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event_usercomeback`;
CREATE TABLE `t_event_usercomeback` (
  `a_user_idx` int(11) unsigned NOT NULL DEFAULT 0,
  `a_server_num` tinyint(3) unsigned DEFAULT 0,
  `a_char_idx` int(11) unsigned DEFAULT 0,
  `a_gift_date` datetime NOT NULL,
  PRIMARY KEY (`a_user_idx`),
  UNIQUE KEY `a_user_idx` (`a_user_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event_xmastree_point`;
CREATE TABLE `t_event_xmastree_point` (
  `a_server` int(11) NOT NULL DEFAULT 0,
  `a_point` int(10) unsigned NOT NULL DEFAULT 0,
  `a_lastupdate` datetime NOT NULL,
  PRIMARY KEY (`a_server`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_gift00`;
CREATE TABLE `t_gift00` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_server` int(11) NOT NULL DEFAULT 0,
  `a_send_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_send_char_name` varchar(50) NOT NULL DEFAULT '',
  `a_send_msg` varchar(100) NOT NULL DEFAULT '',
  `a_recv_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_recv_char_name` varchar(50) NOT NULL DEFAULT '',
  `a_send_date` datetime NOT NULL,
  `a_ctid` int(11) NOT NULL DEFAULT -1,
  `a_use_date` datetime NOT NULL,
  `a_use_char_idx` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`),
  KEY `idx_sender` (`a_send_user_idx`,`a_send_date`),
  KEY `idx_recv` (`a_recv_user_idx`,`a_send_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_gift01`;
CREATE TABLE `t_gift01` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_server` int(11) NOT NULL DEFAULT 0,
  `a_send_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_send_char_name` varchar(50) NOT NULL DEFAULT '',
  `a_send_msg` varchar(100) NOT NULL DEFAULT '',
  `a_recv_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_recv_char_name` varchar(50) NOT NULL DEFAULT '',
  `a_send_date` datetime NOT NULL,
  `a_ctid` int(11) NOT NULL DEFAULT -1,
  `a_use_date` datetime NOT NULL,
  `a_use_char_idx` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`),
  KEY `idx_sender` (`a_send_user_idx`,`a_send_date`),
  KEY `idx_recv` (`a_recv_user_idx`,`a_send_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_gift02`;
CREATE TABLE `t_gift02` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_server` int(11) NOT NULL DEFAULT 0,
  `a_send_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_send_char_name` varchar(50) NOT NULL DEFAULT '',
  `a_send_msg` varchar(100) NOT NULL DEFAULT '',
  `a_recv_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_recv_char_name` varchar(50) NOT NULL DEFAULT '',
  `a_send_date` datetime NOT NULL,
  `a_ctid` int(11) NOT NULL DEFAULT -1,
  `a_use_date` datetime NOT NULL,
  `a_use_char_idx` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`),
  KEY `idx_sender` (`a_send_user_idx`,`a_send_date`),
  KEY `idx_recv` (`a_recv_user_idx`,`a_send_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_gift03`;
CREATE TABLE `t_gift03` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_server` int(11) NOT NULL DEFAULT 0,
  `a_send_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_send_char_name` varchar(50) NOT NULL DEFAULT '',
  `a_send_msg` varchar(100) NOT NULL DEFAULT '',
  `a_recv_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_recv_char_name` varchar(50) NOT NULL DEFAULT '',
  `a_send_date` datetime NOT NULL,
  `a_ctid` int(11) NOT NULL DEFAULT -1,
  `a_use_date` datetime NOT NULL,
  `a_use_char_idx` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`),
  KEY `idx_sender` (`a_send_user_idx`,`a_send_date`),
  KEY `idx_recv` (`a_recv_user_idx`,`a_send_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_gift04`;
CREATE TABLE `t_gift04` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_server` int(11) NOT NULL DEFAULT 0,
  `a_send_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_send_char_name` varchar(50) NOT NULL DEFAULT '',
  `a_send_msg` varchar(100) NOT NULL DEFAULT '',
  `a_recv_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_recv_char_name` varchar(50) NOT NULL DEFAULT '',
  `a_send_date` datetime NOT NULL,
  `a_ctid` int(11) NOT NULL DEFAULT -1,
  `a_use_date` datetime NOT NULL,
  `a_use_char_idx` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`),
  KEY `idx_sender` (`a_send_user_idx`,`a_send_date`),
  KEY `idx_recv` (`a_recv_user_idx`,`a_send_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_gift05`;
CREATE TABLE `t_gift05` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_server` int(11) NOT NULL DEFAULT 0,
  `a_send_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_send_char_name` varchar(50) NOT NULL DEFAULT '',
  `a_send_msg` varchar(100) NOT NULL DEFAULT '',
  `a_recv_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_recv_char_name` varchar(50) NOT NULL DEFAULT '',
  `a_send_date` datetime NOT NULL,
  `a_ctid` int(11) NOT NULL DEFAULT -1,
  `a_use_date` datetime NOT NULL,
  `a_use_char_idx` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`),
  KEY `idx_sender` (`a_send_user_idx`,`a_send_date`),
  KEY `idx_recv` (`a_recv_user_idx`,`a_send_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_gift06`;
CREATE TABLE `t_gift06` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_server` int(11) NOT NULL DEFAULT 0,
  `a_send_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_send_char_name` varchar(50) NOT NULL DEFAULT '',
  `a_send_msg` varchar(100) NOT NULL DEFAULT '',
  `a_recv_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_recv_char_name` varchar(50) NOT NULL DEFAULT '',
  `a_send_date` datetime NOT NULL,
  `a_ctid` int(11) NOT NULL DEFAULT -1,
  `a_use_date` datetime NOT NULL,
  `a_use_char_idx` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`),
  KEY `idx_sender` (`a_send_user_idx`,`a_send_date`),
  KEY `idx_recv` (`a_recv_user_idx`,`a_send_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_gift07`;
CREATE TABLE `t_gift07` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_server` int(11) NOT NULL DEFAULT 0,
  `a_send_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_send_char_name` varchar(50) NOT NULL DEFAULT '',
  `a_send_msg` varchar(100) NOT NULL DEFAULT '',
  `a_recv_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_recv_char_name` varchar(50) NOT NULL DEFAULT '',
  `a_send_date` datetime NOT NULL,
  `a_ctid` int(11) NOT NULL DEFAULT -1,
  `a_use_date` datetime NOT NULL,
  `a_use_char_idx` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`),
  KEY `idx_sender` (`a_send_user_idx`,`a_send_date`),
  KEY `idx_recv` (`a_recv_user_idx`,`a_send_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_gift08`;
CREATE TABLE `t_gift08` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_server` int(11) NOT NULL DEFAULT 0,
  `a_send_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_send_char_name` varchar(50) NOT NULL DEFAULT '',
  `a_send_msg` varchar(100) NOT NULL DEFAULT '',
  `a_recv_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_recv_char_name` varchar(50) NOT NULL DEFAULT '',
  `a_send_date` datetime NOT NULL,
  `a_ctid` int(11) NOT NULL DEFAULT -1,
  `a_use_date` datetime NOT NULL,
  `a_use_char_idx` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`),
  KEY `idx_sender` (`a_send_user_idx`,`a_send_date`),
  KEY `idx_recv` (`a_recv_user_idx`,`a_send_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_gift09`;
CREATE TABLE `t_gift09` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_server` int(11) NOT NULL DEFAULT 0,
  `a_send_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_send_char_name` varchar(50) NOT NULL DEFAULT '',
  `a_send_msg` varchar(100) NOT NULL DEFAULT '',
  `a_recv_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_recv_char_name` varchar(50) NOT NULL DEFAULT '',
  `a_send_date` datetime NOT NULL,
  `a_ctid` int(11) NOT NULL DEFAULT -1,
  `a_use_date` datetime NOT NULL,
  `a_use_char_idx` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`),
  KEY `idx_sender` (`a_send_user_idx`,`a_send_date`),
  KEY `idx_recv` (`a_recv_user_idx`,`a_send_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_gmtool_chatmonitor`;
CREATE TABLE `t_gmtool_chatmonitor` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_charindex` int(11) NOT NULL DEFAULT 0,
  `a_server` int(11) NOT NULL DEFAULT 0,
  `a_subno` int(11) NOT NULL DEFAULT 0,
  `a_type` int(11) NOT NULL DEFAULT 0,
  `a_chat` varchar(255) NOT NULL DEFAULT '',
  `a_date` datetime NOT NULL,
  PRIMARY KEY (`a_index`,`a_charindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_gmtool_chatting`;
CREATE TABLE `t_gmtool_chatting` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_server` int(11) NOT NULL DEFAULT 0,
  `a_sub` int(11) NOT NULL DEFAULT 0,
  `a_gmindex` int(11) NOT NULL DEFAULT 0,
  `a_gmname` varchar(50) NOT NULL DEFAULT '',
  `a_charname` varchar(50) NOT NULL DEFAULT '',
  `a_chat` varchar(255) NOT NULL DEFAULT '',
  `a_date` datetime NOT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_gmtool_command`;
CREATE TABLE `t_gmtool_command` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_gmindex` int(11) NOT NULL DEFAULT 0,
  `a_gmname` varchar(50) NOT NULL DEFAULT '',
  `a_date` datetime NOT NULL,
  `a_gmcommand` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`a_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_iplist`;
CREATE TABLE `t_iplist` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_ipstart_N` bigint(13) NOT NULL DEFAULT 0,
  `a_ipend_N` bigint(13) NOT NULL DEFAULT 0,
  `a_nation_S` varchar(50) NOT NULL DEFAULT '',
  `a_nationcode` int(11) NOT NULL DEFAULT -1,
  PRIMARY KEY (`a_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_ip_block`;
CREATE TABLE `t_ip_block` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_ip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`a_index`),
  UNIQUE KEY `a_index` (`a_index`,`a_ip`),
  KEY `a_index_2` (`a_index`,`a_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_ip_log`;
CREATE TABLE `t_ip_log` (
  `a_index` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `a_ip` varchar(20) NOT NULL DEFAULT '0',
  `a_date` datetime NOT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_key`;
CREATE TABLE `t_key` (
  `a_index` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `a_strkey` varchar(15) NOT NULL DEFAULT '000000000000',
  `a_enable` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `a_kind` varchar(30) NOT NULL DEFAULT '0',
  `a_use_date` datetime DEFAULT NULL,
  PRIMARY KEY (`a_index`),
  UNIQUE KEY `idx_strKey` (`a_strkey`),
  KEY `idx_kind` (`a_kind`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_lacarette_log`;
CREATE TABLE `t_lacarette_log` (
  `a_user_idx` int(10) unsigned NOT NULL DEFAULT 0,
  `a_char_idx` int(10) unsigned NOT NULL DEFAULT 0,
  `a_date` date DEFAULT NULL,
  `a_repeat` int(11) unsigned NOT NULL DEFAULT 0,
  `a_repeat_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_manage_db`;
CREATE TABLE `t_manage_db` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` enum('DATA','CHAR') NOT NULL DEFAULT 'CHAR',
  `a_enable` tinyint(4) NOT NULL DEFAULT 1,
  `a_name` varchar(20) NOT NULL DEFAULT '',
  `a_db_ip` varchar(16) NOT NULL DEFAULT '',
  `a_db_id` varchar(20) NOT NULL DEFAULT '',
  `a_db_pw` varchar(20) NOT NULL DEFAULT '',
  `a_db_name` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`a_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_manage_log`;
CREATE TABLE `t_manage_log` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_master_idx` int(11) NOT NULL DEFAULT 0,
  `a_date` datetime NOT NULL,
  `a_server` varchar(20) NOT NULL DEFAULT '',
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_comment` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`a_index`),
  KEY `a_idname` (`a_master_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_manage_users`;
CREATE TABLE `t_manage_users` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_idname` varchar(30) NOT NULL DEFAULT '',
  `a_passwd` varchar(15) NOT NULL DEFAULT '',
  `a_enable` int(1) unsigned DEFAULT 1,
  `a_master` enum('N','Y') NOT NULL DEFAULT 'N',
  `a_recent` datetime NOT NULL,
  `a_login` tinyint(4) NOT NULL DEFAULT 0,
  `a_serial_code` char(1) NOT NULL DEFAULT '',
  `a_serial_num` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`),
  UNIQUE KEY `a_idname` (`a_idname`),
  KEY `a_passwd` (`a_passwd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_new_promoitem`;
CREATE TABLE `t_new_promoitem` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_section_type` int(11) NOT NULL DEFAULT 0,
  `a_item_idx` int(11) NOT NULL DEFAULT 0,
  `a_item_count` int(11) NOT NULL DEFAULT 0,
  `a_item_plus` int(11) NOT NULL DEFAULT 0,
  `a_item_flag` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`,`a_section_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_new_promotion`;
CREATE TABLE `t_new_promotion` (
  `a_index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `a_enable` tinyint(4) NOT NULL DEFAULT 0,
  `a_use_state` tinyint(4) NOT NULL DEFAULT 0,
  `a_section_string` varchar(30) NOT NULL DEFAULT '',
  `a_section_type` int(11) NOT NULL DEFAULT 0,
  `a_start_date` datetime NOT NULL,
  `a_end_date` datetime NOT NULL,
  `a_use_date` datetime NOT NULL,
  `a_key_string` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`a_index`,`a_section_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_pcbang_2nd`;
CREATE TABLE `t_pcbang_2nd` (
  `a_index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `a_enable` tinyint(4) NOT NULL DEFAULT 0,
  `a_ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`a_index`),
  UNIQUE KEY `a_ip` (`a_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_pcbang_log`;
CREATE TABLE `t_pcbang_log` (
  `a_user_idx` int(11) unsigned NOT NULL DEFAULT 0,
  `a_ip` varchar(16) NOT NULL DEFAULT '',
  `a_action` tinyint(4) NOT NULL DEFAULT 0,
  `a_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_promotion2_key`;
CREATE TABLE `t_promotion2_key` (
  `a_index` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `a_strKey` varchar(25) NOT NULL DEFAULT '0',
  `a_user_idx` int(11) unsigned NOT NULL DEFAULT 0,
  `a_enable` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `a_kind` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `a_use_char_idx` int(11) unsigned NOT NULL DEFAULT 0,
  `a_use_date` datetime NOT NULL,
  PRIMARY KEY (`a_index`,`a_strKey`),
  UNIQUE KEY `a_strKey` (`a_strKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_purchase00`;
CREATE TABLE `t_purchase00` (
  `a_index` int(10) NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(10) NOT NULL DEFAULT 0,
  `a_server` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `a_ctid` int(10) NOT NULL DEFAULT 0,
  `a_serial` int(10) NOT NULL DEFAULT 0,
  `a_pdate` datetime NOT NULL,
  `a_confirm` tinyint(3) unsigned DEFAULT 0,
  `a_use_char_idx` int(10) NOT NULL DEFAULT 0,
  `a_use_date` datetime NOT NULL,
  `a_ip` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`a_index`),
  KEY `a_ctid` (`a_ctid`,`a_serial`,`a_pdate`),
  KEY `idx_use` (`a_use_char_idx`,`a_server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_purchase01`;
CREATE TABLE `t_purchase01` (
  `a_index` int(10) NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(10) NOT NULL DEFAULT 0,
  `a_server` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `a_ctid` int(10) NOT NULL DEFAULT 0,
  `a_serial` int(10) NOT NULL DEFAULT 0,
  `a_pdate` datetime NOT NULL,
  `a_confirm` tinyint(3) unsigned DEFAULT 0,
  `a_use_char_idx` int(10) NOT NULL DEFAULT 0,
  `a_use_date` datetime NOT NULL,
  `a_ip` varchar(30) DEFAULT NULL,
  `a_coupon_id` int(11) DEFAULT -1,
  PRIMARY KEY (`a_index`),
  KEY `a_ctid` (`a_ctid`,`a_serial`,`a_pdate`),
  KEY `idx_use` (`a_use_char_idx`,`a_server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_purchase02`;
CREATE TABLE `t_purchase02` (
  `a_index` int(10) NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(10) NOT NULL DEFAULT 0,
  `a_server` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `a_ctid` int(10) NOT NULL DEFAULT 0,
  `a_serial` int(10) NOT NULL DEFAULT 0,
  `a_pdate` datetime NOT NULL,
  `a_confirm` tinyint(3) unsigned DEFAULT 0,
  `a_use_char_idx` int(10) NOT NULL DEFAULT 0,
  `a_use_date` datetime NOT NULL,
  `a_ip` varchar(30) DEFAULT NULL,
  `a_coupon_id` int(11) DEFAULT -1,
  PRIMARY KEY (`a_index`),
  KEY `a_ctid` (`a_ctid`,`a_serial`,`a_pdate`),
  KEY `idx_use` (`a_use_char_idx`,`a_server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_purchase03`;
CREATE TABLE `t_purchase03` (
  `a_index` int(10) NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(10) NOT NULL DEFAULT 0,
  `a_server` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `a_ctid` int(10) NOT NULL DEFAULT 0,
  `a_serial` int(10) NOT NULL DEFAULT 0,
  `a_pdate` datetime NOT NULL,
  `a_confirm` tinyint(3) unsigned DEFAULT 0,
  `a_use_char_idx` int(10) NOT NULL DEFAULT 0,
  `a_use_date` datetime NOT NULL,
  `a_ip` varchar(30) DEFAULT NULL,
  `a_coupon_id` int(11) DEFAULT -1,
  PRIMARY KEY (`a_index`),
  KEY `a_ctid` (`a_ctid`,`a_serial`,`a_pdate`),
  KEY `idx_use` (`a_use_char_idx`,`a_server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_purchase04`;
CREATE TABLE `t_purchase04` (
  `a_index` int(10) NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(10) NOT NULL DEFAULT 0,
  `a_server` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `a_ctid` int(10) NOT NULL DEFAULT 0,
  `a_serial` int(10) NOT NULL DEFAULT 0,
  `a_pdate` datetime NOT NULL,
  `a_confirm` tinyint(3) unsigned DEFAULT 0,
  `a_use_char_idx` int(10) NOT NULL DEFAULT 0,
  `a_use_date` datetime NOT NULL,
  `a_ip` varchar(30) DEFAULT NULL,
  `a_coupon_id` int(11) DEFAULT -1,
  PRIMARY KEY (`a_index`),
  KEY `a_ctid` (`a_ctid`,`a_serial`,`a_pdate`),
  KEY `idx_use` (`a_use_char_idx`,`a_server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_purchase05`;
CREATE TABLE `t_purchase05` (
  `a_index` int(10) NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(10) NOT NULL DEFAULT 0,
  `a_server` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `a_ctid` int(10) NOT NULL DEFAULT 0,
  `a_serial` int(10) NOT NULL DEFAULT 0,
  `a_pdate` datetime NOT NULL,
  `a_confirm` tinyint(3) unsigned DEFAULT 0,
  `a_use_char_idx` int(10) NOT NULL DEFAULT 0,
  `a_use_date` datetime NOT NULL,
  `a_ip` varchar(30) DEFAULT NULL,
  `a_coupon_id` int(11) DEFAULT -1,
  PRIMARY KEY (`a_index`),
  KEY `a_ctid` (`a_ctid`,`a_serial`,`a_pdate`),
  KEY `idx_use` (`a_use_char_idx`,`a_server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_purchase06`;
CREATE TABLE `t_purchase06` (
  `a_index` int(10) NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(10) NOT NULL DEFAULT 0,
  `a_server` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `a_ctid` int(10) NOT NULL DEFAULT 0,
  `a_serial` int(10) NOT NULL DEFAULT 0,
  `a_pdate` datetime NOT NULL,
  `a_confirm` tinyint(3) unsigned DEFAULT 0,
  `a_use_char_idx` int(10) NOT NULL DEFAULT 0,
  `a_use_date` datetime NOT NULL,
  `a_ip` varchar(30) DEFAULT NULL,
  `a_coupon_id` int(11) DEFAULT -1,
  PRIMARY KEY (`a_index`),
  KEY `a_ctid` (`a_ctid`,`a_serial`,`a_pdate`),
  KEY `idx_use` (`a_use_char_idx`,`a_server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_purchase07`;
CREATE TABLE `t_purchase07` (
  `a_index` int(10) NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(10) NOT NULL DEFAULT 0,
  `a_server` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `a_ctid` int(10) NOT NULL DEFAULT 0,
  `a_serial` int(10) NOT NULL DEFAULT 0,
  `a_pdate` datetime NOT NULL,
  `a_confirm` tinyint(3) unsigned DEFAULT 0,
  `a_use_char_idx` int(10) NOT NULL DEFAULT 0,
  `a_use_date` datetime NOT NULL,
  `a_ip` varchar(30) DEFAULT NULL,
  `a_coupon_id` int(11) DEFAULT -1,
  PRIMARY KEY (`a_index`),
  KEY `a_ctid` (`a_ctid`,`a_serial`,`a_pdate`),
  KEY `idx_use` (`a_use_char_idx`,`a_server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_purchase08`;
CREATE TABLE `t_purchase08` (
  `a_index` int(10) NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(10) NOT NULL DEFAULT 0,
  `a_server` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `a_ctid` int(10) NOT NULL DEFAULT 0,
  `a_serial` int(10) NOT NULL DEFAULT 0,
  `a_pdate` datetime NOT NULL,
  `a_confirm` tinyint(3) unsigned DEFAULT 0,
  `a_use_char_idx` int(10) NOT NULL DEFAULT 0,
  `a_use_date` datetime NOT NULL,
  `a_ip` varchar(30) DEFAULT NULL,
  `a_coupon_id` int(11) DEFAULT -1,
  PRIMARY KEY (`a_index`),
  KEY `a_ctid` (`a_ctid`,`a_serial`,`a_pdate`),
  KEY `idx_use` (`a_use_char_idx`,`a_server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_purchase09`;
CREATE TABLE `t_purchase09` (
  `a_index` int(10) NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(10) NOT NULL DEFAULT 0,
  `a_server` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `a_ctid` int(10) NOT NULL DEFAULT 0,
  `a_serial` int(10) NOT NULL DEFAULT 0,
  `a_pdate` datetime NOT NULL,
  `a_confirm` tinyint(3) unsigned DEFAULT 0,
  `a_use_char_idx` int(10) NOT NULL DEFAULT 0,
  `a_use_date` datetime NOT NULL,
  `a_ip` varchar(30) DEFAULT NULL,
  `a_coupon_id` int(11) DEFAULT -1,
  PRIMARY KEY (`a_index`),
  KEY `a_ctid` (`a_ctid`,`a_serial`,`a_pdate`),
  KEY `idx_use` (`a_use_char_idx`,`a_server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_ranking`;
CREATE TABLE `t_ranking` (
  `a_index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `a_username` varchar(50) DEFAULT '0',
  `a_server` smallint(6) unsigned NOT NULL DEFAULT 0,
  `a_rank` int(10) unsigned DEFAULT 0,
  `a_charindex` int(11) unsigned DEFAULT 0,
  `a_charname` varchar(50) DEFAULT '0',
  `a_level` int(11) unsigned DEFAULT 0,
  `a_exp` bigint(20) DEFAULT 0,
  `a_job` tinyint(4) unsigned DEFAULT 0,
  `a_job2` tinyint(4) unsigned DEFAULT 0,
  `a_guildname` varchar(50) DEFAULT '0',
  `a_date` datetime NOT NULL,
  PRIMARY KEY (`a_index`),
  KEY `a_date` (`a_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_requital_log`;
CREATE TABLE `t_requital_log` (
  `a_index` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(11) unsigned NOT NULL DEFAULT 0,
  `a_user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `a_char_idx` int(11) unsigned NOT NULL DEFAULT 0,
  `a_char_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `a_eventCheck_0` tinyint(2) unsigned NOT NULL DEFAULT 0,
  `a_eventCheck_1` tinyint(2) unsigned NOT NULL DEFAULT 0,
  UNIQUE KEY `a_index` (`a_index`),
  KEY `a_index_2` (`a_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_idname` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `a_passwd` varchar(15) NOT NULL DEFAULT '',
  `a_portal_index` int(10) unsigned NOT NULL DEFAULT 0,
  `a_regi_date` datetime DEFAULT NULL,
  `a_end_date` datetime DEFAULT NULL,
  `a_enable` int(1) unsigned DEFAULT 1,
  `a_server_num` int(11) NOT NULL DEFAULT -1,
  `a_subnum` int(11) NOT NULL DEFAULT -1,
  `a_zone_num` int(11) NOT NULL DEFAULT -1,
  `a_timestamp` int(11) unsigned DEFAULT 0,
  `a_preopen_chk` tinyint(4) NOT NULL DEFAULT 0,
  `a_eventpoint` int(11) NOT NULL DEFAULT 10,
  `a_eventpoint_use` int(10) unsigned NOT NULL DEFAULT 0,
  `a_stash_passwd` varchar(50) NOT NULL DEFAULT '',
  `a_stash_sealed` tinyint(4) NOT NULL DEFAULT 0,
  `a_stash_password` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `a_pcbang_time` int(10) unsigned NOT NULL DEFAULT 0,
  `a_block_time` int(11) NOT NULL DEFAULT 0,
  `a_fail_count` int(11) NOT NULL DEFAULT 0,
  `a_login_time` int(11) NOT NULL DEFAULT 0,
  `a_restart` int(11) NOT NULL DEFAULT 0,
  `a_lastip` varchar(15) DEFAULT NULL,
  `a_lastnation` char(3) DEFAULT NULL,
  PRIMARY KEY (`a_index`),
  UNIQUE KEY `a_idname` (`a_idname`),
  UNIQUE KEY `idx_portal_index` (`a_portal_index`),
  KEY `a_passwd` (`a_passwd`),
  KEY `a_sub_num` (`a_server_num`,`a_subnum`),
  KEY `idx_zone_num` (`a_zone_num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_wishlist`;
CREATE TABLE `t_wishlist` (
  `a_userindex` int(10) unsigned NOT NULL DEFAULT 0,
  `a_ctids` varchar(65) DEFAULT NULL,
  PRIMARY KEY (`a_userindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='cash shop wish list (소망상자)';
SET FOREIGN_KEY_CHECKS=1;
