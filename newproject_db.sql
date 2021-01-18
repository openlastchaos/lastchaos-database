
SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `t_affinity_keep`;
CREATE TABLE `t_affinity_keep` (
  `a_charidx` int(11) NOT NULL DEFAULT 0,
  `a_affinity_idx` int(11) NOT NULL DEFAULT 0,
  `a_point` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_charidx`,`a_affinity_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_affinity_reward_step`;
CREATE TABLE `t_affinity_reward_step` (
  `a_charidx` int(11) NOT NULL DEFAULT 0,
  `a_npcidx` int(11) NOT NULL DEFAULT 0,
  `a_reward_step` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_charidx`,`a_npcidx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_apets`;
CREATE TABLE `t_apets` (
  `a_index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `a_owner` int(11) NOT NULL DEFAULT 0,
  `a_enable` char(1) NOT NULL DEFAULT '0',
  `a_seal` int(11) NOT NULL DEFAULT 1,
  `a_proto_index` int(11) NOT NULL DEFAULT 0,
  `a_name` varchar(20) NOT NULL DEFAULT '',
  `a_create_date` datetime NOT NULL,
  `a_lastupdate_date` datetime NOT NULL,
  `a_level` int(11) NOT NULL DEFAULT 0,
  `a_exp` bigint(20) NOT NULL DEFAULT 0,
  `a_remain_stat` int(11) NOT NULL DEFAULT 0,
  `a_plus_str` int(11) NOT NULL DEFAULT 0,
  `a_plus_con` int(11) NOT NULL DEFAULT 0,
  `a_plus_dex` int(11) NOT NULL DEFAULT 0,
  `a_plus_int` int(11) NOT NULL DEFAULT 0,
  `a_skill_point` int(11) NOT NULL DEFAULT 0,
  `a_skill_index` varchar(255) NOT NULL DEFAULT '',
  `a_skill_level` varchar(255) NOT NULL DEFAULT '',
  `a_hp` int(11) NOT NULL DEFAULT 0,
  `a_mp` int(11) NOT NULL DEFAULT 0,
  `a_faith` int(11) NOT NULL DEFAULT 0,
  `a_stm` int(11) NOT NULL DEFAULT 0,
  `a_ai_enable` char(1) NOT NULL DEFAULT '0',
  `a_ai_slot` int(11) NOT NULL DEFAULT 6,
  `a_accFaith` int(10) unsigned DEFAULT 0,
  `a_accStm` int(10) unsigned DEFAULT 0,
  `a_accExp` bigint(20) NOT NULL DEFAULT 0,
  `a_cooltime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`),
  KEY `ownerIndex` (`a_owner`),
  KEY `ownereanbleIndex` (`a_owner`,`a_enable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_apets_ai`;
CREATE TABLE `t_apets_ai` (
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_apet_idx` int(10) unsigned NOT NULL DEFAULT 0,
  `a_item_idx0` int(11) DEFAULT -1,
  `a_skill_idx0` int(11) DEFAULT -1,
  `a_skill_type0` tinyint(4) DEFAULT -1,
  `a_use0` char(1) DEFAULT '0',
  `a_item_idx1` int(11) DEFAULT -1,
  `a_skill_idx1` int(11) DEFAULT -1,
  `a_skill_type1` tinyint(4) DEFAULT -1,
  `a_use1` char(1) DEFAULT '0',
  `a_item_idx2` int(11) DEFAULT -1,
  `a_skill_idx2` int(11) DEFAULT -1,
  `a_skill_type2` tinyint(4) DEFAULT -1,
  `a_use2` char(1) DEFAULT '0',
  `a_item_idx3` int(11) DEFAULT -1,
  `a_skill_idx3` int(11) DEFAULT -1,
  `a_skill_type3` tinyint(4) DEFAULT -1,
  `a_use3` char(1) DEFAULT '0',
  `a_item_idx4` int(11) DEFAULT -1,
  `a_skill_idx4` int(11) DEFAULT -1,
  `a_skill_type4` tinyint(4) DEFAULT -1,
  `a_use4` char(1) DEFAULT '0',
  `a_item_idx5` int(11) DEFAULT -1,
  `a_skill_idx5` int(11) DEFAULT -1,
  `a_skill_type5` tinyint(4) DEFAULT -1,
  `a_use5` char(1) DEFAULT '0',
  PRIMARY KEY (`a_char_idx`,`a_apet_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_apets_inven`;
CREATE TABLE `t_apets_inven` (
  `a_apet_idx` int(11) NOT NULL DEFAULT 0,
  `a_item_idx0` int(11) NOT NULL DEFAULT -1,
  `a_plus0` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos0` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag0` int(11) NOT NULL DEFAULT 0,
  `a_serial0` varchar(255) NOT NULL DEFAULT '0',
  `a_count0` bigint(20) NOT NULL DEFAULT 0,
  `a_used0` int(11) NOT NULL DEFAULT -1,
  `a_used0_2` int(11) DEFAULT -1,
  `a_item0_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_idx1` int(11) NOT NULL DEFAULT -1,
  `a_plus1` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos1` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag1` int(11) NOT NULL DEFAULT 0,
  `a_serial1` varchar(255) NOT NULL DEFAULT '0',
  `a_count1` bigint(20) NOT NULL DEFAULT 0,
  `a_used1` int(11) NOT NULL DEFAULT -1,
  `a_used1_2` int(11) DEFAULT -1,
  `a_item1_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_idx2` int(11) NOT NULL DEFAULT -1,
  `a_plus2` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos2` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag2` int(11) NOT NULL DEFAULT 0,
  `a_serial2` varchar(255) NOT NULL DEFAULT '0',
  `a_count2` bigint(20) NOT NULL DEFAULT 0,
  `a_used2` int(11) NOT NULL DEFAULT -1,
  `a_used2_2` int(11) DEFAULT -1,
  `a_item2_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_idx3` int(11) NOT NULL DEFAULT -1,
  `a_plus3` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos3` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag3` int(11) NOT NULL DEFAULT 0,
  `a_serial3` varchar(255) NOT NULL DEFAULT '0',
  `a_count3` bigint(20) NOT NULL DEFAULT 0,
  `a_used3` int(11) NOT NULL DEFAULT -1,
  `a_used3_2` int(11) DEFAULT -1,
  `a_item3_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option4` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_apet_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_assist`;
CREATE TABLE `t_assist` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_help_item` varchar(255) NOT NULL DEFAULT '',
  `a_help_skill` varchar(255) NOT NULL DEFAULT '',
  `a_help_level` varchar(255) NOT NULL DEFAULT '',
  `a_help_remain` varchar(255) NOT NULL DEFAULT '',
  `a_help_remaincount` varchar(255) NOT NULL DEFAULT '0',
  `a_help_hit0` varchar(255) NOT NULL DEFAULT '',
  `a_help_hit1` varchar(255) NOT NULL DEFAULT '',
  `a_help_hit2` varchar(255) NOT NULL DEFAULT '',
  `a_curse_item` varchar(255) NOT NULL DEFAULT '',
  `a_curse_skill` varchar(255) NOT NULL DEFAULT '',
  `a_curse_level` varchar(255) NOT NULL DEFAULT '',
  `a_curse_remain` varchar(255) NOT NULL DEFAULT '',
  `a_curse_remaincount` varchar(255) NOT NULL DEFAULT '0',
  `a_curse_hit0` varchar(255) NOT NULL DEFAULT '',
  `a_curse_hit1` varchar(255) NOT NULL DEFAULT '',
  `a_curse_hit2` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_assist_abstime`;
CREATE TABLE `t_assist_abstime` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_item_index` int(11) NOT NULL DEFAULT 0,
  `a_skill_index` int(11) NOT NULL DEFAULT 0,
  `a_skill_level` int(11) NOT NULL DEFAULT 0,
  `a_hit0` int(1) NOT NULL DEFAULT 0,
  `a_hit1` int(1) NOT NULL DEFAULT 0,
  `a_hit2` int(1) NOT NULL DEFAULT 0,
  `a_end_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`),
  KEY `idx_char_index` (`a_char_index`),
  KEY `idx_end_time` (`a_end_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_attendance_exp_system`;
CREATE TABLE `t_attendance_exp_system` (
  `a_index` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `a_char_index` int(11) unsigned NOT NULL DEFAULT 0,
  `a_last_date` date DEFAULT NULL,
  `a_acc_count` int(11) DEFAULT NULL,
  `a_max_acc` int(11) unsigned DEFAULT 0,
  `a_last_reward_point` int(11) DEFAULT 0,
  PRIMARY KEY (`a_index`),
  KEY `charIndex` (`a_char_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_auto_give`;
CREATE TABLE `t_auto_give` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_item_index` int(11) NOT NULL DEFAULT 0,
  `a_item_plus` int(11) NOT NULL DEFAULT 0,
  `a_item_used` int(11) NOT NULL DEFAULT -1,
  `a_item_flag` int(11) NOT NULL DEFAULT 0,
  `a_item_count` bigint(20) NOT NULL DEFAULT 1,
  `a_item_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_used_2` int(11) DEFAULT -1,
  `a_item_socket` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`a_index`),
  KEY `idx_char_index` (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_block_friend`;
CREATE TABLE `t_block_friend` (
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_block_idx_list` varchar(255) NOT NULL DEFAULT '',
  `a_block_name_list` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`a_char_idx`),
  UNIQUE KEY `a_char_index` (`a_char_idx`),
  KEY `a_char_index_2` (`a_char_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_cashitemdate`;
CREATE TABLE `t_cashitemdate` (
  `a_portal_idx` int(10) unsigned NOT NULL DEFAULT 0,
  `a_mempos` datetime NOT NULL,
  `a_charslot0` datetime NOT NULL,
  `a_charslot1` datetime NOT NULL,
  `a_stashext` datetime NOT NULL,
  `a_mempos_new` bigint(10) NOT NULL DEFAULT 0,
  `a_charslot0_new` bigint(10) NOT NULL DEFAULT 0,
  `a_charslot1_new` bigint(10) NOT NULL DEFAULT 0,
  `a_stashext_new` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_portal_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_castle`;
CREATE TABLE `t_castle` (
  `a_zone_index` int(11) NOT NULL DEFAULT 0,
  `a_last_war_time` int(11) NOT NULL DEFAULT 0,
  `a_state` int(11) NOT NULL DEFAULT 0,
  `a_next_war_time` int(11) NOT NULL DEFAULT 0,
  `a_owner_guild_index` int(11) NOT NULL DEFAULT 0,
  `a_owner_guild_name` varchar(50) NOT NULL DEFAULT '',
  `a_owner_char_index` int(11) NOT NULL DEFAULT 0,
  `a_owner_char_name` varchar(50) NOT NULL DEFAULT '',
  `a_tax_guild_index` int(11) NOT NULL DEFAULT 0,
  `a_tax_item` bigint(20) NOT NULL DEFAULT 0,
  `a_tax_produce` bigint(20) NOT NULL DEFAULT 0,
  `a_tax_wday` tinyint(4) NOT NULL DEFAULT -1,
  PRIMARY KEY (`a_zone_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_castle_dungeon`;
CREATE TABLE `t_castle_dungeon` (
  `a_zone_index` int(11) NOT NULL DEFAULT 0,
  `a_tax_rate` int(11) DEFAULT 100,
  `a_env_rate` int(11) DEFAULT 50,
  `a_mop_rate` int(11) DEFAULT 50,
  `a_hunt_rate` int(11) DEFAULT 0,
  `a_mode` tinyint(4) DEFAULT 0,
  `a_change_normal_time` int(11) DEFAULT 0,
  PRIMARY KEY (`a_zone_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_castle_guard`;
CREATE TABLE `t_castle_guard` (
  `a_zone_num` int(11) DEFAULT NULL,
  `a_npc_idx` int(11) DEFAULT NULL,
  `a_pos_x` float DEFAULT NULL,
  `a_pos_z` float DEFAULT NULL,
  `a_pos_h` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_castle_join`;
CREATE TABLE `t_castle_join` (
  `a_zone_index` int(11) NOT NULL DEFAULT 0,
  `a_index` int(11) NOT NULL DEFAULT 0,
  `a_guild` tinyint(4) NOT NULL DEFAULT 0,
  `a_attack` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`,`a_zone_index`,`a_guild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_castle_rebrith`;
CREATE TABLE `t_castle_rebrith` (
  `a_zone_num` int(11) DEFAULT NULL,
  `a_npc_idx` int(11) DEFAULT NULL,
  `a_guild_idx` int(11) DEFAULT NULL,
  `a_guild_name` varchar(51) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_castle_reinforce`;
CREATE TABLE `t_castle_reinforce` (
  `a_zone_num` int(11) DEFAULT NULL,
  `a_type` tinyint(4) DEFAULT NULL,
  `a_step` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_castle_tower`;
CREATE TABLE `t_castle_tower` (
  `a_zone_num` int(11) DEFAULT NULL,
  `rowid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_characters`;
CREATE TABLE `t_characters` (
  `a_index` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `a_user_index` int(11) NOT NULL DEFAULT 0,
  `a_server` smallint(6) NOT NULL DEFAULT 0,
  `a_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `a_nick` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'a_name',
  `a_enable` tinyint(1) NOT NULL DEFAULT 1,
  `a_datestamp` datetime DEFAULT NULL,
  `a_lcdatestamp` int(11) NOT NULL DEFAULT 0,
  `a_createdate` datetime NOT NULL,
  `a_deletedelay` int(11) NOT NULL DEFAULT 0,
  `a_admin` tinyint(4) NOT NULL DEFAULT 10,
  `a_flag` int(11) NOT NULL DEFAULT 0,
  `a_job` tinyint(4) NOT NULL DEFAULT 0,
  `a_hair_style` tinyint(4) NOT NULL DEFAULT 1,
  `a_face_style` tinyint(4) NOT NULL DEFAULT 1,
  `a_level` int(11) NOT NULL DEFAULT 1,
  `a_exp` bigint(20) NOT NULL DEFAULT 0,
  `a_str` int(11) NOT NULL DEFAULT 0,
  `a_dex` int(11) NOT NULL DEFAULT 0,
  `a_int` int(11) NOT NULL DEFAULT 0,
  `a_con` int(11) NOT NULL DEFAULT 0,
  `a_hp` int(11) NOT NULL DEFAULT 0,
  `a_max_hp` int(11) NOT NULL DEFAULT 0,
  `a_mp` int(11) NOT NULL DEFAULT 0,
  `a_max_mp` int(11) NOT NULL DEFAULT 0,
  `a_statpt_remain` int(11) NOT NULL DEFAULT 0,
  `a_statpt_str` int(11) NOT NULL DEFAULT 0,
  `a_statpt_dex` int(11) NOT NULL DEFAULT 0,
  `a_statpt_con` int(11) NOT NULL DEFAULT 0,
  `a_statpt_int` int(11) NOT NULL DEFAULT 0,
  `a_skill_point` bigint(20) NOT NULL DEFAULT 0,
  `a_blood_point` int(11) NOT NULL DEFAULT 5000,
  `a_ep` int(11) DEFAULT 0,
  `a_active_skill_index` varchar(255) NOT NULL DEFAULT '',
  `a_active_skill_level` varchar(255) NOT NULL DEFAULT '',
  `a_passive_skill_index` varchar(255) NOT NULL DEFAULT '',
  `a_passive_skill_level` varchar(255) NOT NULL DEFAULT '',
  `a_etc_skill_index` varchar(255) NOT NULL DEFAULT '',
  `a_etc_skill_level` varchar(255) NOT NULL DEFAULT '',
  `a_seal_skill_index` varchar(255) NOT NULL DEFAULT '',
  `a_seal_skill_exp` varchar(255) NOT NULL DEFAULT '',
  `a_quest_index` varchar(255) NOT NULL DEFAULT '',
  `a_quest_value` varchar(255) NOT NULL DEFAULT '',
  `a_quest_complete` varchar(255) NOT NULL DEFAULT '',
  `a_quest_abandon` varchar(255) NOT NULL DEFAULT '',
  `a_was_x` float NOT NULL DEFAULT 0,
  `a_was_z` float NOT NULL DEFAULT 0,
  `a_was_h` float NOT NULL DEFAULT 0,
  `a_was_r` float NOT NULL DEFAULT 0,
  `a_was_yLayer` int(11) NOT NULL DEFAULT -1,
  `a_was_zone` int(11) NOT NULL DEFAULT -1,
  `a_was_area` int(11) NOT NULL DEFAULT -1,
  `a_wearing` varchar(255) NOT NULL DEFAULT '',
  `a_silence_pulse` int(11) NOT NULL DEFAULT 0,
  `a_sskill` varchar(255) NOT NULL DEFAULT '',
  `a_pkpenalty` int(11) NOT NULL DEFAULT 0,
  `a_pkcount` int(11) NOT NULL DEFAULT 0,
  `a_pkrecover` int(11) NOT NULL DEFAULT 0,
  `a_pkpenaltyhp` int(11) NOT NULL DEFAULT 0,
  `a_pkpenaltymp` int(11) NOT NULL DEFAULT 0,
  `a_guildindate` int(11) NOT NULL DEFAULT 0,
  `a_pluseffect_option` tinyint(4) NOT NULL DEFAULT 0,
  `a_teach_idx` varchar(255) NOT NULL DEFAULT ' -1 -1 -1 -1 -1 -1 -1 -1',
  `a_teach_sec` varchar(255) NOT NULL DEFAULT ' 0 0 0 0 0 0 0 0',
  `a_teach_type` tinyint(1) NOT NULL DEFAULT -1,
  `a_fame` int(11) NOT NULL DEFAULT 0,
  `a_teach_list` tinyint(1) NOT NULL DEFAULT 0,
  `a_teach_complete` int(11) NOT NULL DEFAULT 0,
  `a_teach_fail` int(11) NOT NULL DEFAULT 0,
  `a_use_sp` int(11) NOT NULL DEFAULT 0,
  `a_total_sp` int(11) NOT NULL DEFAULT 0,
  `a_loseexp` bigint(20) unsigned NOT NULL DEFAULT 0,
  `a_losesp` bigint(20) unsigned NOT NULL DEFAULT 0,
  `a_job2` tinyint(4) NOT NULL DEFAULT 0,
  `a_subjob` int(10) unsigned NOT NULL DEFAULT 0,
  `a_pd3time` int(11) NOT NULL DEFAULT 0,
  `a_superstone` int(11) NOT NULL DEFAULT 0,
  `a_guardian` int(11) NOT NULL DEFAULT 0,
  `a_etc_event` bigint(10) unsigned NOT NULL DEFAULT 0,
  `a_nas` bigint(10) unsigned NOT NULL DEFAULT 0,
  `a_lastpktime` int(11) NOT NULL DEFAULT -1,
  `a_phoenix` int(11) NOT NULL DEFAULT -1,
  `a_title_index` smallint(6) NOT NULL DEFAULT 0,
  `a_newtuto_complete` int(4) NOT NULL DEFAULT 1,
  `a_exp_weekly` bigint(20) unsigned NOT NULL DEFAULT 0,
  `a_levelup_date` datetime DEFAULT NULL,
  `a_cp` int(11) unsigned DEFAULT 0,
  `a_cp_lastupdate` date DEFAULT NULL,
  `a_trans_time` int(11) NOT NULL DEFAULT 0,
  `a_index_old` int(10) NOT NULL DEFAULT 0,
  `a_server_old` int(10) NOT NULL DEFAULT 0,
  `a_syndicate_type` int(11) DEFAULT NULL,
  `a_syndicate_point_k` bigint(20) DEFAULT NULL,
  `a_syndicate_point_d` bigint(20) DEFAULT NULL,
  `a_syndicate_join_bit` int(11) DEFAULT NULL,
  `a_attendance_assure` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`a_index`),
  UNIQUE KEY `idx_name` (`a_name`,`a_server`),
  UNIQUE KEY `idx_nick` (`a_server`,`a_nick`),
  KEY `NewIndex` (`a_user_index`,`a_server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_characters_factory`;
CREATE TABLE `t_characters_factory` (
  `a_char_idx` int(11) unsigned NOT NULL DEFAULT 0,
  `a_factory_idx` text DEFAULT NULL,
  PRIMARY KEY (`a_char_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='캐릭터의 제작가능 아이템';

DROP TABLE IF EXISTS `t_characters_guildpoint`;
CREATE TABLE `t_characters_guildpoint` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_guild_exp` int(11) DEFAULT 0,
  `a_guild_fame` int(11) DEFAULT 0,
  PRIMARY KEY (`a_char_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_create_combo`;
CREATE TABLE `t_create_combo` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_date` datetime NOT NULL,
  `a_server` int(11) NOT NULL DEFAULT 0,
  `a_charindex` int(11) NOT NULL DEFAULT 0,
  `a_areaindex` int(11) NOT NULL DEFAULT 0,
  `a_comboindex` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_cubepoint`;
CREATE TABLE `t_cubepoint` (
  `a_week_date` int(11) NOT NULL DEFAULT 0,
  `a_guild_index` int(11) NOT NULL DEFAULT 0,
  `a_cubepoint` int(11) NOT NULL DEFAULT 0,
  `a_update_date` datetime NOT NULL,
  PRIMARY KEY (`a_week_date`,`a_guild_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_cubepoint_personal`;
CREATE TABLE `t_cubepoint_personal` (
  `a_week_date` int(11) NOT NULL DEFAULT 0,
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_cubepoint` int(11) NOT NULL DEFAULT 0,
  `a_update_date` datetime NOT NULL,
  PRIMARY KEY (`a_week_date`,`a_char_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_cuberank`;
CREATE TABLE `t_cuberank` (
  `a_insert_week` int(11) NOT NULL DEFAULT 0,
  `a_type` int(11) NOT NULL DEFAULT 0,
  `a_rank` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `a_typeidx` int(11) NOT NULL DEFAULT 0,
  `a_cubepoint` int(11) NOT NULL DEFAULT 0,
  `a_reward` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_insert_week`,`a_type`,`a_rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event_2007_parentsday`;
CREATE TABLE `t_event_2007_parentsday` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_guild_idx` int(11) NOT NULL DEFAULT 0,
  `a_guild_name` varchar(50) NOT NULL DEFAULT '',
  `a_point` int(11) NOT NULL DEFAULT 0,
  `a_used_point` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`),
  UNIQUE KEY `a_guild_idx` (`a_guild_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event_char_birthday`;
CREATE TABLE `t_event_char_birthday` (
  `a_char_idx` int(11) unsigned NOT NULL DEFAULT 0,
  `a_create_date` date NOT NULL,
  `a_gift_date` date NOT NULL,
  `a_count` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_idx`),
  UNIQUE KEY `a_char_idx` (`a_char_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='캐릭터 1주년 생일 이벤트';

DROP TABLE IF EXISTS `t_event_dev`;
CREATE TABLE `t_event_dev` (
  `a_group_index` int(3) NOT NULL DEFAULT 0,
  `a_subgroup_index` int(3) NOT NULL DEFAULT 0,
  `a_event_type` int(3) NOT NULL DEFAULT 0,
  `a_moonstone` bigint(3) DEFAULT 0,
  PRIMARY KEY (`a_event_type`,`a_group_index`,`a_subgroup_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event_gomdori_2007`;
CREATE TABLE `t_event_gomdori_2007` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_first_lose` int(11) NOT NULL DEFAULT 0,
  `a_first_win` int(11) NOT NULL DEFAULT 0,
  `a_total` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event_halloween2007`;
CREATE TABLE `t_event_halloween2007` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_update_date` datetime NOT NULL,
  PRIMARY KEY (`a_char_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event_may2007`;
CREATE TABLE `t_event_may2007` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_eventIndex` int(11) NOT NULL DEFAULT 0,
  `a_itemIndex` int(11) NOT NULL DEFAULT 0,
  `a_date` date NOT NULL,
  `a_charIndex` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event_searchfriend`;
CREATE TABLE `t_event_searchfriend` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_char_nick` varchar(50) NOT NULL DEFAULT '0',
  `a_char_good` int(3) NOT NULL DEFAULT 0,
  `a_dormant_index` int(11) NOT NULL DEFAULT 0,
  `a_dormant_name` varchar(50) NOT NULL DEFAULT '0',
  `a_dormant_nick` varchar(50) NOT NULL DEFAULT '0',
  `a_dormant_total_time` int(11) NOT NULL DEFAULT 0,
  `a_dormant_select` int(2) NOT NULL DEFAULT 0,
  `a_dormant_good` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`,`a_dormant_index`),
  KEY `a_char_index` (`a_char_index`),
  KEY `idx_dormant` (`a_dormant_index`,`a_dormant_select`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event_searchfriend_date`;
CREATE TABLE `t_event_searchfriend_date` (
  `a_index` int(11) NOT NULL DEFAULT 0,
  `a_datestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event_worldcup_attendance`;
CREATE TABLE `t_event_worldcup_attendance` (
  `a_char_idx` int(11) unsigned NOT NULL DEFAULT 0,
  `a_date` date NOT NULL,
  UNIQUE KEY `a_char_idx` (`a_char_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event_worldcup_korea`;
CREATE TABLE `t_event_worldcup_korea` (
  `a_char_idx` int(11) unsigned NOT NULL DEFAULT 0,
  `a_date` date NOT NULL,
  UNIQUE KEY `a_char_idx` (`a_char_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_event_worldcup_toto`;
CREATE TABLE `t_event_worldcup_toto` (
  `a_char_idx` int(11) unsigned NOT NULL DEFAULT 0,
  `a_item_idx` int(11) NOT NULL DEFAULT -1,
  `a_result` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `a_date` datetime NOT NULL,
  UNIQUE KEY `a_user_idx` (`a_char_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_express_system`;
CREATE TABLE `t_express_system` (
  `a_index` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_item_index` int(11) NOT NULL DEFAULT -1,
  `a_plus` int(11) NOT NULL DEFAULT 0,
  `a_plus2` int(11) NOT NULL DEFAULT 0,
  `a_flag` int(11) NOT NULL DEFAULT 0,
  `a_serial` varchar(255) NOT NULL DEFAULT '',
  `a_item_count` int(11) NOT NULL DEFAULT 0,
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
  `a_socket0` int(11) DEFAULT -1,
  `a_socket1` int(11) DEFAULT -1,
  `a_socket2` int(11) DEFAULT -1,
  `a_socket3` int(11) DEFAULT -1,
  `a_socket4` int(11) DEFAULT -1,
  `a_socket5` int(11) DEFAULT -1,
  `a_socket6` int(11) DEFAULT -1,
  `a_item_origin_var0` int(11) NOT NULL DEFAULT 0,
  `a_item_origin_var1` int(11) NOT NULL DEFAULT 0,
  `a_item_origin_var2` int(11) NOT NULL DEFAULT 0,
  `a_item_origin_var3` int(11) NOT NULL DEFAULT 0,
  `a_item_origin_var4` int(11) NOT NULL DEFAULT 0,
  `a_item_origin_var5` int(11) NOT NULL DEFAULT 0,
  `a_now_dur` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_nas` bigint(20) unsigned DEFAULT 0,
  `a_send_type` int(11) unsigned DEFAULT 0,
  `a_sender` varchar(16) NOT NULL DEFAULT '',
  `a_registe_date` datetime NOT NULL,
  `a_expire_date` datetime NOT NULL,
  `a_tradeagent_nas` bigint(20) DEFAULT -1,
  `a_tradeagent_itemIndex` int(11) DEFAULT -1,
  `a_tradeagent_itemCount` int(11) DEFAULT -1,
  PRIMARY KEY (`a_index`),
  KEY `idx_char_index` (`a_char_index`),
  KEY `idx_expire_date` (`a_expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_extendcharslot`;
CREATE TABLE `t_extendcharslot` (
  `a_user_index` int(10) NOT NULL DEFAULT 0,
  `a_use_datetime` datetime NOT NULL,
  `a_end_datetime` datetime NOT NULL,
  UNIQUE KEY `a_user_index` (`a_user_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_extend_guild`;
CREATE TABLE `t_extend_guild` (
  `a_guild_index` int(11) NOT NULL DEFAULT 0,
  `a_guild_point` int(11) DEFAULT 0,
  `a_guild_maxmember` int(11) NOT NULL DEFAULT 10,
  `a_guild_incline` tinyint(3) unsigned DEFAULT 0,
  `a_guild_land` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `a_skill_index` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `a_skill_level` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `a_activeskill_index` varchar(255) DEFAULT NULL,
  `a_activeskill_level` varchar(255) DEFAULT NULL,
  `a_passiveskill_index` varchar(255) DEFAULT NULL,
  `a_passiveskill_level` varchar(255) DEFAULT NULL,
  `a_etcskill_index` varchar(255) DEFAULT NULL,
  `a_etcskill_level` varchar(255) DEFAULT NULL,
  `a_accumulate_point` int(11) NOT NULL DEFAULT 0,
  `a_gm_row` tinyint(4) NOT NULL DEFAULT -1,
  `a_gm_col` tinyint(4) NOT NULL DEFAULT -1,
  `a_bg_row` tinyint(4) NOT NULL DEFAULT -1,
  `a_bg_col` tinyint(4) NOT NULL DEFAULT -1,
  `a_marktime` int(10) NOT NULL DEFAULT -1,
  `a_kick_status` int(10) NOT NULL DEFAULT 0,
  `a_kick_request_char_index` int(10) NOT NULL DEFAULT 0,
  `a_kick_request_time` int(11) NOT NULL DEFAULT 0,
  `a_lastdate_change_boss` int(11) NOT NULL DEFAULT 0,
  `a_contribute_exp_min` int(11) NOT NULL DEFAULT 0,
  `a_contribute_exp_max` int(11) NOT NULL DEFAULT 0,
  `a_contribute_fame_min` int(11) NOT NULL DEFAULT 0,
  `a_contribute_fame_max` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_guild_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_extend_guildmember`;
CREATE TABLE `t_extend_guildmember` (
  `a_guild_index` int(11) NOT NULL DEFAULT 0,
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_position_name` varchar(30) DEFAULT NULL,
  `a_contribute_exp` int(11) DEFAULT 0,
  `a_contribute_fame` int(11) DEFAULT 0,
  `a_point` int(11) DEFAULT 0,
  `a_stash_auth` tinyint(4) NOT NULL DEFAULT 0,
  `a_contribute_exp_min` int(11) unsigned DEFAULT 0,
  `a_contribute_exp_max` int(11) unsigned DEFAULT 0,
  `a_contribute_fame_min` int(11) unsigned DEFAULT 0,
  `a_contribute_fame_max` int(11) unsigned DEFAULT 0,
  PRIMARY KEY (`a_guild_index`,`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_friend00`;
CREATE TABLE `t_friend00` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_friend_index` int(11) NOT NULL DEFAULT 0,
  `a_friend_name` varchar(50) NOT NULL DEFAULT '0',
  `a_friend_job` int(11) NOT NULL DEFAULT 0,
  `a_group_index` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`,`a_friend_index`),
  KEY `idx_char_index` (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_friend01`;
CREATE TABLE `t_friend01` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_friend_index` int(11) NOT NULL DEFAULT 0,
  `a_friend_name` varchar(50) NOT NULL DEFAULT '0',
  `a_friend_job` int(11) NOT NULL DEFAULT 0,
  `a_group_index` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`,`a_friend_index`),
  KEY `idx_char_index` (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_friend02`;
CREATE TABLE `t_friend02` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_friend_index` int(11) NOT NULL DEFAULT 0,
  `a_friend_name` varchar(50) NOT NULL DEFAULT '0',
  `a_friend_job` int(11) NOT NULL DEFAULT 0,
  `a_group_index` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`,`a_friend_index`),
  KEY `idx_char_index` (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_friend03`;
CREATE TABLE `t_friend03` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_friend_index` int(11) NOT NULL DEFAULT 0,
  `a_friend_name` varchar(50) NOT NULL DEFAULT '0',
  `a_friend_job` int(11) NOT NULL DEFAULT 0,
  `a_group_index` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`,`a_friend_index`),
  KEY `idx_char_index` (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_friend04`;
CREATE TABLE `t_friend04` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_friend_index` int(11) NOT NULL DEFAULT 0,
  `a_friend_name` varchar(50) NOT NULL DEFAULT '0',
  `a_friend_job` int(11) NOT NULL DEFAULT 0,
  `a_group_index` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`,`a_friend_index`),
  KEY `idx_char_index` (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_friend05`;
CREATE TABLE `t_friend05` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_friend_index` int(11) NOT NULL DEFAULT 0,
  `a_friend_name` varchar(50) NOT NULL DEFAULT '0',
  `a_friend_job` int(11) NOT NULL DEFAULT 0,
  `a_group_index` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`,`a_friend_index`),
  KEY `idx_char_index` (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_friend06`;
CREATE TABLE `t_friend06` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_friend_index` int(11) NOT NULL DEFAULT 0,
  `a_friend_name` varchar(50) NOT NULL DEFAULT '0',
  `a_friend_job` int(11) NOT NULL DEFAULT 0,
  `a_group_index` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`,`a_friend_index`),
  KEY `idx_char_index` (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_friend07`;
CREATE TABLE `t_friend07` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_friend_index` int(11) NOT NULL DEFAULT 0,
  `a_friend_name` varchar(50) NOT NULL DEFAULT '0',
  `a_friend_job` int(11) NOT NULL DEFAULT 0,
  `a_group_index` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`,`a_friend_index`),
  KEY `idx_char_index` (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_friend08`;
CREATE TABLE `t_friend08` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_friend_index` int(11) NOT NULL DEFAULT 0,
  `a_friend_name` varchar(50) NOT NULL DEFAULT '0',
  `a_friend_job` int(11) NOT NULL DEFAULT 0,
  `a_group_index` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`,`a_friend_index`),
  KEY `idx_char_index` (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_friend09`;
CREATE TABLE `t_friend09` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_friend_index` int(11) NOT NULL DEFAULT 0,
  `a_friend_name` varchar(50) NOT NULL DEFAULT '0',
  `a_friend_job` int(11) NOT NULL DEFAULT 0,
  `a_group_index` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`,`a_friend_index`),
  KEY `idx_char_index` (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_gm`;
CREATE TABLE `t_gm` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_server` int(11) DEFAULT NULL,
  `a_sub_server` int(11) DEFAULT NULL,
  `a_command` varchar(255) DEFAULT NULL,
  `a_start_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_gps_data`;
CREATE TABLE `t_gps_data` (
  `a_pursuerIndex` int(11) NOT NULL DEFAULT 0,
  `a_targetIndex` int(11) NOT NULL DEFAULT 0,
  `a_targetName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`a_pursuerIndex`,`a_targetIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_guardian_gift`;
CREATE TABLE `t_guardian_gift` (
  `a_char_idx` int(11) unsigned NOT NULL DEFAULT 0,
  `a_gift_count` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_idx`),
  UNIQUE KEY `a_char_idx` (`a_char_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='후견인 보상 내역';

DROP TABLE IF EXISTS `t_guild`;
CREATE TABLE `t_guild` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_name` varchar(50) NOT NULL DEFAULT '',
  `a_level` int(11) NOT NULL DEFAULT 1,
  `a_enable` tinyint(4) NOT NULL DEFAULT 1,
  `a_createdate` datetime NOT NULL,
  `a_recentdate` datetime NOT NULL,
  `a_battle_index` int(11) NOT NULL DEFAULT -1,
  `a_battle_prize` int(11) NOT NULL DEFAULT 0,
  `a_battle_zone` int(11) NOT NULL DEFAULT -1,
  `a_battle_time` int(11) NOT NULL DEFAULT 0,
  `a_battle_killcount` int(11) NOT NULL DEFAULT 0,
  `a_battle_state` tinyint(1) NOT NULL DEFAULT -1,
  `a_balance` bigint(20) NOT NULL DEFAULT 0,
  `a_server_old` smallint(6) unsigned NOT NULL DEFAULT 0,
  `a_index_old` int(11) unsigned NOT NULL DEFAULT 0,
  `a_battle_fight` int(11) unsigned DEFAULT 0,
  `a_battle_win` int(11) unsigned DEFAULT 0,
  `a_battle_lose` int(11) unsigned DEFAULT 0,
  PRIMARY KEY (`a_index`),
  UNIQUE KEY `idx_name` (`a_name`),
  KEY `idx_recentdate` (`a_recentdate`),
  KEY `idx_level` (`a_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_guildbattle_log`;
CREATE TABLE `t_guildbattle_log` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_guild_index0` int(11) NOT NULL DEFAULT 0,
  `a_guild_index1` int(11) NOT NULL DEFAULT 0,
  `a_zone` int(11) DEFAULT NULL,
  `a_battle_start` datetime DEFAULT NULL,
  `a_battle_end` datetime DEFAULT NULL,
  `a_stake_nas` int(11) DEFAULT NULL,
  `a_stake_gp` int(11) DEFAULT NULL,
  `a_result0` int(11) DEFAULT NULL,
  `a_result1` int(11) DEFAULT NULL,
  PRIMARY KEY (`a_index`,`a_guild_index0`,`a_guild_index1`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_guildmark`;
CREATE TABLE `t_guildmark` (
  `a_server` int(11) NOT NULL DEFAULT 0,
  `a_rank` int(11) NOT NULL DEFAULT 0,
  `a_idx` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_guildmember`;
CREATE TABLE `t_guildmember` (
  `a_guild_index` int(11) NOT NULL DEFAULT 0,
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_char_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `a_pos` int(11) NOT NULL DEFAULT 0,
  `a_regdate` datetime NOT NULL,
  `a_logout_date` datetime DEFAULT NULL,
  PRIMARY KEY (`a_guild_index`,`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_guild_notice`;
CREATE TABLE `t_guild_notice` (
  `a_guild_index` int(11) NOT NULL DEFAULT 0,
  `a_title` varchar(128) DEFAULT NULL,
  `a_text` text DEFAULT NULL,
  `a_date` datetime DEFAULT NULL,
  PRIMARY KEY (`a_guild_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_guild_stash`;
CREATE TABLE `t_guild_stash` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_guild_idx` int(11) NOT NULL DEFAULT 0,
  `a_item_idx` int(11) NOT NULL DEFAULT -1,
  `a_serial` varchar(255) NOT NULL DEFAULT '',
  `a_plus` int(11) NOT NULL DEFAULT 0,
  `a_flag` int(11) NOT NULL DEFAULT 0,
  `a_count` bigint(20) NOT NULL DEFAULT 0,
  `a_used` int(11) NOT NULL DEFAULT -1,
  `a_used_2` int(11) DEFAULT -1,
  `a_item_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_socket` varchar(50) NOT NULL DEFAULT '',
  `a_item_origin_0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_5` smallint(6) NOT NULL DEFAULT 0,
  `a_now_dur` smallint(5) DEFAULT 0,
  `a_max_dur` smallint(5) DEFAULT 0,
  PRIMARY KEY (`a_index`),
  KEY `idx_item_idx` (`a_item_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_guild_stash_info`;
CREATE TABLE `t_guild_stash_info` (
  `a_guild_idx` int(11) NOT NULL DEFAULT 0,
  `a_enable` int(11) DEFAULT NULL,
  `a_limitdate` datetime DEFAULT NULL,
  `a_capacity` int(11) DEFAULT 25,
  `a_nas` bigint(20) DEFAULT 0,
  PRIMARY KEY (`a_guild_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_guild_stash_log`;
CREATE TABLE `t_guild_stash_log` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_guild_idx` int(11) NOT NULL DEFAULT 0,
  `a_date` datetime NOT NULL,
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_state` varchar(50) NOT NULL DEFAULT '0',
  `a_item_idx` int(11) NOT NULL DEFAULT -1,
  `a_serial` varchar(255) NOT NULL DEFAULT '',
  `a_plus` int(11) NOT NULL DEFAULT 0,
  `a_flag` int(11) NOT NULL DEFAULT 0,
  `a_count` bigint(20) NOT NULL DEFAULT 0,
  `a_used` int(11) NOT NULL DEFAULT -1,
  `a_used_2` int(11) DEFAULT -1,
  `a_item_origin_0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_socket` varchar(50) NOT NULL DEFAULT '',
  `a_nas` bigint(20) DEFAULT 0,
  PRIMARY KEY (`a_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `t_guild_stash_log_backup`;
CREATE TABLE `t_guild_stash_log_backup` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_guild_idx` int(11) NOT NULL DEFAULT 0,
  `a_date` datetime NOT NULL,
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_state` varchar(50) NOT NULL DEFAULT '0',
  `a_item_idx` int(11) NOT NULL DEFAULT -1,
  `a_serial` varchar(255) NOT NULL DEFAULT '',
  `a_plus` int(11) NOT NULL DEFAULT 0,
  `a_flag` int(11) NOT NULL DEFAULT 0,
  `a_count` bigint(20) NOT NULL DEFAULT 0,
  `a_used` int(11) NOT NULL DEFAULT -1,
  `a_used_2` int(11) DEFAULT -1,
  `a_item_origin_0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_socket` varchar(50) NOT NULL DEFAULT '',
  `a_nas` bigint(20) DEFAULT 0,
  PRIMARY KEY (`a_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `t_guild_tax_history`;
CREATE TABLE `t_guild_tax_history` (
  `a_guild_index` int(11) NOT NULL DEFAULT 0,
  `a_indate` date NOT NULL,
  `a_money` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_guild_index`,`a_indate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_hack_characters`;
CREATE TABLE `t_hack_characters` (
  `a_index` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(11) unsigned NOT NULL DEFAULT 0,
  `a_user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `a_char_idx` int(11) unsigned NOT NULL DEFAULT 0,
  `a_char_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `a_time` datetime NOT NULL,
  `a_hacktype` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'none',
  `a_delay` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_inven00`;
CREATE TABLE `t_inven00` (
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_tab_idx` tinyint(4) NOT NULL DEFAULT 0,
  `a_row_idx` tinyint(4) NOT NULL DEFAULT 0,
  `a_item_idx0` int(11) NOT NULL DEFAULT -1,
  `a_plus0` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos0` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag0` int(11) NOT NULL DEFAULT 0,
  `a_serial0` varchar(255) NOT NULL DEFAULT '',
  `a_count0` bigint(20) NOT NULL DEFAULT 0,
  `a_used0` int(11) NOT NULL DEFAULT -1,
  `a_item_idx1` int(11) NOT NULL DEFAULT -1,
  `a_plus1` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos1` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag1` int(11) NOT NULL DEFAULT 0,
  `a_serial1` varchar(255) NOT NULL DEFAULT '',
  `a_count1` bigint(20) NOT NULL DEFAULT 0,
  `a_used1` int(11) NOT NULL DEFAULT -1,
  `a_item_idx2` int(11) NOT NULL DEFAULT -1,
  `a_plus2` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos2` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag2` int(11) NOT NULL DEFAULT 0,
  `a_serial2` varchar(255) NOT NULL DEFAULT '',
  `a_count2` bigint(20) NOT NULL DEFAULT 0,
  `a_used2` int(11) NOT NULL DEFAULT -1,
  `a_item_idx3` int(11) NOT NULL DEFAULT -1,
  `a_plus3` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos3` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag3` int(11) NOT NULL DEFAULT 0,
  `a_serial3` varchar(255) NOT NULL DEFAULT '',
  `a_count3` bigint(20) NOT NULL DEFAULT 0,
  `a_used3` int(11) NOT NULL DEFAULT -1,
  `a_item_idx4` int(11) NOT NULL DEFAULT -1,
  `a_plus4` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos4` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag4` int(11) NOT NULL DEFAULT 0,
  `a_serial4` varchar(255) NOT NULL DEFAULT '',
  `a_count4` bigint(20) NOT NULL DEFAULT 0,
  `a_used4` int(11) NOT NULL DEFAULT -1,
  `a_item0_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_used0_2` int(11) DEFAULT -1,
  `a_used1_2` int(11) DEFAULT -1,
  `a_used2_2` int(11) DEFAULT -1,
  `a_used3_2` int(11) DEFAULT -1,
  `a_used4_2` int(11) DEFAULT -1,
  `a_socket0` varchar(50) NOT NULL DEFAULT '',
  `a_socket1` varchar(50) NOT NULL DEFAULT '',
  `a_socket2` varchar(50) NOT NULL DEFAULT '',
  `a_socket3` varchar(50) NOT NULL DEFAULT '',
  `a_socket4` varchar(50) NOT NULL DEFAULT '',
  `a_item_0_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_now_dur_0` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_0` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_2` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_2` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_4` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_4` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_idx`,`a_tab_idx`,`a_row_idx`),
  KEY `idx_item` (`a_item_idx0`,`a_item_idx1`,`a_item_idx2`,`a_item_idx3`,`a_item_idx4`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_inven01`;
CREATE TABLE `t_inven01` (
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_tab_idx` tinyint(4) NOT NULL DEFAULT 0,
  `a_row_idx` tinyint(4) NOT NULL DEFAULT 0,
  `a_item_idx0` int(11) NOT NULL DEFAULT -1,
  `a_plus0` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos0` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag0` int(11) NOT NULL DEFAULT 0,
  `a_serial0` varchar(255) NOT NULL DEFAULT '',
  `a_count0` bigint(20) NOT NULL DEFAULT 0,
  `a_used0` int(11) NOT NULL DEFAULT -1,
  `a_item_idx1` int(11) NOT NULL DEFAULT -1,
  `a_plus1` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos1` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag1` int(11) NOT NULL DEFAULT 0,
  `a_serial1` varchar(255) NOT NULL DEFAULT '',
  `a_count1` bigint(20) NOT NULL DEFAULT 0,
  `a_used1` int(11) NOT NULL DEFAULT -1,
  `a_item_idx2` int(11) NOT NULL DEFAULT -1,
  `a_plus2` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos2` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag2` int(11) NOT NULL DEFAULT 0,
  `a_serial2` varchar(255) NOT NULL DEFAULT '',
  `a_count2` bigint(20) NOT NULL DEFAULT 0,
  `a_used2` int(11) NOT NULL DEFAULT -1,
  `a_item_idx3` int(11) NOT NULL DEFAULT -1,
  `a_plus3` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos3` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag3` int(11) NOT NULL DEFAULT 0,
  `a_serial3` varchar(255) NOT NULL DEFAULT '',
  `a_count3` bigint(20) NOT NULL DEFAULT 0,
  `a_used3` int(11) NOT NULL DEFAULT -1,
  `a_item_idx4` int(11) NOT NULL DEFAULT -1,
  `a_plus4` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos4` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag4` int(11) NOT NULL DEFAULT 0,
  `a_serial4` varchar(255) NOT NULL DEFAULT '',
  `a_count4` bigint(20) NOT NULL DEFAULT 0,
  `a_used4` int(11) NOT NULL DEFAULT -1,
  `a_item0_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_used0_2` int(11) DEFAULT -1,
  `a_used1_2` int(11) DEFAULT -1,
  `a_used2_2` int(11) DEFAULT -1,
  `a_used3_2` int(11) DEFAULT -1,
  `a_used4_2` int(11) DEFAULT -1,
  `a_socket0` varchar(50) NOT NULL DEFAULT '',
  `a_socket1` varchar(50) NOT NULL DEFAULT '',
  `a_socket2` varchar(50) NOT NULL DEFAULT '',
  `a_socket3` varchar(50) NOT NULL DEFAULT '',
  `a_socket4` varchar(50) NOT NULL DEFAULT '',
  `a_item_0_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_now_dur_0` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_0` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_2` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_2` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_4` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_4` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_idx`,`a_tab_idx`,`a_row_idx`),
  KEY `idx_item` (`a_item_idx0`,`a_item_idx1`,`a_item_idx2`,`a_item_idx3`,`a_item_idx4`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_inven02`;
CREATE TABLE `t_inven02` (
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_tab_idx` tinyint(4) NOT NULL DEFAULT 0,
  `a_row_idx` tinyint(4) NOT NULL DEFAULT 0,
  `a_item_idx0` int(11) NOT NULL DEFAULT -1,
  `a_plus0` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos0` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag0` int(11) NOT NULL DEFAULT 0,
  `a_serial0` varchar(255) NOT NULL DEFAULT '',
  `a_count0` bigint(20) NOT NULL DEFAULT 0,
  `a_used0` int(11) NOT NULL DEFAULT -1,
  `a_item_idx1` int(11) NOT NULL DEFAULT -1,
  `a_plus1` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos1` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag1` int(11) NOT NULL DEFAULT 0,
  `a_serial1` varchar(255) NOT NULL DEFAULT '',
  `a_count1` bigint(20) NOT NULL DEFAULT 0,
  `a_used1` int(11) NOT NULL DEFAULT -1,
  `a_item_idx2` int(11) NOT NULL DEFAULT -1,
  `a_plus2` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos2` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag2` int(11) NOT NULL DEFAULT 0,
  `a_serial2` varchar(255) NOT NULL DEFAULT '',
  `a_count2` bigint(20) NOT NULL DEFAULT 0,
  `a_used2` int(11) NOT NULL DEFAULT -1,
  `a_item_idx3` int(11) NOT NULL DEFAULT -1,
  `a_plus3` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos3` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag3` int(11) NOT NULL DEFAULT 0,
  `a_serial3` varchar(255) NOT NULL DEFAULT '',
  `a_count3` bigint(20) NOT NULL DEFAULT 0,
  `a_used3` int(11) NOT NULL DEFAULT -1,
  `a_item_idx4` int(11) NOT NULL DEFAULT -1,
  `a_plus4` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos4` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag4` int(11) NOT NULL DEFAULT 0,
  `a_serial4` varchar(255) NOT NULL DEFAULT '',
  `a_count4` bigint(20) NOT NULL DEFAULT 0,
  `a_used4` int(11) NOT NULL DEFAULT -1,
  `a_item0_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_used0_2` int(11) DEFAULT -1,
  `a_used1_2` int(11) DEFAULT -1,
  `a_used2_2` int(11) DEFAULT -1,
  `a_used3_2` int(11) DEFAULT -1,
  `a_used4_2` int(11) DEFAULT -1,
  `a_socket0` varchar(50) NOT NULL DEFAULT '',
  `a_socket1` varchar(50) NOT NULL DEFAULT '',
  `a_socket2` varchar(50) NOT NULL DEFAULT '',
  `a_socket3` varchar(50) NOT NULL DEFAULT '',
  `a_socket4` varchar(50) NOT NULL DEFAULT '',
  `a_item_0_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_now_dur_0` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_0` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_2` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_2` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_4` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_4` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_idx`,`a_tab_idx`,`a_row_idx`),
  KEY `idx_item` (`a_item_idx0`,`a_item_idx1`,`a_item_idx2`,`a_item_idx3`,`a_item_idx4`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_inven03`;
CREATE TABLE `t_inven03` (
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_tab_idx` tinyint(4) NOT NULL DEFAULT 0,
  `a_row_idx` tinyint(4) NOT NULL DEFAULT 0,
  `a_item_idx0` int(11) NOT NULL DEFAULT -1,
  `a_plus0` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos0` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag0` int(11) NOT NULL DEFAULT 0,
  `a_serial0` varchar(255) NOT NULL DEFAULT '',
  `a_count0` bigint(20) NOT NULL DEFAULT 0,
  `a_used0` int(11) NOT NULL DEFAULT -1,
  `a_item_idx1` int(11) NOT NULL DEFAULT -1,
  `a_plus1` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos1` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag1` int(11) NOT NULL DEFAULT 0,
  `a_serial1` varchar(255) NOT NULL DEFAULT '',
  `a_count1` bigint(20) NOT NULL DEFAULT 0,
  `a_used1` int(11) NOT NULL DEFAULT -1,
  `a_item_idx2` int(11) NOT NULL DEFAULT -1,
  `a_plus2` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos2` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag2` int(11) NOT NULL DEFAULT 0,
  `a_serial2` varchar(255) NOT NULL DEFAULT '',
  `a_count2` bigint(20) NOT NULL DEFAULT 0,
  `a_used2` int(11) NOT NULL DEFAULT -1,
  `a_item_idx3` int(11) NOT NULL DEFAULT -1,
  `a_plus3` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos3` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag3` int(11) NOT NULL DEFAULT 0,
  `a_serial3` varchar(255) NOT NULL DEFAULT '',
  `a_count3` bigint(20) NOT NULL DEFAULT 0,
  `a_used3` int(11) NOT NULL DEFAULT -1,
  `a_item_idx4` int(11) NOT NULL DEFAULT -1,
  `a_plus4` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos4` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag4` int(11) NOT NULL DEFAULT 0,
  `a_serial4` varchar(255) NOT NULL DEFAULT '',
  `a_count4` bigint(20) NOT NULL DEFAULT 0,
  `a_used4` int(11) NOT NULL DEFAULT -1,
  `a_item0_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_used0_2` int(11) DEFAULT -1,
  `a_used1_2` int(11) DEFAULT -1,
  `a_used2_2` int(11) DEFAULT -1,
  `a_used3_2` int(11) DEFAULT -1,
  `a_used4_2` int(11) DEFAULT -1,
  `a_socket0` varchar(50) NOT NULL DEFAULT '',
  `a_socket1` varchar(50) NOT NULL DEFAULT '',
  `a_socket2` varchar(50) NOT NULL DEFAULT '',
  `a_socket3` varchar(50) NOT NULL DEFAULT '',
  `a_socket4` varchar(50) NOT NULL DEFAULT '',
  `a_item_0_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_now_dur_0` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_0` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_2` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_2` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_4` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_4` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_idx`,`a_tab_idx`,`a_row_idx`),
  KEY `idx_item` (`a_item_idx0`,`a_item_idx1`,`a_item_idx2`,`a_item_idx3`,`a_item_idx4`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_inven04`;
CREATE TABLE `t_inven04` (
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_tab_idx` tinyint(4) NOT NULL DEFAULT 0,
  `a_row_idx` tinyint(4) NOT NULL DEFAULT 0,
  `a_item_idx0` int(11) NOT NULL DEFAULT -1,
  `a_plus0` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos0` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag0` int(11) NOT NULL DEFAULT 0,
  `a_serial0` varchar(255) NOT NULL DEFAULT '',
  `a_count0` bigint(20) NOT NULL DEFAULT 0,
  `a_used0` int(11) NOT NULL DEFAULT -1,
  `a_item_idx1` int(11) NOT NULL DEFAULT -1,
  `a_plus1` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos1` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag1` int(11) NOT NULL DEFAULT 0,
  `a_serial1` varchar(255) NOT NULL DEFAULT '',
  `a_count1` bigint(20) NOT NULL DEFAULT 0,
  `a_used1` int(11) NOT NULL DEFAULT -1,
  `a_item_idx2` int(11) NOT NULL DEFAULT -1,
  `a_plus2` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos2` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag2` int(11) NOT NULL DEFAULT 0,
  `a_serial2` varchar(255) NOT NULL DEFAULT '',
  `a_count2` bigint(20) NOT NULL DEFAULT 0,
  `a_used2` int(11) NOT NULL DEFAULT -1,
  `a_item_idx3` int(11) NOT NULL DEFAULT -1,
  `a_plus3` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos3` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag3` int(11) NOT NULL DEFAULT 0,
  `a_serial3` varchar(255) NOT NULL DEFAULT '',
  `a_count3` bigint(20) NOT NULL DEFAULT 0,
  `a_used3` int(11) NOT NULL DEFAULT -1,
  `a_item_idx4` int(11) NOT NULL DEFAULT -1,
  `a_plus4` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos4` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag4` int(11) NOT NULL DEFAULT 0,
  `a_serial4` varchar(255) NOT NULL DEFAULT '',
  `a_count4` bigint(20) NOT NULL DEFAULT 0,
  `a_used4` int(11) NOT NULL DEFAULT -1,
  `a_item0_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_used0_2` int(11) DEFAULT -1,
  `a_used1_2` int(11) DEFAULT -1,
  `a_used2_2` int(11) DEFAULT -1,
  `a_used3_2` int(11) DEFAULT -1,
  `a_used4_2` int(11) DEFAULT -1,
  `a_socket0` varchar(50) NOT NULL DEFAULT '',
  `a_socket1` varchar(50) NOT NULL DEFAULT '',
  `a_socket2` varchar(50) NOT NULL DEFAULT '',
  `a_socket3` varchar(50) NOT NULL DEFAULT '',
  `a_socket4` varchar(50) NOT NULL DEFAULT '',
  `a_item_0_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_now_dur_0` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_0` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_2` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_2` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_4` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_4` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_idx`,`a_tab_idx`,`a_row_idx`),
  KEY `idx_item` (`a_item_idx0`,`a_item_idx1`,`a_item_idx2`,`a_item_idx3`,`a_item_idx4`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_inven05`;
CREATE TABLE `t_inven05` (
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_tab_idx` tinyint(4) NOT NULL DEFAULT 0,
  `a_row_idx` tinyint(4) NOT NULL DEFAULT 0,
  `a_item_idx0` int(11) NOT NULL DEFAULT -1,
  `a_plus0` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos0` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag0` int(11) NOT NULL DEFAULT 0,
  `a_serial0` varchar(255) NOT NULL DEFAULT '',
  `a_count0` bigint(20) NOT NULL DEFAULT 0,
  `a_used0` int(11) NOT NULL DEFAULT -1,
  `a_item_idx1` int(11) NOT NULL DEFAULT -1,
  `a_plus1` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos1` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag1` int(11) NOT NULL DEFAULT 0,
  `a_serial1` varchar(255) NOT NULL DEFAULT '',
  `a_count1` bigint(20) NOT NULL DEFAULT 0,
  `a_used1` int(11) NOT NULL DEFAULT -1,
  `a_item_idx2` int(11) NOT NULL DEFAULT -1,
  `a_plus2` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos2` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag2` int(11) NOT NULL DEFAULT 0,
  `a_serial2` varchar(255) NOT NULL DEFAULT '',
  `a_count2` bigint(20) NOT NULL DEFAULT 0,
  `a_used2` int(11) NOT NULL DEFAULT -1,
  `a_item_idx3` int(11) NOT NULL DEFAULT -1,
  `a_plus3` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos3` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag3` int(11) NOT NULL DEFAULT 0,
  `a_serial3` varchar(255) NOT NULL DEFAULT '',
  `a_count3` bigint(20) NOT NULL DEFAULT 0,
  `a_used3` int(11) NOT NULL DEFAULT -1,
  `a_item_idx4` int(11) NOT NULL DEFAULT -1,
  `a_plus4` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos4` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag4` int(11) NOT NULL DEFAULT 0,
  `a_serial4` varchar(255) NOT NULL DEFAULT '',
  `a_count4` bigint(20) NOT NULL DEFAULT 0,
  `a_used4` int(11) NOT NULL DEFAULT -1,
  `a_item0_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_used0_2` int(11) DEFAULT -1,
  `a_used1_2` int(11) DEFAULT -1,
  `a_used2_2` int(11) DEFAULT -1,
  `a_used3_2` int(11) DEFAULT -1,
  `a_used4_2` int(11) DEFAULT -1,
  `a_socket0` varchar(50) NOT NULL DEFAULT '',
  `a_socket1` varchar(50) NOT NULL DEFAULT '',
  `a_socket2` varchar(50) NOT NULL DEFAULT '',
  `a_socket3` varchar(50) NOT NULL DEFAULT '',
  `a_socket4` varchar(50) NOT NULL DEFAULT '',
  `a_item_0_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_now_dur_0` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_0` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_2` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_2` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_4` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_4` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_idx`,`a_tab_idx`,`a_row_idx`),
  KEY `idx_item` (`a_item_idx0`,`a_item_idx1`,`a_item_idx2`,`a_item_idx3`,`a_item_idx4`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_inven06`;
CREATE TABLE `t_inven06` (
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_tab_idx` tinyint(4) NOT NULL DEFAULT 0,
  `a_row_idx` tinyint(4) NOT NULL DEFAULT 0,
  `a_item_idx0` int(11) NOT NULL DEFAULT -1,
  `a_plus0` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos0` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag0` int(11) NOT NULL DEFAULT 0,
  `a_serial0` varchar(255) NOT NULL DEFAULT '',
  `a_count0` bigint(20) NOT NULL DEFAULT 0,
  `a_used0` int(11) NOT NULL DEFAULT -1,
  `a_item_idx1` int(11) NOT NULL DEFAULT -1,
  `a_plus1` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos1` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag1` int(11) NOT NULL DEFAULT 0,
  `a_serial1` varchar(255) NOT NULL DEFAULT '',
  `a_count1` bigint(20) NOT NULL DEFAULT 0,
  `a_used1` int(11) NOT NULL DEFAULT -1,
  `a_item_idx2` int(11) NOT NULL DEFAULT -1,
  `a_plus2` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos2` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag2` int(11) NOT NULL DEFAULT 0,
  `a_serial2` varchar(255) NOT NULL DEFAULT '',
  `a_count2` bigint(20) NOT NULL DEFAULT 0,
  `a_used2` int(11) NOT NULL DEFAULT -1,
  `a_item_idx3` int(11) NOT NULL DEFAULT -1,
  `a_plus3` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos3` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag3` int(11) NOT NULL DEFAULT 0,
  `a_serial3` varchar(255) NOT NULL DEFAULT '',
  `a_count3` bigint(20) NOT NULL DEFAULT 0,
  `a_used3` int(11) NOT NULL DEFAULT -1,
  `a_item_idx4` int(11) NOT NULL DEFAULT -1,
  `a_plus4` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos4` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag4` int(11) NOT NULL DEFAULT 0,
  `a_serial4` varchar(255) NOT NULL DEFAULT '',
  `a_count4` bigint(20) NOT NULL DEFAULT 0,
  `a_used4` int(11) NOT NULL DEFAULT -1,
  `a_item0_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_used0_2` int(11) DEFAULT -1,
  `a_used1_2` int(11) DEFAULT -1,
  `a_used2_2` int(11) DEFAULT -1,
  `a_used3_2` int(11) DEFAULT -1,
  `a_used4_2` int(11) DEFAULT -1,
  `a_socket0` varchar(50) NOT NULL DEFAULT '',
  `a_socket1` varchar(50) NOT NULL DEFAULT '',
  `a_socket2` varchar(50) NOT NULL DEFAULT '',
  `a_socket3` varchar(50) NOT NULL DEFAULT '',
  `a_socket4` varchar(50) NOT NULL DEFAULT '',
  `a_item_0_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_now_dur_0` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_0` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_2` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_2` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_4` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_4` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_idx`,`a_tab_idx`,`a_row_idx`),
  KEY `idx_item` (`a_item_idx0`,`a_item_idx1`,`a_item_idx2`,`a_item_idx3`,`a_item_idx4`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_inven07`;
CREATE TABLE `t_inven07` (
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_tab_idx` tinyint(4) NOT NULL DEFAULT 0,
  `a_row_idx` tinyint(4) NOT NULL DEFAULT 0,
  `a_item_idx0` int(11) NOT NULL DEFAULT -1,
  `a_plus0` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos0` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag0` int(11) NOT NULL DEFAULT 0,
  `a_serial0` varchar(255) NOT NULL DEFAULT '',
  `a_count0` bigint(20) NOT NULL DEFAULT 0,
  `a_used0` int(11) NOT NULL DEFAULT -1,
  `a_item_idx1` int(11) NOT NULL DEFAULT -1,
  `a_plus1` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos1` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag1` int(11) NOT NULL DEFAULT 0,
  `a_serial1` varchar(255) NOT NULL DEFAULT '',
  `a_count1` bigint(20) NOT NULL DEFAULT 0,
  `a_used1` int(11) NOT NULL DEFAULT -1,
  `a_item_idx2` int(11) NOT NULL DEFAULT -1,
  `a_plus2` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos2` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag2` int(11) NOT NULL DEFAULT 0,
  `a_serial2` varchar(255) NOT NULL DEFAULT '',
  `a_count2` bigint(20) NOT NULL DEFAULT 0,
  `a_used2` int(11) NOT NULL DEFAULT -1,
  `a_item_idx3` int(11) NOT NULL DEFAULT -1,
  `a_plus3` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos3` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag3` int(11) NOT NULL DEFAULT 0,
  `a_serial3` varchar(255) NOT NULL DEFAULT '',
  `a_count3` bigint(20) NOT NULL DEFAULT 0,
  `a_used3` int(11) NOT NULL DEFAULT -1,
  `a_item_idx4` int(11) NOT NULL DEFAULT -1,
  `a_plus4` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos4` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag4` int(11) NOT NULL DEFAULT 0,
  `a_serial4` varchar(255) NOT NULL DEFAULT '',
  `a_count4` bigint(20) NOT NULL DEFAULT 0,
  `a_used4` int(11) NOT NULL DEFAULT -1,
  `a_item0_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_used0_2` int(11) DEFAULT -1,
  `a_used1_2` int(11) DEFAULT -1,
  `a_used2_2` int(11) DEFAULT -1,
  `a_used3_2` int(11) DEFAULT -1,
  `a_used4_2` int(11) DEFAULT -1,
  `a_socket0` varchar(50) NOT NULL DEFAULT '',
  `a_socket1` varchar(50) NOT NULL DEFAULT '',
  `a_socket2` varchar(50) NOT NULL DEFAULT '',
  `a_socket3` varchar(50) NOT NULL DEFAULT '',
  `a_socket4` varchar(50) NOT NULL DEFAULT '',
  `a_item_0_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_now_dur_0` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_0` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_2` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_2` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_4` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_4` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_idx`,`a_tab_idx`,`a_row_idx`),
  KEY `idx_item` (`a_item_idx0`,`a_item_idx1`,`a_item_idx2`,`a_item_idx3`,`a_item_idx4`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_inven08`;
CREATE TABLE `t_inven08` (
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_tab_idx` tinyint(4) NOT NULL DEFAULT 0,
  `a_row_idx` tinyint(4) NOT NULL DEFAULT 0,
  `a_item_idx0` int(11) NOT NULL DEFAULT -1,
  `a_plus0` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos0` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag0` int(11) NOT NULL DEFAULT 0,
  `a_serial0` varchar(255) NOT NULL DEFAULT '',
  `a_count0` bigint(20) NOT NULL DEFAULT 0,
  `a_used0` int(11) NOT NULL DEFAULT -1,
  `a_item_idx1` int(11) NOT NULL DEFAULT -1,
  `a_plus1` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos1` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag1` int(11) NOT NULL DEFAULT 0,
  `a_serial1` varchar(255) NOT NULL DEFAULT '',
  `a_count1` bigint(20) NOT NULL DEFAULT 0,
  `a_used1` int(11) NOT NULL DEFAULT -1,
  `a_item_idx2` int(11) NOT NULL DEFAULT -1,
  `a_plus2` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos2` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag2` int(11) NOT NULL DEFAULT 0,
  `a_serial2` varchar(255) NOT NULL DEFAULT '',
  `a_count2` bigint(20) NOT NULL DEFAULT 0,
  `a_used2` int(11) NOT NULL DEFAULT -1,
  `a_item_idx3` int(11) NOT NULL DEFAULT -1,
  `a_plus3` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos3` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag3` int(11) NOT NULL DEFAULT 0,
  `a_serial3` varchar(255) NOT NULL DEFAULT '',
  `a_count3` bigint(20) NOT NULL DEFAULT 0,
  `a_used3` int(11) NOT NULL DEFAULT -1,
  `a_item_idx4` int(11) NOT NULL DEFAULT -1,
  `a_plus4` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos4` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag4` int(11) NOT NULL DEFAULT 0,
  `a_serial4` varchar(255) NOT NULL DEFAULT '',
  `a_count4` bigint(20) NOT NULL DEFAULT 0,
  `a_used4` int(11) NOT NULL DEFAULT -1,
  `a_item0_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_used0_2` int(11) DEFAULT -1,
  `a_used1_2` int(11) DEFAULT -1,
  `a_used2_2` int(11) DEFAULT -1,
  `a_used3_2` int(11) DEFAULT -1,
  `a_used4_2` int(11) DEFAULT -1,
  `a_socket0` varchar(50) NOT NULL DEFAULT '',
  `a_socket1` varchar(50) NOT NULL DEFAULT '',
  `a_socket2` varchar(50) NOT NULL DEFAULT '',
  `a_socket3` varchar(50) NOT NULL DEFAULT '',
  `a_socket4` varchar(50) NOT NULL DEFAULT '',
  `a_item_0_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_now_dur_0` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_0` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_2` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_2` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_4` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_4` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_idx`,`a_tab_idx`,`a_row_idx`),
  KEY `idx_item` (`a_item_idx0`,`a_item_idx1`,`a_item_idx2`,`a_item_idx3`,`a_item_idx4`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_inven09`;
CREATE TABLE `t_inven09` (
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_tab_idx` tinyint(4) NOT NULL DEFAULT 0,
  `a_row_idx` tinyint(4) NOT NULL DEFAULT 0,
  `a_item_idx0` int(11) NOT NULL DEFAULT -1,
  `a_plus0` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos0` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag0` int(11) NOT NULL DEFAULT 0,
  `a_serial0` varchar(255) NOT NULL DEFAULT '',
  `a_count0` bigint(20) NOT NULL DEFAULT 0,
  `a_used0` int(11) NOT NULL DEFAULT -1,
  `a_item_idx1` int(11) NOT NULL DEFAULT -1,
  `a_plus1` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos1` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag1` int(11) NOT NULL DEFAULT 0,
  `a_serial1` varchar(255) NOT NULL DEFAULT '',
  `a_count1` bigint(20) NOT NULL DEFAULT 0,
  `a_used1` int(11) NOT NULL DEFAULT -1,
  `a_item_idx2` int(11) NOT NULL DEFAULT -1,
  `a_plus2` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos2` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag2` int(11) NOT NULL DEFAULT 0,
  `a_serial2` varchar(255) NOT NULL DEFAULT '',
  `a_count2` bigint(20) NOT NULL DEFAULT 0,
  `a_used2` int(11) NOT NULL DEFAULT -1,
  `a_item_idx3` int(11) NOT NULL DEFAULT -1,
  `a_plus3` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos3` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag3` int(11) NOT NULL DEFAULT 0,
  `a_serial3` varchar(255) NOT NULL DEFAULT '',
  `a_count3` bigint(20) NOT NULL DEFAULT 0,
  `a_used3` int(11) NOT NULL DEFAULT -1,
  `a_item_idx4` int(11) NOT NULL DEFAULT -1,
  `a_plus4` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos4` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag4` int(11) NOT NULL DEFAULT 0,
  `a_serial4` varchar(255) NOT NULL DEFAULT '',
  `a_count4` bigint(20) NOT NULL DEFAULT 0,
  `a_used4` int(11) NOT NULL DEFAULT -1,
  `a_item0_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item0_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item1_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item2_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item3_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item4_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_used0_2` int(11) DEFAULT -1,
  `a_used1_2` int(11) DEFAULT -1,
  `a_used2_2` int(11) DEFAULT -1,
  `a_used3_2` int(11) DEFAULT -1,
  `a_used4_2` int(11) DEFAULT -1,
  `a_socket0` varchar(50) NOT NULL DEFAULT '',
  `a_socket1` varchar(50) NOT NULL DEFAULT '',
  `a_socket2` varchar(50) NOT NULL DEFAULT '',
  `a_socket3` varchar(50) NOT NULL DEFAULT '',
  `a_socket4` varchar(50) NOT NULL DEFAULT '',
  `a_item_0_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_0_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_1_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_2_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_3_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_4_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_now_dur_0` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_0` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_2` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_2` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_now_dur_4` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur_4` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_idx`,`a_tab_idx`,`a_row_idx`),
  KEY `idx_item` (`a_item_idx0`,`a_item_idx1`,`a_item_idx2`,`a_item_idx3`,`a_item_idx4`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_inzonejoin`;
CREATE TABLE `t_inzonejoin` (
  `a_zoneno` int(11) NOT NULL DEFAULT 0,
  `a_roomno` int(11) NOT NULL DEFAULT 0,
  `a_charindex` int(11) NOT NULL DEFAULT 0,
  `a_difficulty` int(10) NOT NULL DEFAULT -1,
  PRIMARY KEY (`a_zoneno`,`a_roomno`,`a_charindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_item_collection_end`;
CREATE TABLE `t_item_collection_end` (
  `a_category` int(11) NOT NULL DEFAULT 0,
  `a_theme` int(11) NOT NULL DEFAULT 0,
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_end_time` datetime DEFAULT NULL,
  PRIMARY KEY (`a_category`,`a_theme`,`a_char_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_item_collection_ing`;
CREATE TABLE `t_item_collection_ing` (
  `a_category` int(11) NOT NULL DEFAULT 0,
  `a_theme` int(11) NOT NULL DEFAULT 0,
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_need1` int(11) DEFAULT NULL,
  `a_need2` int(11) DEFAULT NULL,
  `a_need3` int(11) DEFAULT NULL,
  `a_need4` int(11) DEFAULT NULL,
  `a_need5` int(11) DEFAULT NULL,
  `a_need6` int(11) DEFAULT NULL,
  PRIMARY KEY (`a_category`,`a_theme`,`a_char_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_lcball`;
CREATE TABLE `t_lcball` (
  `a_item_order` int(10) NOT NULL DEFAULT 0,
  `a_tocken_index` int(10) NOT NULL DEFAULT 0,
  `a_course_code` tinyint(4) NOT NULL DEFAULT 0,
  `a_order` tinyint(4) NOT NULL DEFAULT 0,
  `a_item_index` int(10) NOT NULL DEFAULT 0,
  `a_item_count` int(10) unsigned NOT NULL DEFAULT 1,
  `a_item_max` int(10) unsigned NOT NULL DEFAULT 0,
  `a_item_remain` int(10) unsigned NOT NULL DEFAULT 0,
  KEY `Index` (`a_course_code`,`a_tocken_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_mempos`;
CREATE TABLE `t_mempos` (
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

DROP TABLE IF EXISTS `t_messenger_opt`;
CREATE TABLE `t_messenger_opt` (
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_group_index` varchar(255) NOT NULL DEFAULT '',
  `a_group_name` varchar(255) NOT NULL DEFAULT '0',
  `a_chat_color` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_idx`),
  UNIQUE KEY `a_char_idx` (`a_char_idx`),
  KEY `a_char_idx_2` (`a_char_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice` (
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_event_idx` int(11) NOT NULL DEFAULT 0,
  `a_count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_idx`,`a_event_idx`),
  KEY `a_char_idx` (`a_char_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_nscard`;
CREATE TABLE `t_nscard` (
  `a_user_index` int(11) NOT NULL DEFAULT 0,
  `a_usetime` datetime NOT NULL,
  PRIMARY KEY (`a_user_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_pd4rank`;
CREATE TABLE `t_pd4rank` (
  `a_index` int(10) unsigned NOT NULL DEFAULT 0,
  `a_name` varchar(20) DEFAULT '0',
  `a_exp` bigint(20) unsigned DEFAULT 0,
  `a_level` tinyint(3) unsigned DEFAULT 0,
  `a_job` int(10) unsigned DEFAULT 0,
  `a_stime` datetime DEFAULT NULL,
  `a_etime` datetime DEFAULT NULL,
  `a_ctime` bigint(20) unsigned DEFAULT 0,
  `a_bclear` tinyint(3) unsigned DEFAULT 0,
  `a_deadmon` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`a_index`),
  UNIQUE KEY `a_index` (`a_index`),
  KEY `a_index_2` (`a_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_pd4reward`;
CREATE TABLE `t_pd4reward` (
  `a_index` int(10) unsigned NOT NULL DEFAULT 0,
  `a_rank` tinyint(3) unsigned DEFAULT 0,
  `a_name` varchar(20) DEFAULT '0',
  `a_job` tinyint(3) unsigned DEFAULT 0,
  `a_breward` tinyint(3) unsigned DEFAULT 0,
  `a_adddate` datetime NOT NULL,
  PRIMARY KEY (`a_index`,`a_adddate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_pddata00`;
CREATE TABLE `t_pddata00` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_pd3_count` int(11) NOT NULL DEFAULT 0,
  `a_pd3_time` int(11) NOT NULL DEFAULT 0,
  `a_pd4_count` int(11) NOT NULL DEFAULT 0,
  `a_pd4_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='퍼스널던전 데이터';

DROP TABLE IF EXISTS `t_pddata01`;
CREATE TABLE `t_pddata01` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_pd3_count` int(11) NOT NULL DEFAULT 0,
  `a_pd3_time` int(11) NOT NULL DEFAULT 0,
  `a_pd4_count` int(11) NOT NULL DEFAULT 0,
  `a_pd4_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='퍼스널던전 데이터';

DROP TABLE IF EXISTS `t_pddata02`;
CREATE TABLE `t_pddata02` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_pd3_count` int(11) NOT NULL DEFAULT 0,
  `a_pd3_time` int(11) NOT NULL DEFAULT 0,
  `a_pd4_count` int(11) NOT NULL DEFAULT 0,
  `a_pd4_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='퍼스널던전 데이터';

DROP TABLE IF EXISTS `t_pddata03`;
CREATE TABLE `t_pddata03` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_pd3_count` int(11) NOT NULL DEFAULT 0,
  `a_pd3_time` int(11) NOT NULL DEFAULT 0,
  `a_pd4_count` int(11) NOT NULL DEFAULT 0,
  `a_pd4_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='퍼스널던전 데이터';

DROP TABLE IF EXISTS `t_pddata04`;
CREATE TABLE `t_pddata04` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_pd3_count` int(11) NOT NULL DEFAULT 0,
  `a_pd3_time` int(11) NOT NULL DEFAULT 0,
  `a_pd4_count` int(11) NOT NULL DEFAULT 0,
  `a_pd4_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='퍼스널던전 데이터';

DROP TABLE IF EXISTS `t_pddata05`;
CREATE TABLE `t_pddata05` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_pd3_count` int(11) NOT NULL DEFAULT 0,
  `a_pd3_time` int(11) NOT NULL DEFAULT 0,
  `a_pd4_count` int(11) NOT NULL DEFAULT 0,
  `a_pd4_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='퍼스널던전 데이터';

DROP TABLE IF EXISTS `t_pddata06`;
CREATE TABLE `t_pddata06` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_pd3_count` int(11) NOT NULL DEFAULT 0,
  `a_pd3_time` int(11) NOT NULL DEFAULT 0,
  `a_pd4_count` int(11) NOT NULL DEFAULT 0,
  `a_pd4_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='퍼스널던전 데이터';

DROP TABLE IF EXISTS `t_pddata07`;
CREATE TABLE `t_pddata07` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_pd3_count` int(11) NOT NULL DEFAULT 0,
  `a_pd3_time` int(11) NOT NULL DEFAULT 0,
  `a_pd4_count` int(11) NOT NULL DEFAULT 0,
  `a_pd4_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='퍼스널던전 데이터';

DROP TABLE IF EXISTS `t_pddata08`;
CREATE TABLE `t_pddata08` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_pd3_count` int(11) NOT NULL DEFAULT 0,
  `a_pd3_time` int(11) NOT NULL DEFAULT 0,
  `a_pd4_count` int(11) NOT NULL DEFAULT 0,
  `a_pd4_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='퍼스널던전 데이터';

DROP TABLE IF EXISTS `t_pddata09`;
CREATE TABLE `t_pddata09` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_pd3_count` int(11) NOT NULL DEFAULT 0,
  `a_pd3_time` int(11) NOT NULL DEFAULT 0,
  `a_pd4_count` int(11) NOT NULL DEFAULT 0,
  `a_pd4_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='퍼스널던전 데이터';

DROP TABLE IF EXISTS `t_pet`;
CREATE TABLE `t_pet` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_owner` int(11) NOT NULL DEFAULT 0,
  `a_enable` tinyint(4) NOT NULL DEFAULT 0,
  `a_lastupdate` int(11) NOT NULL DEFAULT 0,
  `a_type` tinyint(4) NOT NULL DEFAULT 0,
  `a_level` int(11) NOT NULL DEFAULT 1,
  `a_hp` int(11) NOT NULL DEFAULT 100,
  `a_hungry` int(11) NOT NULL DEFAULT 100,
  `a_sympathy` int(11) NOT NULL DEFAULT 100,
  `a_exp` bigint(20) NOT NULL DEFAULT 0,
  `a_ability` int(11) NOT NULL DEFAULT 0,
  `a_skill_index` varchar(255) NOT NULL DEFAULT '',
  `a_skill_level` varchar(255) NOT NULL DEFAULT '',
  `a_time_rebirth` int(11) NOT NULL DEFAULT 0,
  `a_color` char(2) NOT NULL DEFAULT '0',
  `a_pet_turnto_npc` int(11) NOT NULL DEFAULT 0,
  `a_pet_size` int(11) NOT NULL DEFAULT 10,
  PRIMARY KEY (`a_index`),
  KEY `idx_owner` (`a_owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_pet_name`;
CREATE TABLE `t_pet_name` (
  `a_pet_index` int(11) unsigned NOT NULL DEFAULT 0,
  `a_pet_owner` int(11) NOT NULL DEFAULT 0,
  `a_pet_name` varchar(20) NOT NULL DEFAULT '',
  `a_pet_enable` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_pet_index`),
  KEY `idx_owner` (`a_pet_owner`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_pet_stash`;
CREATE TABLE `t_pet_stash` (
  `a_char_idx` int(10) NOT NULL DEFAULT 0,
  `a_item_idx` int(10) DEFAULT NULL,
  `a_plus` int(10) NOT NULL DEFAULT 0,
  `a_proxy` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_plus`,`a_char_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_pet_stash_info`;
CREATE TABLE `t_pet_stash_info` (
  `a_char_index` int(10) NOT NULL DEFAULT 0,
  `a_effect` int(10) DEFAULT -1,
  PRIMARY KEY (`a_char_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_pkpenalty_reward`;
CREATE TABLE `t_pkpenalty_reward` (
  `a_char_idx` int(11) DEFAULT 0,
  `a_reward_flag` int(8) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_premiumchar`;
CREATE TABLE `t_premiumchar` (
  `a_charIndex` int(11) NOT NULL DEFAULT 0,
  `a_premiumType` smallint(6) NOT NULL DEFAULT 0,
  `a_expireTime` int(11) NOT NULL DEFAULT 0,
  `a_jumpCount` smallint(6) NOT NULL DEFAULT 0,
  `a_jumpTime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_charIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_premiumchar_log`;
CREATE TABLE `t_premiumchar_log` (
  `a_charIndex` int(11) NOT NULL DEFAULT 0,
  `premiumType` smallint(6) NOT NULL DEFAULT 0,
  `startTime` int(11) NOT NULL DEFAULT 0,
  `endTime` int(11) NOT NULL DEFAULT 0,
  `resetTime` int(11) NOT NULL DEFAULT 0,
  KEY `i_a_charIndex` (`a_charIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_premiumchar_reset_jumpcount`;
CREATE TABLE `t_premiumchar_reset_jumpcount` (
  `reset_time` datetime NOT NULL,
  PRIMARY KEY (`reset_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_questdata00`;
CREATE TABLE `t_questdata00` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_quest_index` int(11) NOT NULL DEFAULT 0,
  `a_state` tinyint(4) NOT NULL DEFAULT 0,
  `a_value0` int(11) NOT NULL DEFAULT 0,
  `a_value1` int(11) NOT NULL DEFAULT 0,
  `a_value2` int(11) NOT NULL DEFAULT 0,
  `a_quest_failvalue` int(11) NOT NULL DEFAULT 0,
  `a_complete_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`,`a_quest_index`),
  KEY `idx_char_index` (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_questdata01`;
CREATE TABLE `t_questdata01` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_quest_index` int(11) NOT NULL DEFAULT 0,
  `a_state` tinyint(4) NOT NULL DEFAULT 0,
  `a_value0` int(11) NOT NULL DEFAULT 0,
  `a_value1` int(11) NOT NULL DEFAULT 0,
  `a_value2` int(11) NOT NULL DEFAULT 0,
  `a_quest_failvalue` int(11) NOT NULL DEFAULT 0,
  `a_complete_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`,`a_quest_index`),
  KEY `idx_char_index` (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_questdata02`;
CREATE TABLE `t_questdata02` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_quest_index` int(11) NOT NULL DEFAULT 0,
  `a_state` tinyint(4) NOT NULL DEFAULT 0,
  `a_value0` int(11) NOT NULL DEFAULT 0,
  `a_value1` int(11) NOT NULL DEFAULT 0,
  `a_value2` int(11) NOT NULL DEFAULT 0,
  `a_quest_failvalue` int(11) NOT NULL DEFAULT 0,
  `a_complete_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`,`a_quest_index`),
  KEY `idx_char_index` (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_questdata03`;
CREATE TABLE `t_questdata03` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_quest_index` int(11) NOT NULL DEFAULT 0,
  `a_state` tinyint(4) NOT NULL DEFAULT 0,
  `a_value0` int(11) NOT NULL DEFAULT 0,
  `a_value1` int(11) NOT NULL DEFAULT 0,
  `a_value2` int(11) NOT NULL DEFAULT 0,
  `a_quest_failvalue` int(11) NOT NULL DEFAULT 0,
  `a_complete_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`,`a_quest_index`),
  KEY `idx_char_index` (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_questdata04`;
CREATE TABLE `t_questdata04` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_quest_index` int(11) NOT NULL DEFAULT 0,
  `a_state` tinyint(4) NOT NULL DEFAULT 0,
  `a_value0` int(11) NOT NULL DEFAULT 0,
  `a_value1` int(11) NOT NULL DEFAULT 0,
  `a_value2` int(11) NOT NULL DEFAULT 0,
  `a_quest_failvalue` int(11) NOT NULL DEFAULT 0,
  `a_complete_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`,`a_quest_index`),
  KEY `idx_char_index` (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_questdata05`;
CREATE TABLE `t_questdata05` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_quest_index` int(11) NOT NULL DEFAULT 0,
  `a_state` tinyint(4) NOT NULL DEFAULT 0,
  `a_value0` int(11) NOT NULL DEFAULT 0,
  `a_value1` int(11) NOT NULL DEFAULT 0,
  `a_value2` int(11) NOT NULL DEFAULT 0,
  `a_quest_failvalue` int(11) NOT NULL DEFAULT 0,
  `a_complete_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`,`a_quest_index`),
  KEY `idx_char_index` (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_questdata06`;
CREATE TABLE `t_questdata06` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_quest_index` int(11) NOT NULL DEFAULT 0,
  `a_state` tinyint(4) NOT NULL DEFAULT 0,
  `a_value0` int(11) NOT NULL DEFAULT 0,
  `a_value1` int(11) NOT NULL DEFAULT 0,
  `a_value2` int(11) NOT NULL DEFAULT 0,
  `a_quest_failvalue` int(11) NOT NULL DEFAULT 0,
  `a_complete_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`,`a_quest_index`),
  KEY `idx_char_index` (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_questdata07`;
CREATE TABLE `t_questdata07` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_quest_index` int(11) NOT NULL DEFAULT 0,
  `a_state` tinyint(4) NOT NULL DEFAULT 0,
  `a_value0` int(11) NOT NULL DEFAULT 0,
  `a_value1` int(11) NOT NULL DEFAULT 0,
  `a_value2` int(11) NOT NULL DEFAULT 0,
  `a_quest_failvalue` int(11) NOT NULL DEFAULT 0,
  `a_complete_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`,`a_quest_index`),
  KEY `idx_char_index` (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_questdata08`;
CREATE TABLE `t_questdata08` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_quest_index` int(11) NOT NULL DEFAULT 0,
  `a_state` tinyint(4) NOT NULL DEFAULT 0,
  `a_value0` int(11) NOT NULL DEFAULT 0,
  `a_value1` int(11) NOT NULL DEFAULT 0,
  `a_value2` int(11) NOT NULL DEFAULT 0,
  `a_quest_failvalue` int(11) NOT NULL DEFAULT 0,
  `a_complete_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`,`a_quest_index`),
  KEY `idx_char_index` (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_questdata09`;
CREATE TABLE `t_questdata09` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_quest_index` int(11) NOT NULL DEFAULT 0,
  `a_state` tinyint(4) NOT NULL DEFAULT 0,
  `a_value0` int(11) NOT NULL DEFAULT 0,
  `a_value1` int(11) NOT NULL DEFAULT 0,
  `a_value2` int(11) NOT NULL DEFAULT 0,
  `a_quest_failvalue` int(11) NOT NULL DEFAULT 0,
  `a_complete_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`,`a_quest_index`),
  KEY `idx_char_index` (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_quickslot00`;
CREATE TABLE `t_quickslot00` (
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_page_idx` tinyint(4) NOT NULL DEFAULT 0,
  `a_slot` varchar(255) NOT NULL DEFAULT '-1 -1 -1 -1 -1 -1 -1 -1 -1 -1',
  PRIMARY KEY (`a_char_idx`,`a_page_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_quickslot01`;
CREATE TABLE `t_quickslot01` (
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_page_idx` tinyint(4) NOT NULL DEFAULT 0,
  `a_slot` varchar(255) NOT NULL DEFAULT '-1 -1 -1 -1 -1 -1 -1 -1 -1 -1',
  PRIMARY KEY (`a_char_idx`,`a_page_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_quickslot02`;
CREATE TABLE `t_quickslot02` (
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_page_idx` tinyint(4) NOT NULL DEFAULT 0,
  `a_slot` varchar(255) NOT NULL DEFAULT '-1 -1 -1 -1 -1 -1 -1 -1 -1 -1',
  PRIMARY KEY (`a_char_idx`,`a_page_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_quickslot03`;
CREATE TABLE `t_quickslot03` (
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_page_idx` tinyint(4) NOT NULL DEFAULT 0,
  `a_slot` varchar(255) NOT NULL DEFAULT '-1 -1 -1 -1 -1 -1 -1 -1 -1 -1',
  PRIMARY KEY (`a_char_idx`,`a_page_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_quickslot04`;
CREATE TABLE `t_quickslot04` (
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_page_idx` tinyint(4) NOT NULL DEFAULT 0,
  `a_slot` varchar(255) NOT NULL DEFAULT '-1 -1 -1 -1 -1 -1 -1 -1 -1 -1',
  PRIMARY KEY (`a_char_idx`,`a_page_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_quickslot05`;
CREATE TABLE `t_quickslot05` (
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_page_idx` tinyint(4) NOT NULL DEFAULT 0,
  `a_slot` varchar(255) NOT NULL DEFAULT '-1 -1 -1 -1 -1 -1 -1 -1 -1 -1',
  PRIMARY KEY (`a_char_idx`,`a_page_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_quickslot06`;
CREATE TABLE `t_quickslot06` (
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_page_idx` tinyint(4) NOT NULL DEFAULT 0,
  `a_slot` varchar(255) NOT NULL DEFAULT '-1 -1 -1 -1 -1 -1 -1 -1 -1 -1',
  PRIMARY KEY (`a_char_idx`,`a_page_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_quickslot07`;
CREATE TABLE `t_quickslot07` (
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_page_idx` tinyint(4) NOT NULL DEFAULT 0,
  `a_slot` varchar(255) NOT NULL DEFAULT '-1 -1 -1 -1 -1 -1 -1 -1 -1 -1',
  PRIMARY KEY (`a_char_idx`,`a_page_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_quickslot08`;
CREATE TABLE `t_quickslot08` (
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_page_idx` tinyint(4) NOT NULL DEFAULT 0,
  `a_slot` varchar(255) NOT NULL DEFAULT '-1 -1 -1 -1 -1 -1 -1 -1 -1 -1',
  PRIMARY KEY (`a_char_idx`,`a_page_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_quickslot09`;
CREATE TABLE `t_quickslot09` (
  `a_char_idx` int(11) NOT NULL DEFAULT 0,
  `a_page_idx` tinyint(4) NOT NULL DEFAULT 0,
  `a_slot` varchar(255) NOT NULL DEFAULT '-1 -1 -1 -1 -1 -1 -1 -1 -1 -1',
  PRIMARY KEY (`a_char_idx`,`a_page_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_ranking`;
CREATE TABLE `t_ranking` (
  `a_charindex` int(11) NOT NULL DEFAULT 0,
  `a_type` int(11) NOT NULL DEFAULT 0,
  `a_rank` int(11) NOT NULL DEFAULT 0,
  `a_rankdate` datetime NOT NULL,
  `a_checked` tinyint(1) NOT NULL DEFAULT 0,
  `a_extra` int(11) NOT NULL DEFAULT 0,
  `a_titleindex` int(11) NOT NULL DEFAULT 0,
  KEY `a_charindex` (`a_charindex`),
  KEY `a_type` (`a_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ranking table';

DROP TABLE IF EXISTS `t_ranking_data`;
CREATE TABLE `t_ranking_data` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_job` int(11) NOT NULL DEFAULT 0,
  `a_level` int(11) NOT NULL DEFAULT 0,
  `a_exp` bigint(20) DEFAULT 0,
  `a_levelup_date` datetime DEFAULT NULL,
  `a_refresh_date` datetime DEFAULT NULL,
  KEY `a_char_index` (`a_char_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_ranking_data_backup`;
CREATE TABLE `t_ranking_data_backup` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_job` int(11) NOT NULL DEFAULT 0,
  `a_level` int(11) NOT NULL DEFAULT 0,
  `a_exp` bigint(20) DEFAULT 0,
  `a_levelup_date` datetime DEFAULT NULL,
  `a_refresh_date` datetime DEFAULT NULL,
  KEY `a_char_index` (`a_char_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_ranking_date`;
CREATE TABLE `t_ranking_date` (
  `a_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='time when ranking refreshed';

DROP TABLE IF EXISTS `t_ranking_ex`;
CREATE TABLE `t_ranking_ex` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_rank_by_level` int(11) NOT NULL DEFAULT 0,
  `a_rank_by_job` int(11) NOT NULL DEFAULT 0,
  `a_refresh_date` datetime DEFAULT NULL,
  KEY `a_char_index` (`a_char_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_ranking_ex_backup`;
CREATE TABLE `t_ranking_ex_backup` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_rank_by_level` int(11) NOT NULL DEFAULT 0,
  `a_rank_by_job` int(11) NOT NULL DEFAULT 0,
  `a_refresh_date` datetime DEFAULT NULL,
  KEY `a_char_index` (`a_char_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_reserved_gm_command`;
CREATE TABLE `t_reserved_gm_command` (
  `a_index` int(11) NOT NULL DEFAULT 0,
  `a_server` int(11) NOT NULL DEFAULT 0,
  `a_event_type` int(11) NOT NULL DEFAULT 0,
  `a_start_time` datetime NOT NULL,
  `a_start_string` varchar(255) NOT NULL DEFAULT '0',
  `a_end_time` datetime NOT NULL,
  `a_end_string` varchar(255) NOT NULL DEFAULT '0',
  `a_image_type` int(11) NOT NULL DEFAULT 0,
  `a_image_x` int(11) NOT NULL DEFAULT 0,
  `a_image_y` int(11) NOT NULL DEFAULT 0,
  `a_title` varchar(255) NOT NULL DEFAULT '0',
  `a_start_title` varchar(255) NOT NULL DEFAULT '0',
  `a_end_title` varchar(255) NOT NULL DEFAULT '0',
  `a_registe_time` datetime NOT NULL,
  `a_descr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_index`,`a_server`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='이벤트 툴을 이용하여 등록한 GM 명령어를 저장하는곳';

DROP TABLE IF EXISTS `t_royalrumble_winner_log`;
CREATE TABLE `t_royalrumble_winner_log` (
  `a_char_index` int(10) NOT NULL DEFAULT 0,
  `a_name` varchar(50) NOT NULL DEFAULT '',
  `a_nick` varchar(50) NOT NULL DEFAULT '',
  `a_leveltype` varchar(50) NOT NULL DEFAULT '',
  `a_date` datetime NOT NULL,
  KEY `charindex` (`a_char_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_rps_list`;
CREATE TABLE `t_rps_list` (
  `a_index` int(10) NOT NULL AUTO_INCREMENT,
  `a_name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`a_index`),
  UNIQUE KEY `a_index` (`a_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_rps_prob`;
CREATE TABLE `t_rps_prob` (
  `a_system_idx` int(10) NOT NULL DEFAULT 0,
  `a_level` int(10) NOT NULL DEFAULT 0,
  `a_userWinProb` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `a_serverWinProb` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `a_drawProb` tinyint(3) unsigned NOT NULL DEFAULT 0,
  UNIQUE KEY `a_system_idx_a_level` (`a_system_idx`,`a_level`),
  CONSTRAINT `FK_t_rps_prob_t_rps_list` FOREIGN KEY (`a_system_idx`) REFERENCES `t_rps_list` (`a_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_server_trans`;
CREATE TABLE `t_server_trans` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_request_time` int(11) NOT NULL DEFAULT 0,
  `a_currnet_server` tinyint(4) NOT NULL DEFAULT 0,
  `a_move_server` tinyint(4) NOT NULL DEFAULT 0,
  `a_state` tinyint(4) NOT NULL DEFAULT 0,
  `a_fail_code` int(4) NOT NULL DEFAULT 0,
  `a_start_time` int(11) NOT NULL DEFAULT 0,
  `a_end_time` int(11) NOT NULL DEFAULT 0,
  `a_use_item` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`,`a_request_time`),
  KEY `a_char_index_a_request_time` (`a_char_index`,`a_request_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_skill_cooltime`;
CREATE TABLE `t_skill_cooltime` (
  `a_char_index` int(10) unsigned NOT NULL DEFAULT 0,
  `a_skill_index` int(10) unsigned NOT NULL DEFAULT 0,
  `a_use_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`,`a_skill_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_stash00`;
CREATE TABLE `t_stash00` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_item_idx` int(11) NOT NULL DEFAULT -1,
  `a_plus` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag` int(11) NOT NULL DEFAULT 0,
  `a_serial` varchar(255) NOT NULL DEFAULT '',
  `a_count` bigint(20) NOT NULL DEFAULT 0,
  `a_used` int(11) NOT NULL DEFAULT -1,
  `a_item_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_used_2` int(11) DEFAULT -1,
  `a_socket` varchar(50) NOT NULL DEFAULT '',
  `a_item_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_now_dur` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`),
  KEY `idx_user_idx` (`a_user_idx`),
  KEY `idx_item_idx` (`a_item_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_stash01`;
CREATE TABLE `t_stash01` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_item_idx` int(11) NOT NULL DEFAULT -1,
  `a_plus` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag` int(11) NOT NULL DEFAULT 0,
  `a_serial` varchar(255) NOT NULL DEFAULT '',
  `a_count` bigint(20) NOT NULL DEFAULT 0,
  `a_used` int(11) NOT NULL DEFAULT -1,
  `a_item_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_used_2` int(11) DEFAULT -1,
  `a_socket` varchar(50) NOT NULL DEFAULT '',
  `a_item_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_now_dur` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`),
  KEY `idx_user_idx` (`a_user_idx`),
  KEY `idx_item_idx` (`a_item_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_stash02`;
CREATE TABLE `t_stash02` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_item_idx` int(11) NOT NULL DEFAULT -1,
  `a_plus` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag` int(11) NOT NULL DEFAULT 0,
  `a_serial` varchar(255) NOT NULL DEFAULT '',
  `a_count` bigint(20) NOT NULL DEFAULT 0,
  `a_used` int(11) NOT NULL DEFAULT -1,
  `a_item_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_used_2` int(11) DEFAULT -1,
  `a_socket` varchar(50) NOT NULL DEFAULT '',
  `a_item_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_now_dur` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`),
  KEY `idx_user_idx` (`a_user_idx`),
  KEY `idx_item_idx` (`a_item_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_stash03`;
CREATE TABLE `t_stash03` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_item_idx` int(11) NOT NULL DEFAULT -1,
  `a_plus` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag` int(11) NOT NULL DEFAULT 0,
  `a_serial` varchar(255) NOT NULL DEFAULT '',
  `a_count` bigint(20) NOT NULL DEFAULT 0,
  `a_used` int(11) NOT NULL DEFAULT -1,
  `a_item_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_used_2` int(11) DEFAULT -1,
  `a_socket` varchar(50) NOT NULL DEFAULT '',
  `a_item_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_now_dur` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`),
  KEY `idx_user_idx` (`a_user_idx`),
  KEY `idx_item_idx` (`a_item_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_stash04`;
CREATE TABLE `t_stash04` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_item_idx` int(11) NOT NULL DEFAULT -1,
  `a_plus` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag` int(11) NOT NULL DEFAULT 0,
  `a_serial` varchar(255) NOT NULL DEFAULT '',
  `a_count` bigint(20) NOT NULL DEFAULT 0,
  `a_used` int(11) NOT NULL DEFAULT -1,
  `a_item_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_used_2` int(11) DEFAULT -1,
  `a_socket` varchar(50) NOT NULL DEFAULT '',
  `a_item_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_now_dur` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`),
  KEY `idx_user_idx` (`a_user_idx`),
  KEY `idx_item_idx` (`a_item_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_stash05`;
CREATE TABLE `t_stash05` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_item_idx` int(11) NOT NULL DEFAULT -1,
  `a_plus` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag` int(11) NOT NULL DEFAULT 0,
  `a_serial` varchar(255) NOT NULL DEFAULT '',
  `a_count` bigint(20) NOT NULL DEFAULT 0,
  `a_used` int(11) NOT NULL DEFAULT -1,
  `a_item_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_used_2` int(11) DEFAULT -1,
  `a_socket` varchar(50) NOT NULL DEFAULT '',
  `a_item_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_now_dur` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`),
  KEY `idx_user_idx` (`a_user_idx`),
  KEY `idx_item_idx` (`a_item_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_stash06`;
CREATE TABLE `t_stash06` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_item_idx` int(11) NOT NULL DEFAULT -1,
  `a_plus` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag` int(11) NOT NULL DEFAULT 0,
  `a_serial` varchar(255) NOT NULL DEFAULT '',
  `a_count` bigint(20) NOT NULL DEFAULT 0,
  `a_used` int(11) NOT NULL DEFAULT -1,
  `a_item_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_used_2` int(11) DEFAULT -1,
  `a_socket` varchar(50) NOT NULL DEFAULT '',
  `a_item_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_now_dur` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`),
  KEY `idx_user_idx` (`a_user_idx`),
  KEY `idx_item_idx` (`a_item_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_stash07`;
CREATE TABLE `t_stash07` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_item_idx` int(11) NOT NULL DEFAULT -1,
  `a_plus` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag` int(11) NOT NULL DEFAULT 0,
  `a_serial` varchar(255) NOT NULL DEFAULT '',
  `a_count` bigint(20) NOT NULL DEFAULT 0,
  `a_used` int(11) NOT NULL DEFAULT -1,
  `a_item_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_used_2` int(11) DEFAULT -1,
  `a_socket` varchar(50) NOT NULL DEFAULT '',
  `a_item_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_now_dur` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`),
  KEY `idx_user_idx` (`a_user_idx`),
  KEY `idx_item_idx` (`a_item_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_stash08`;
CREATE TABLE `t_stash08` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_item_idx` int(11) NOT NULL DEFAULT -1,
  `a_plus` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag` int(11) NOT NULL DEFAULT 0,
  `a_serial` varchar(255) NOT NULL DEFAULT '',
  `a_count` bigint(20) NOT NULL DEFAULT 0,
  `a_used` int(11) NOT NULL DEFAULT -1,
  `a_item_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_used_2` int(11) DEFAULT -1,
  `a_socket` varchar(50) NOT NULL DEFAULT '',
  `a_item_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_now_dur` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`),
  KEY `idx_user_idx` (`a_user_idx`),
  KEY `idx_item_idx` (`a_item_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_stash09`;
CREATE TABLE `t_stash09` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_user_idx` int(11) NOT NULL DEFAULT 0,
  `a_item_idx` int(11) NOT NULL DEFAULT -1,
  `a_plus` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos` tinyint(3) NOT NULL DEFAULT -1,
  `a_flag` int(11) NOT NULL DEFAULT 0,
  `a_serial` varchar(255) NOT NULL DEFAULT '',
  `a_count` bigint(20) NOT NULL DEFAULT 0,
  `a_used` int(11) NOT NULL DEFAULT -1,
  `a_item_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_used_2` int(11) DEFAULT -1,
  `a_socket` varchar(50) NOT NULL DEFAULT '',
  `a_item_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_now_dur` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`),
  KEY `idx_user_idx` (`a_user_idx`),
  KEY `idx_item_idx` (`a_item_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_stash_money`;
CREATE TABLE `t_stash_money` (
  `a_user_index` int(10) unsigned NOT NULL DEFAULT 0,
  `a_stash_money` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_user_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='창고 돈(나스)를 저장함';

DROP TABLE IF EXISTS `t_syndicate_history`;
CREATE TABLE `t_syndicate_history` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_syndicate_type` int(11) NOT NULL DEFAULT 0,
  `a_enum` int(11) NOT NULL DEFAULT 0,
  `a_grade` int(11) NOT NULL DEFAULT 0,
  `a_target_syndicate_type` int(11) NOT NULL DEFAULT 0,
  `a_target_name` varchar(50) DEFAULT NULL,
  `a_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_syndicate_jewel_point`;
CREATE TABLE `t_syndicate_jewel_point` (
  `a_syndicate_type` int(11) NOT NULL DEFAULT 0,
  `a_jewel_point` bigint(20) NOT NULL DEFAULT 0,
  `a_user_count` bigint(20) NOT NULL DEFAULT 0,
  `a_king_charIndex` int(11) DEFAULT 0,
  PRIMARY KEY (`a_syndicate_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_timer_item`;
CREATE TABLE `t_timer_item` (
  `a_char_index` int(10) NOT NULL DEFAULT 0,
  `a_type_index` int(10) NOT NULL DEFAULT 0,
  `a_expire_time` datetime NOT NULL,
  KEY `a_char_index` (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='기간제 아이템의 만료 시간을 저장하는 테이블';

DROP TABLE IF EXISTS `t_titlelist`;
CREATE TABLE `t_titlelist` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_title_index` int(11) NOT NULL DEFAULT 0,
  `a_endtime` int(11) NOT NULL DEFAULT 0,
  `a_custom_title_index` int(11) DEFAULT -1,
  KEY `a_char_index` (`a_char_index`,`a_title_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_title_make`;
CREATE TABLE `t_title_make` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_color` tinyint(4) NOT NULL DEFAULT 0,
  `a_background` tinyint(4) NOT NULL DEFAULT 0,
  `a_effect` tinyint(4) NOT NULL DEFAULT 0,
  `a_name` varchar(30) NOT NULL DEFAULT '',
  `a_option1` tinyint(4) DEFAULT -1,
  `a_option1_level` tinyint(4) DEFAULT -1,
  `a_option2` tinyint(4) DEFAULT -1,
  `a_option2_level` tinyint(4) DEFAULT -1,
  `a_option3` tinyint(4) DEFAULT -1,
  `a_option3_level` tinyint(4) DEFAULT -1,
  `a_option4` tinyint(4) DEFAULT -1,
  `a_option4_level` tinyint(4) DEFAULT -1,
  `a_option5` tinyint(4) DEFAULT -1,
  `a_option5_level` tinyint(4) DEFAULT -1,
  `a_use` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`a_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_tradeagent`;
CREATE TABLE `t_tradeagent` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_item_serial` int(11) NOT NULL DEFAULT 0,
  `a_item_serial2` varchar(20) NOT NULL DEFAULT '',
  `a_item_plus` int(11) NOT NULL DEFAULT 0,
  `a_item_plus2` int(11) NOT NULL DEFAULT 0,
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
  `a_process_state` tinyint(2) unsigned NOT NULL DEFAULT 0,
  `a_socketCount` tinyint(2) unsigned DEFAULT 0,
  `a_socket0` int(10) DEFAULT -1,
  `a_socket1` int(10) DEFAULT -1,
  `a_socket2` int(10) DEFAULT -1,
  `a_socket3` int(10) DEFAULT -1,
  `a_socket4` int(10) DEFAULT -1,
  `a_socket5` int(10) DEFAULT -1,
  `a_socket6` int(10) DEFAULT -1,
  `a_now_dur` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_expire_date` datetime DEFAULT NULL,
  `a_rare_grade` int(5) DEFAULT 0,
  PRIMARY KEY (`a_index`),
  KEY `name` (`a_item_name`,`a_item_type`),
  KEY `StateIdx` (`a_state`,`a_regist_date`),
  KEY `charIndex` (`a_sell_charindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_tradeagent_after_sell_returned`;
CREATE TABLE `t_tradeagent_after_sell_returned` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_msg_type` int(11) NOT NULL DEFAULT 0,
  `a_item_index` int(11) NOT NULL DEFAULT 0,
  `a_item_count` int(11) NOT NULL DEFAULT 0,
  `a_registe_date` datetime NOT NULL,
  KEY `a_char_index` (`a_char_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='판매대행에서 거래후 판매자에게 메시지 전송 및 반품 메지시 전';

DROP TABLE IF EXISTS `t_tradeagent_iteminfo`;
CREATE TABLE `t_tradeagent_iteminfo` (
  `a_index` int(10) NOT NULL DEFAULT 0,
  `a_item_flag` int(10) DEFAULT NULL,
  `a_item_name` varchar(50) DEFAULT NULL,
  `a_item_level` int(10) DEFAULT NULL,
  `a_item_type` int(10) DEFAULT NULL,
  `a_item_subtype` int(10) DEFAULT NULL,
  `a_item_job` int(10) DEFAULT NULL,
  `a_num0` int(10) DEFAULT NULL,
  `a_num1` int(10) DEFAULT NULL,
  PRIMARY KEY (`a_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_tradeagent_like`;
CREATE TABLE `t_tradeagent_like` (
  `a_char_index` int(10) NOT NULL DEFAULT 0,
  `a_tradeagent_index` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`,`a_tradeagent_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_trigger_saveinfo`;
CREATE TABLE `t_trigger_saveinfo` (
  `a_index` int(11) NOT NULL AUTO_INCREMENT,
  `a_zone_index` int(11) NOT NULL DEFAULT 0,
  `a_room_index` int(11) NOT NULL DEFAULT 0,
  `a_save_info` int(11) NOT NULL DEFAULT 0,
  `a_save_time` datetime NOT NULL,
  `a_difficulty` int(11) NOT NULL DEFAULT -1,
  PRIMARY KEY (`a_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_warground`;
CREATE TABLE `t_warground` (
  `a_char_index` int(10) NOT NULL DEFAULT 0,
  `a_total_kill_count` int(10) NOT NULL DEFAULT 0,
  `a_total_death_count` int(10) NOT NULL DEFAULT 0,
  `a_warground_point` int(10) NOT NULL DEFAULT 0,
  `a_warground_acc_point` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_wear_inven`;
CREATE TABLE `t_wear_inven` (
  `a_char_index` int(11) NOT NULL DEFAULT 0,
  `a_wear_pos` int(11) NOT NULL DEFAULT 0,
  `a_item_idx` int(11) NOT NULL DEFAULT -1,
  `a_plus` int(11) NOT NULL DEFAULT 0,
  `a_flag` int(11) NOT NULL DEFAULT 0,
  `a_serial` varchar(255) NOT NULL DEFAULT '',
  `a_used` int(11) DEFAULT -1,
  `a_used2` int(11) DEFAULT -1,
  `a_item_option0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_option4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var0` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var1` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var2` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var3` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var4` smallint(6) NOT NULL DEFAULT 0,
  `a_item_origin_var5` smallint(6) NOT NULL DEFAULT 0,
  `a_socket0` smallint(6) NOT NULL DEFAULT -1,
  `a_socket1` smallint(6) NOT NULL DEFAULT -1,
  `a_socket2` smallint(6) NOT NULL DEFAULT -1,
  `a_socket3` smallint(6) NOT NULL DEFAULT -1,
  `a_socket4` smallint(6) NOT NULL DEFAULT -1,
  `a_socket5` smallint(6) NOT NULL DEFAULT -1,
  `a_socket6` smallint(6) NOT NULL DEFAULT -1,
  `a_now_dur` smallint(5) unsigned NOT NULL DEFAULT 0,
  `a_max_dur` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_char_index`,`a_wear_pos`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET FOREIGN_KEY_CHECKS=1;
