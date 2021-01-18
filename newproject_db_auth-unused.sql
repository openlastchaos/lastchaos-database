
SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `bg_game_event`;
CREATE TABLE `bg_game_event` (
  `idx` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `user_code` int(4) unsigned NOT NULL DEFAULT 0,
  `game_money` bigint(8) unsigned DEFAULT 0,
  `chk_use` char(1) NOT NULL DEFAULT 'N',
  `get_date` datetime DEFAULT NULL,
  `join_game_type` char(2) NOT NULL DEFAULT '24',
  `bg_game_type` smallint(2) unsigned NOT NULL DEFAULT 0,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`idx`),
  KEY `bg_game_event_user_code_idx` (`user_code`),
  KEY `bg_game_event_chk_use_idx` (`chk_use`),
  KEY `bg_game_event_bg_game_type` (`bg_game_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='11월 이후 bg_game_event_goods 사용- 이판사판 게임머니 지급';

DROP TABLE IF EXISTS `bg_game_event_goods`;
CREATE TABLE `bg_game_event_goods` (
  `egoods_index` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `egoods_user_code` int(11) unsigned NOT NULL DEFAULT 0,
  `egoods_site_code` varchar(10) NOT NULL DEFAULT '24',
  `egoods_item_no` int(11) DEFAULT NULL,
  `egoods_cnt` bigint(10) unsigned NOT NULL DEFAULT 0,
  `egoods_enable` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `egoods_create_date` datetime NOT NULL DEFAULT '2005-10-10 00:00:00',
  `egoods_use_date` datetime DEFAULT '2005-10-10 00:00:00',
  `egoods_give_place` varchar(10) NOT NULL DEFAULT 'web',
  `egoods_event_name` varchar(15) NOT NULL DEFAULT 'CARD',
  PRIMARY KEY (`egoods_index`),
  KEY `idx_user_code` (`egoods_user_code`,`egoods_site_code`,`egoods_enable`),
  KEY `idx_date` (`egoods_create_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='각 게임별 지급 상품';

DROP TABLE IF EXISTS `TBL_Attendance`;
CREATE TABLE `TBL_Attendance` (
  `Idx` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `User_Idx` int(3) unsigned NOT NULL DEFAULT 0,
  `Server_ID` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `Date_Time` datetime NOT NULL,
  PRIMARY KEY (`Idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `TBL_CharacterPoint_bliss`;
CREATE TABLE `TBL_CharacterPoint_bliss` (
  `cpt_idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cpt_user_idx` varchar(20) DEFAULT NULL,
  `cpt_char_idx` varchar(20) DEFAULT NULL,
  `cpt_guild_idx` varchar(20) DEFAULT NULL,
  `cpt_char_name` varchar(20) DEFAULT NULL,
  `cpt_point` int(10) unsigned DEFAULT 0,
  `cpt_get_point` int(10) unsigned DEFAULT 0,
  `cpt_update_date` datetime DEFAULT NULL,
  `cpt_del_point` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`cpt_idx`),
  KEY `mpt_idx` (`cpt_idx`),
  KEY `idx_cpt_guild_idx` (`cpt_guild_idx`),
  KEY `idx_cpt_user_idx` (`cpt_user_idx`),
  KEY `idx_char_idx` (`cpt_char_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='캐릭터포인트_블리스';

DROP TABLE IF EXISTS `TBL_EventIpad`;
CREATE TABLE `TBL_EventIpad` (
  `a_user_index` int(10) NOT NULL DEFAULT 0,
  `a_count` int(10) NOT NULL DEFAULT 0,
  `a_last_update_date` datetime NOT NULL,
  KEY `UserIndex` (`a_user_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `TBL_EventZorro`;
CREATE TABLE `TBL_EventZorro` (
  `a_user_index` int(10) NOT NULL DEFAULT 0,
  `a_count` int(10) NOT NULL DEFAULT 0,
  `a_last_update_date` datetime NOT NULL,
  KEY `UserIndex` (`a_user_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `TBL_ExpertCollector`;
CREATE TABLE `TBL_ExpertCollector` (
  `a_user_index` int(10) NOT NULL DEFAULT 0,
  `a_notebook` int(10) NOT NULL DEFAULT 0,
  `a_monitor` int(10) NOT NULL DEFAULT 0,
  `a_camera` int(10) NOT NULL DEFAULT 0,
  `a_hdd` int(10) NOT NULL DEFAULT 0,
  `a_succubus` int(10) NOT NULL DEFAULT 0,
  `a_agro` int(10) NOT NULL DEFAULT 0,
  KEY `UserIndex` (`a_user_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `TBL_FindFriendEvent`;
CREATE TABLE `TBL_FindFriendEvent` (
  `a_server` int(10) NOT NULL DEFAULT 0,
  `a_user_index` int(10) NOT NULL DEFAULT 0,
  `a_char_index` int(10) NOT NULL DEFAULT 0,
  `a_nick` varchar(50) NOT NULL DEFAULT '',
  KEY `server_idx` (`a_server`),
  KEY `user_idx` (`a_user_index`),
  KEY `char_idx` (`a_char_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `TBL_KillErebus`;
CREATE TABLE `TBL_KillErebus` (
  `a_index` int(10) NOT NULL AUTO_INCREMENT,
  `a_user_index` int(10) NOT NULL DEFAULT 0,
  `a_char_index` int(10) NOT NULL DEFAULT 0,
  `a_char_level` int(10) NOT NULL DEFAULT 0,
  `a_server` tinyint(4) NOT NULL DEFAULT 0,
  `a_datestamp` datetime NOT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `TBL_MemberCoupon_Point`;
CREATE TABLE `TBL_MemberCoupon_Point` (
  `user_idx` int(10) NOT NULL DEFAULT 0,
  `user_id` varchar(50) NOT NULL DEFAULT '',
  `get_point` int(11) NOT NULL DEFAULT 0,
  `get_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `TBL_MemberCoupon_Point_Log`;
CREATE TABLE `TBL_MemberCoupon_Point_Log` (
  `user_idx` int(10) NOT NULL DEFAULT 0,
  `user_id` varchar(10) NOT NULL DEFAULT '0',
  `get_point` int(10) NOT NULL DEFAULT 0,
  `insert_time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `TBL_MemberPoint`;
CREATE TABLE `TBL_MemberPoint` (
  `mpt_idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mpt_user_idx` varchar(30) DEFAULT NULL,
  `mpt_user_id` varchar(30) DEFAULT NULL,
  `mpt_user_name` varchar(20) DEFAULT NULL,
  `mpt_user_point` int(10) unsigned DEFAULT 0,
  `mpt_get_point` int(10) unsigned DEFAULT 0,
  `mpt_update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`mpt_idx`),
  KEY `mpt_idx` (`mpt_idx`),
  KEY `idx_user_idx` (`mpt_user_idx`),
  KEY `idx_user_id` (`mpt_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='회원포인트정보';

DROP TABLE IF EXISTS `TBL_PlayTime_event_temp`;
CREATE TABLE `TBL_PlayTime_event_temp` (
  `a_index` int(11) unsigned NOT NULL DEFAULT 0,
  `a_user_index` int(11) NOT NULL DEFAULT 0,
  `pla_insert_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `TBL_PointLog`;
CREATE TABLE `TBL_PointLog` (
  `ptl_idx` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ptl_point_idx` int(10) unsigned DEFAULT NULL,
  `ptl_point_code` char(3) NOT NULL DEFAULT '',
  `ptl_user_idx` varchar(30) NOT NULL DEFAULT '',
  `ptl_user_id` varchar(30) DEFAULT NULL,
  `ptl_server` char(3) DEFAULT NULL,
  `ptl_char_idx` varchar(30) DEFAULT NULL,
  `ptl_prev_point` int(10) unsigned DEFAULT 0,
  `ptl_use_point` int(10) unsigned DEFAULT 0,
  `ptl_get_point` int(10) unsigned DEFAULT 0,
  `ptl_point` int(10) unsigned DEFAULT 0,
  `ptl_desc` varchar(100) DEFAULT NULL,
  `ptl_insert_time` datetime DEFAULT NULL,
  PRIMARY KEY (`ptl_idx`),
  KEY `ptl_idx` (`ptl_idx`),
  KEY `idx_point_code` (`ptl_point_code`),
  KEY `idx_user_idx` (`ptl_user_idx`),
  KEY `idx_char_idx` (`ptl_char_idx`),
  KEY `idx_insert_time` (`ptl_insert_time`),
  KEY `idx_point_idx` (`ptl_point_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='포인트로그';

DROP TABLE IF EXISTS `TBL_Ticket`;
CREATE TABLE `TBL_Ticket` (
  `tkt_idx` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `tkt_coupon_no` varchar(20) NOT NULL DEFAULT '',
  `tkt_user_idx` int(10) unsigned DEFAULT NULL,
  `tkt_game_type` char(2) DEFAULT NULL,
  `tkt_used` char(1) NOT NULL DEFAULT 'N',
  `tkt_issue_date` datetime DEFAULT NULL,
  PRIMARY KEY (`tkt_idx`),
  KEY `IDX_UserIdx_GameType` (`tkt_user_idx`,`tkt_game_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='놈놈놈 이벤트용 영화티켓 시리얼';

DROP TABLE IF EXISTS `t_affinitylakin`;
CREATE TABLE `t_affinitylakin` (
  `a_index` int(10) NOT NULL AUTO_INCREMENT,
  `a_user_index` int(10) NOT NULL DEFAULT 0,
  `a_char_index` int(10) NOT NULL DEFAULT 0,
  `a_affinity_point` int(10) NOT NULL DEFAULT 0,
  `a_server` tinyint(4) NOT NULL DEFAULT 0,
  `a_datestamp` datetime NOT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_charinfo_db`;
CREATE TABLE `t_charinfo_db` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` int(11) NOT NULL DEFAULT -1,
  `a_db_name` varchar(255) NOT NULL DEFAULT '',
  `a_db_ip` varchar(255) NOT NULL DEFAULT '',
  `a_db_dbname` varchar(255) NOT NULL DEFAULT '',
  `a_db_id` varchar(255) NOT NULL DEFAULT '',
  `a_db_pw` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`a_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_charinfo_db_copy`;
CREATE TABLE `t_charinfo_db_copy` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_type` int(11) NOT NULL DEFAULT -1,
  `a_db_name` varchar(255) NOT NULL DEFAULT '',
  `a_db_ip` varchar(255) NOT NULL DEFAULT '',
  `a_db_dbname` varchar(255) NOT NULL DEFAULT '',
  `a_db_id` varchar(255) NOT NULL DEFAULT '',
  `a_db_pw` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`a_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_charinfo_log`;
CREATE TABLE `t_charinfo_log` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_id` varchar(255) NOT NULL DEFAULT '',
  `a_datetime` datetime NOT NULL,
  `a_code` int(11) NOT NULL DEFAULT 0,
  `a_target_user` int(11) NOT NULL DEFAULT 0,
  `a_target_char` int(11) NOT NULL DEFAULT 0,
  `a_target_server` int(11) NOT NULL DEFAULT 0,
  `a_comment` varchar(255) NOT NULL DEFAULT '',
  `a_sql` text NOT NULL,
  PRIMARY KEY (`a_index`),
  KEY `idx_id` (`a_id`),
  KEY `idx_datetime` (`a_datetime`),
  KEY `idx_code` (`a_code`),
  KEY `idx_target` (`a_target_server`,`a_target_user`,`a_target_char`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_charinfo_user`;
CREATE TABLE `t_charinfo_user` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_id` varchar(255) NOT NULL DEFAULT '',
  `a_pw` varchar(255) NOT NULL DEFAULT '',
  `a_state` varchar(50) NOT NULL DEFAULT '',
  `a_comment` varchar(255) NOT NULL DEFAULT '',
  `a_priv_disconnect` enum('Y','N') NOT NULL DEFAULT 'N',
  `a_priv_char_delete` enum('Y','N') NOT NULL DEFAULT 'N',
  `a_priv_char_block` enum('Y','N') NOT NULL DEFAULT 'N',
  `a_priv_char_recover` enum('Y','N') NOT NULL DEFAULT 'N',
  `a_priv_char_changename` enum('Y','N') NOT NULL DEFAULT 'N',
  `a_priv_inven` enum('Y','N') NOT NULL DEFAULT 'N',
  `a_priv_view_castle` enum('Y','N') NOT NULL DEFAULT 'N',
  `a_priv_view_guild` enum('Y','N') NOT NULL DEFAULT 'N',
  `a_priv_guild_changename` enum('Y','N') NOT NULL DEFAULT 'N',
  `a_priv_log_all` enum('Y','N') NOT NULL DEFAULT 'N',
  `a_priv_guild_changeboss` enum('Y','N') NOT NULL DEFAULT 'N',
  `a_priv_user_comment` enum('Y','N') NOT NULL DEFAULT 'N',
  `a_priv_autogive` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`a_index`),
  UNIQUE KEY `idx_id` (`a_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_charinfo_usercomment`;
CREATE TABLE `t_charinfo_usercomment` (
  `a_user_index` int(11) NOT NULL DEFAULT 0,
  `a_user_comment` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`a_user_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_connect_b1`;
CREATE TABLE `t_connect_b1` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_count` int(11) NOT NULL DEFAULT 0,
  `a_date` datetime NOT NULL,
  `a_server` int(3) unsigned NOT NULL DEFAULT 0,
  `a_sub_num` int(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_connect_daily`;
CREATE TABLE `t_connect_daily` (
  `a_index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `a_date` date NOT NULL,
  `a_count` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`),
  UNIQUE KEY `a_date` (`a_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='일별 게임 접속 전체 인원';

DROP TABLE IF EXISTS `t_connect_nm`;
CREATE TABLE `t_connect_nm` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_count` int(11) NOT NULL DEFAULT 0,
  `a_date` datetime NOT NULL,
  `a_server` int(3) unsigned NOT NULL DEFAULT 0,
  `a_sub_num` int(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_count_external_id`;
CREATE TABLE `t_count_external_id` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_partner_id` char(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`a_index`),
  UNIQUE KEY `a_index` (`a_index`,`a_partner_id`),
  KEY `a_index_2` (`a_index`,`a_partner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='count 인덱스에 따른 파트너코드';

DROP TABLE IF EXISTS `t_createevent_1`;
CREATE TABLE `t_createevent_1` (
  `a_user_index` int(11) NOT NULL DEFAULT 0,
  `a_server` int(11) DEFAULT NULL,
  `a_char_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`a_user_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_createevent_7`;
CREATE TABLE `t_createevent_7` (
  `a_user_index` int(11) NOT NULL DEFAULT 0,
  `a_server` int(11) DEFAULT NULL,
  `a_char_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`a_user_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event_2pan4pan`;
CREATE TABLE `t_event_2pan4pan` (
  `a_user_index` int(11) NOT NULL DEFAULT 0,
  `a_lastchaos` int(11) NOT NULL DEFAULT 0,
  `a_2pan4pan` int(11) NOT NULL DEFAULT 0,
  `a_ssawar` int(11) NOT NULL DEFAULT 0,
  `a_laghaim` int(11) NOT NULL DEFAULT 0,
  `a_noraba` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_user_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event_attendance`;
CREATE TABLE `t_event_attendance` (
  `a_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_count` int(11) NOT NULL DEFAULT 0,
  `a_reward` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_user_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event_bennigans`;
CREATE TABLE `t_event_bennigans` (
  `a_user_index` int(10) NOT NULL DEFAULT 0,
  `a_use_count` int(10) unsigned NOT NULL DEFAULT 0,
  `a_datetime` datetime NOT NULL,
  KEY `Index` (`a_user_index`,`a_use_count`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event_bjmono_2007`;
CREATE TABLE `t_event_bjmono_2007` (
  `a_user_index` int(11) NOT NULL DEFAULT 0,
  `a_ticket_count` int(11) NOT NULL DEFAULT 0,
  `a_used_ticket` int(11) DEFAULT 0,
  PRIMARY KEY (`a_user_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event_flowertree_point`;
CREATE TABLE `t_event_flowertree_point` (
  `a_server` int(11) NOT NULL DEFAULT 0,
  `a_point` int(10) unsigned NOT NULL DEFAULT 0,
  `a_lastupdate` datetime NOT NULL,
  PRIMARY KEY (`a_server`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event_gift_2007`;
CREATE TABLE `t_event_gift_2007` (
  `a_server_no` int(11) DEFAULT NULL,
  `a_user_index` int(11) NOT NULL DEFAULT 0,
  `a_char_index` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event_gift_2007_adult`;
CREATE TABLE `t_event_gift_2007_adult` (
  `a_server_no` int(11) DEFAULT NULL,
  `a_user_index` int(11) NOT NULL DEFAULT 0,
  `a_char_index` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event_nom`;
CREATE TABLE `t_event_nom` (
  `user_index` int(10) unsigned NOT NULL DEFAULT 0,
  `char_index` int(10) unsigned NOT NULL DEFAULT 0,
  `lottery_yn` tinyint(3) unsigned DEFAULT 0,
  `lottery_date` datetime DEFAULT NULL,
  `lottery_give` tinyint(3) unsigned DEFAULT 1,
  PRIMARY KEY (`user_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='놈놈놈 영화 이벤트';

DROP TABLE IF EXISTS `t_event_openbeta`;
CREATE TABLE `t_event_openbeta` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_useridx` int(10) unsigned NOT NULL DEFAULT 0,
  `a_charidx` int(10) unsigned NOT NULL DEFAULT 0,
  `a_givedate` datetime NOT NULL,
  PRIMARY KEY (`a_index`,`a_useridx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event_sshot_2007`;
CREATE TABLE `t_event_sshot_2007` (
  `a_user_index` int(11) NOT NULL DEFAULT 0,
  `a_used` tinyint(4) NOT NULL DEFAULT 0,
  `a_update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`a_user_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_fame_ranking`;
CREATE TABLE `t_fame_ranking` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_username` varchar(50) DEFAULT '0',
  `a_server` smallint(6) NOT NULL DEFAULT 0,
  `a_rank` int(10) unsigned NOT NULL DEFAULT 0,
  `a_charindex` int(11) DEFAULT 0,
  `a_charname` varchar(50) DEFAULT '0',
  `a_level` int(11) DEFAULT 0,
  `a_fame` int(11) DEFAULT 0,
  `a_job` tinyint(4) DEFAULT 0,
  `a_job2` tinyint(4) DEFAULT 0,
  `a_guildname` varchar(50) DEFAULT '0',
  `a_date` datetime NOT NULL,
  PRIMARY KEY (`a_index`),
  KEY `a_date` (`a_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_game_ip`;
CREATE TABLE `t_game_ip` (
  `a_index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `a_shop_idname` varchar(30) DEFAULT NULL,
  `a_ip_prefix` varchar(12) NOT NULL DEFAULT '127.0.0',
  `a_ip_start` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `a_ip_end` tinyint(3) unsigned NOT NULL DEFAULT 255,
  `a_enable` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `a_note` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`a_index`),
  KEY `i_ip_prefix` (`a_ip_prefix`),
  KEY `a_shop_idname` (`a_shop_idname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_gift`;
CREATE TABLE `t_gift` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_server` int(11) NOT NULL DEFAULT 0,
  `a_send_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_send_char_name` varchar(50) NOT NULL DEFAULT '',
  `a_send_msg` varchar(50) NOT NULL DEFAULT '',
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

DROP TABLE IF EXISTS `t_gm_ip_allow`;
CREATE TABLE `t_gm_ip_allow` (
  `a_gmid` varchar(20) DEFAULT NULL,
  `a_gmip` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_gpara_promotion_2007`;
CREATE TABLE `t_gpara_promotion_2007` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_user_index` int(11) NOT NULL DEFAULT 0,
  `a_server` int(11) NOT NULL DEFAULT 0,
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`),
  UNIQUE KEY `idx_user_index` (`a_user_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_guild_exp`;
CREATE TABLE `t_guild_exp` (
  `a_guild_index` int(11) NOT NULL DEFAULT 0,
  `a_exp` double NOT NULL DEFAULT 0,
  `a_updatetime` datetime NOT NULL,
  PRIMARY KEY (`a_guild_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_guild_point_rank_all`;
CREATE TABLE `t_guild_point_rank_all` (
  `a_index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `a_server` int(11) NOT NULL DEFAULT 0,
  `a_guild_index` int(11) NOT NULL DEFAULT 0,
  `a_guild_name` varchar(50) NOT NULL DEFAULT '',
  `a_rank` int(11) NOT NULL DEFAULT 0,
  `a_guild_point` int(11) NOT NULL DEFAULT 0,
  `a_insertdate` datetime NOT NULL,
  PRIMARY KEY (`a_index`),
  KEY `idx_server` (`a_server`),
  KEY `idx_insertdate` (`a_insertdate`),
  KEY `idx_rank` (`a_rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_guild_rank_all_exp`;
CREATE TABLE `t_guild_rank_all_exp` (
  `a_index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `a_server` int(11) NOT NULL DEFAULT 0,
  `a_guild_index` int(11) NOT NULL DEFAULT 0,
  `a_guild_name` varchar(50) NOT NULL DEFAULT '',
  `a_rank` int(11) NOT NULL DEFAULT 0,
  `a_insertdate` datetime NOT NULL,
  PRIMARY KEY (`a_index`),
  KEY `idx_server` (`a_server`),
  KEY `idx_insertdate` (`a_insertdate`),
  KEY `idx_rank` (`a_rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_guild_rank_all_general`;
CREATE TABLE `t_guild_rank_all_general` (
  `a_index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `a_server` int(11) NOT NULL DEFAULT 0,
  `a_guild_index` int(11) NOT NULL DEFAULT 0,
  `a_guild_name` varchar(50) NOT NULL DEFAULT '',
  `a_rank` int(11) NOT NULL DEFAULT 0,
  `a_insertdate` datetime NOT NULL,
  PRIMARY KEY (`a_index`),
  KEY `idx_server` (`a_server`),
  KEY `idx_insertdate` (`a_insertdate`),
  KEY `idx_rank` (`a_rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_guild_rank_month_exp`;
CREATE TABLE `t_guild_rank_month_exp` (
  `a_index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `a_server` int(11) NOT NULL DEFAULT 0,
  `a_guild_index` int(11) NOT NULL DEFAULT 0,
  `a_guild_name` varchar(50) NOT NULL DEFAULT '',
  `a_rank` int(11) NOT NULL DEFAULT 0,
  `a_insertdate` datetime NOT NULL,
  PRIMARY KEY (`a_index`),
  KEY `idx_server` (`a_server`),
  KEY `idx_insertdate` (`a_insertdate`),
  KEY `idx_rank` (`a_rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_guild_rank_month_general`;
CREATE TABLE `t_guild_rank_month_general` (
  `a_index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `a_server` int(11) NOT NULL DEFAULT 0,
  `a_guild_index` int(11) NOT NULL DEFAULT 0,
  `a_guild_name` varchar(50) NOT NULL DEFAULT '',
  `a_rank` int(11) NOT NULL DEFAULT 0,
  `a_insertdate` datetime NOT NULL,
  PRIMARY KEY (`a_index`),
  KEY `idx_server` (`a_server`),
  KEY `idx_insertdate` (`a_insertdate`),
  KEY `idx_rank` (`a_rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_lc_time`;
CREATE TABLE `t_lc_time` (
  `a_server` int(3) NOT NULL DEFAULT 0,
  `a_time` bigint(10) DEFAULT 0,
  PRIMARY KEY (`a_server`),
  UNIQUE KEY `a_server` (`a_server`),
  KEY `a_server_2` (`a_server`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_lc_time_test`;
CREATE TABLE `t_lc_time_test` (
  `a_server` int(3) NOT NULL DEFAULT 0,
  `a_time` bigint(10) DEFAULT 0,
  PRIMARY KEY (`a_server`),
  UNIQUE KEY `a_server` (`a_server`),
  KEY `a_server_2` (`a_server`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_ns_card`;
CREATE TABLE `t_ns_card` (
  `a_user_index` int(11) NOT NULL DEFAULT 0,
  `a_usetime` datetime NOT NULL,
  PRIMARY KEY (`a_user_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_ocn_goo_promotion_2008`;
CREATE TABLE `t_ocn_goo_promotion_2008` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_user_index` int(11) DEFAULT 0,
  `a_server` int(11) DEFAULT 0,
  `a_char_index` int(11) DEFAULT 0,
  PRIMARY KEY (`a_index`),
  UNIQUE KEY `a_user_index` (`a_user_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_pcbang`;
CREATE TABLE `t_pcbang` (
  `a_index` int(3) NOT NULL AUTO_INCREMENT,
  `a_ip` char(15) DEFAULT NULL,
  `a_enable` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`a_index`),
  UNIQUE KEY `a_ip` (`a_ip`),
  KEY `a_index` (`a_index`,`a_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_pcbang_ip`;
CREATE TABLE `t_pcbang_ip` (
  `ip` varchar(15) NOT NULL DEFAULT '',
  `expire_time` datetime NOT NULL,
  `grade` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ip`,`expire_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_pcbang_userindex`;
CREATE TABLE `t_pcbang_userindex` (
  `user_index` int(11) NOT NULL DEFAULT 0,
  `expire_time` datetime NOT NULL,
  `grade` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_index`,`expire_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_pcc_error`;
CREATE TABLE `t_pcc_error` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_idname` varchar(30) NOT NULL DEFAULT '',
  `a_old_ip` varchar(16) NOT NULL DEFAULT '',
  `a_new_ip` varchar(16) DEFAULT NULL,
  `a_error` varchar(30) NOT NULL DEFAULT '',
  `a_update_date` datetime NOT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_pcc_users`;
CREATE TABLE `t_pcc_users` (
  `a_index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `a_idname` varchar(30) NOT NULL DEFAULT '',
  `a_passwd` varchar(50) NOT NULL DEFAULT '',
  `a_connect` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `a_mac` varchar(20) DEFAULT NULL,
  `a_admin` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`),
  KEY `a_idname` (`a_idname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_promotion_key`;
CREATE TABLE `t_promotion_key` (
  `a_index` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `a_strKey` varchar(25) NOT NULL DEFAULT '0',
  `a_user_idx` int(11) unsigned NOT NULL DEFAULT 0,
  `a_enable` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `a_kind` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `a_use_char_idx` int(11) unsigned NOT NULL DEFAULT 0,
  `a_use_date` datetime NOT NULL,
  PRIMARY KEY (`a_index`),
  KEY `a_strKey` (`a_strKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `t_ranking_adult`;
CREATE TABLE `t_ranking_adult` (
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

DROP TABLE IF EXISTS `t_requital_check0`;
CREATE TABLE `t_requital_check0` (
  `a_index` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `a_user_index` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`),
  KEY `user_idx` (`a_user_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_requital_check1`;
CREATE TABLE `t_requital_check1` (
  `a_index` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `a_user_index` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`),
  KEY `a_index` (`a_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_reserv_name_3`;
CREATE TABLE `t_reserv_name_3` (
  `a_index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_server_cur` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `a_name_cur` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `a_server_new` tinyint(3) unsigned NOT NULL DEFAULT 3,
  `a_name_new` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`a_index`),
  UNIQUE KEY `idx_rhkdghTlchlrdh` (`a_char_idx`,`a_server_cur`),
  UNIQUE KEY `a_new_name` (`a_name_new`,`a_server_new`),
  KEY `idx_user_id` (`a_user_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_spn_usr`;
CREATE TABLE `t_spn_usr` (
  `a_index` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `a_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `a_nation` varchar(50) DEFAULT NULL,
  `a_ip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_testchar`;
CREATE TABLE `t_testchar` (
  `color` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_users_block`;
CREATE TABLE `t_users_block` (
  `a_index` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `a_idname` varchar(30) DEFAULT NULL,
  `a_portal_idx` int(11) NOT NULL DEFAULT -1,
  `a_game_idx` int(11) DEFAULT -1,
  `a_admin_name` varchar(30) DEFAULT 'admin',
  `a_contents` text DEFAULT NULL,
  `a_reason` int(11) NOT NULL DEFAULT 0,
  `a_modify_date` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `a_detail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`),
  KEY `a_idname` (`a_idname`,`a_portal_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET FOREIGN_KEY_CHECKS=1;
