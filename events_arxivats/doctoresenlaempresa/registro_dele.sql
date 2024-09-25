-- phpMyAdmin SQL Dump
-- version 2.6.3-pl1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Sep 30, 2013 at 02:23 PM
-- Server version: 5.0.20
-- PHP Version: 4.3.8
-- 
-- Database: `registro_dele`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_ak_acl`
-- 

CREATE TABLE `jos_ak_acl` (
  `user_id` bigint(20) unsigned NOT NULL,
  `permissions` mediumtext,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_ak_acl`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_ak_profiles`
-- 

CREATE TABLE `jos_ak_profiles` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `description` varchar(255) NOT NULL,
  `configuration` longtext,
  `filters` longtext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `jos_ak_profiles`
-- 

INSERT INTO `jos_ak_profiles` VALUES (1, 'Default Backup Profile', '###AES128###N6GtPph0WZVjTlOis87bvJOzzdnbcZLmZdrgO1D0MgLiMgUHzQVRKcnueiqqctV2Dsj0vRcTS8rcujyHVTiH9W/k4BKZHl+H/ZNd91q6axYnEO5nb813445+MROUvcdV71vxcgtQiNnONR9BFCW7Y848Ng9s4+bcQyRT8pGPqw/nSxSs5NU8hsXkS8ob5ahP+YFNyYBRUo7gGE/XhqQPeSkEVEqMHcmVMXqTy6RDrDOk8SN1f1Ezeg98nWBkAfpTSEfCsivfnNiYDnblPmhe2PNF+KfsYkrGVYR9BCfH1iohQJCF51cyuEFzXB28iClRGDXKNR1hjJhqH9JdEC4pKDg2X/wjGJQguc4pgJA1nWuAlcw3I9HU9gq10tyztxpUpxxM5bF27lkTAIzj2P7LnQJl5lXA3CC2ZK+4I8kKvmbkZsm5fb/8BvUCrDUxb8KYV0sQBTb8GPNVzVOSaSuTTXVeblL0uKoIypX9LPYuEZ/ejZW5E1iI5mFQxtismBwL05BWXEJdurufdnifP9ky9T2ZFiSxB7eJlI2w+0b6UfGY0lV7lH/i3gUuyTNGyanWxIpDh3b2c8bFsH78N1Np6PXsf8jQyEPGP8WOiQoF2XufPFGhiBsRnrv8UrAp8Iyw7afyzRkATJpFm0SY8r1ke0zO7mPRffFkA8pZmhdBjHNlMDLqAsF/Xha1Ftc1K6uUFB4E/ACtdVx/O345/T+yLDm6lOF4p06XZQIQWCJdHYSk9xUkcDLMg5WaZ4QW0Y7Pxi/FTJnNq4b1HiYPhXInDpDX80P/3VD9kOcAG6bgla0PxSvKFm19JJBCQa8AhIY+8G38SLzjwt3v2BKLyGMVQtPe74NuqFt9Ab0Z0XT2o6OW+0Y5wd4wfaD8KFiyMHSJBsbiXooZe3GDJBMlexN6qFDVOGuUYGYOyi0llmtzt0PeNsX/hsSWS3R3hmqvL2AIhCgUaWTCrRu+jX6nK7mCbOckmqYybPQes9G9BJLYAFIZTxYtn2tE8PXk4GQfxbu/pHrBON4yCBhWKM6T3Pb+XOapbhkJCJve2BpnA0JFf6BArgOelOr+x7PzviVITr7DiQZP8Qgw9Y2XQZIwHuym44pi34Ae7x7ZfDqgF2vvfxBzNuhepOfwonniFQgofhI9uA6AV67ggV/aXVkbtEm4ThMoCKNhMvEnUSPZ68NfPbE9gA5I4FiRESSKFhNYXihOXq4pVdei7SElydmVDg7InGDVNolt+wJSyxTWMn7kNcyCVPcKCiamO6vJ4OuVHzKtLlWqDEjh3CRm7c1Y09Cvy8FCqmoNFcLD/xurCcR8xEQSlgvb1nPWoBogydt0pPR1ig++yVlPOPv6NINaTEoIYbGHcV9XFB90zgME6GkLzvSPWk/XtqeGMVCyoRoGAYCT4aDZ4YiKUSFUI36j7htiKD+czpNRK/RXc1ib/MdCICS2WLSj/CmZnCtr1B4+Ki29cXFHcBWkIbhaBgq/SM2GwDEm/uxqTQEqvoPa7riTw9uB2GPV2gGcEdT2AhV9zMZwOiC2p597NMTP+7fLYLBa6Q+OlY5UrUG1tDe1gZSfv17bFgM0HPoIL3M4YUce1KGGIS22bY0OA0PL7WGTBu+o2p4avX0vwSaaAzx3BvPzTIU8zZV4+4yLAnf8YCgPiyc5A+EZXwU6+KJnHAkfcPy9OeboyF5uqWCU3wLMEbDpIfiyt9CxSXlDNv7CtUFTObHhHe70+gupCXMXVTgF6bqaaYO0h3EHZczsGd+Welk7q5o2+Yv3UTVB6G9kkJHvMF9hJ//G5w6K7pQrL5DXeW6uwssixWM8qj7Lt0+o3mpXlZ48XhrDzkWTuxGIQ8wdG2z8oWgTGC86BxusesqXmkk/VmLWVpm8Cd0grbQF2y9hltV84Mh9dSPfupbtGMkynx9zl2zZEO9nTuQRRIL3joL2IsK1J2DBd+iICx4w8mAyw0JHmG3EMcvGySdwpZPivn1FHOxO8CK3f9FfNCqVtzsC49MFAAA=', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_ak_stats`
-- 

CREATE TABLE `jos_ak_stats` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `description` varchar(255) NOT NULL,
  `comment` longtext,
  `backupstart` timestamp NOT NULL default '0000-00-00 00:00:00',
  `backupend` timestamp NOT NULL default '0000-00-00 00:00:00',
  `status` enum('run','fail','complete') NOT NULL default 'run',
  `origin` varchar(30) NOT NULL default 'backend',
  `type` varchar(30) NOT NULL default 'full',
  `profile_id` bigint(20) NOT NULL default '1',
  `archivename` longtext,
  `absolute_path` longtext,
  `multipart` int(11) NOT NULL default '0',
  `tag` varchar(255) default NULL,
  `filesexist` tinyint(3) NOT NULL default '1',
  `remote_filename` varchar(1000) default NULL,
  `total_size` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_fullstatus` (`filesexist`,`status`),
  KEY `idx_stale` (`status`,`origin`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `jos_ak_stats`
-- 

INSERT INTO `jos_ak_stats` VALUES (1, 'Backup taken on Wednesday, 09 January 2013 11:12', '', '2013-01-09 11:12:06', '2013-01-09 11:12:28', 'complete', 'backend', 'full', 1, 'site-www.icmab.es-20130109-111206.jpa', '/var/www/congresses/doctoresenlaempresa/registro/administrator/components/com_akeeba/backup/site-www.icmab.es-20130109-111206.jpa', 1, 'backend', 1, NULL, 24146148);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_ak_storage`
-- 

CREATE TABLE `jos_ak_storage` (
  `tag` varchar(255) NOT NULL,
  `lastupdate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `data` longtext,
  PRIMARY KEY  (`tag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_ak_storage`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_banner`
-- 

CREATE TABLE `jos_banner` (
  `bid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `type` varchar(30) NOT NULL default 'banner',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `imptotal` int(11) NOT NULL default '0',
  `impmade` int(11) NOT NULL default '0',
  `clicks` int(11) NOT NULL default '0',
  `imageurl` varchar(100) NOT NULL default '',
  `clickurl` varchar(200) NOT NULL default '',
  `date` datetime default NULL,
  `showBanner` tinyint(1) NOT NULL default '0',
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(50) default NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL default '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY  (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_banner`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_bannerclient`
-- 

CREATE TABLE `jos_bannerclient` (
  `cid` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `contact` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` time default NULL,
  `editor` varchar(50) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_bannerclient`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_bannertrack`
-- 

CREATE TABLE `jos_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_bannertrack`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_categories`
-- 

CREATE TABLE `jos_categories` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `image` varchar(255) NOT NULL default '',
  `section` varchar(50) NOT NULL default '',
  `image_position` varchar(30) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(50) default NULL,
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_categories`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_components`
-- 

CREATE TABLE `jos_components` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `link` varchar(255) NOT NULL default '',
  `menuid` int(11) unsigned NOT NULL default '0',
  `parent` int(11) unsigned NOT NULL default '0',
  `admin_menu_link` varchar(255) NOT NULL default '',
  `admin_menu_alt` varchar(255) NOT NULL default '',
  `option` varchar(50) NOT NULL default '',
  `ordering` int(11) NOT NULL default '0',
  `admin_menu_img` varchar(255) NOT NULL default '',
  `iscore` tinyint(4) NOT NULL default '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=52 ;

-- 
-- Dumping data for table `jos_components`
-- 

INSERT INTO `jos_components` VALUES (1, 'Banners', '', 0, 0, '', 'Banner Management', 'com_banners', 0, 'js/ThemeOffice/component.png', 0, 'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n', 1);
INSERT INTO `jos_components` VALUES (2, 'Banners', '', 0, 1, 'option=com_banners', 'Active Banners', 'com_banners', 1, 'js/ThemeOffice/edit.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (3, 'Clients', '', 0, 1, 'option=com_banners&c=client', 'Manage Clients', 'com_banners', 2, 'js/ThemeOffice/categories.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (4, 'Web Links', 'option=com_weblinks', 0, 0, '', 'Manage Weblinks', 'com_weblinks', 0, 'js/ThemeOffice/component.png', 0, 'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 1);
INSERT INTO `jos_components` VALUES (5, 'Links', '', 0, 4, 'option=com_weblinks', 'View existing weblinks', 'com_weblinks', 1, 'js/ThemeOffice/edit.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (6, 'Categories', '', 0, 4, 'option=com_categories&section=com_weblinks', 'Manage weblink categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (7, 'Contacts', 'option=com_contact', 0, 0, '', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/component.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1);
INSERT INTO `jos_components` VALUES (8, 'Contacts', '', 0, 7, 'option=com_contact', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/edit.png', 1, '', 1);
INSERT INTO `jos_components` VALUES (9, 'Categories', '', 0, 7, 'option=com_categories&section=com_contact_details', 'Manage contact categories', '', 2, 'js/ThemeOffice/categories.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1);
INSERT INTO `jos_components` VALUES (10, 'Polls', 'option=com_poll', 0, 0, 'option=com_poll', 'Manage Polls', 'com_poll', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (11, 'News Feeds', 'option=com_newsfeeds', 0, 0, '', 'News Feeds Management', 'com_newsfeeds', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (12, 'Feeds', '', 0, 11, 'option=com_newsfeeds', 'Manage News Feeds', 'com_newsfeeds', 1, 'js/ThemeOffice/edit.png', 0, 'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 1);
INSERT INTO `jos_components` VALUES (13, 'Categories', '', 0, 11, 'option=com_categories&section=com_newsfeeds', 'Manage Categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (14, 'User', 'option=com_user', 0, 0, '', '', 'com_user', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (15, 'Search', 'option=com_search', 0, 0, 'option=com_search', 'Search Statistics', 'com_search', 0, 'js/ThemeOffice/component.png', 1, 'enabled=0\n\n', 1);
INSERT INTO `jos_components` VALUES (16, 'Categories', '', 0, 1, 'option=com_categories&section=com_banner', 'Categories', '', 3, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (17, 'Wrapper', 'option=com_wrapper', 0, 0, '', 'Wrapper', 'com_wrapper', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (18, 'Mail To', '', 0, 0, '', '', 'com_mailto', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (19, 'Media Manager', '', 0, 0, 'option=com_media', 'Media Manager', 'com_media', 0, '', 1, 'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\nallowed_media_usergroup=3\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=0\n\n', 1);
INSERT INTO `jos_components` VALUES (20, 'Articles', 'option=com_content', 0, 0, '', '', 'com_content', 0, '', 1, 'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=0\n\n', 1);
INSERT INTO `jos_components` VALUES (21, 'Configuration Manager', '', 0, 0, '', 'Configuration', 'com_config', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (22, 'Installation Manager', '', 0, 0, '', 'Installer', 'com_installer', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (23, 'Language Manager', '', 0, 0, '', 'Languages', 'com_languages', 0, '', 1, 'administrator=en-GB\nsite=en-GB', 1);
INSERT INTO `jos_components` VALUES (24, 'Mass mail', '', 0, 0, '', 'Mass Mail', 'com_massmail', 0, '', 1, 'mailSubjectPrefix=\nmailBodySuffix=\n\n', 1);
INSERT INTO `jos_components` VALUES (25, 'Menu Editor', '', 0, 0, '', 'Menu Editor', 'com_menus', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (27, 'Messaging', '', 0, 0, '', 'Messages', 'com_messages', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (28, 'Modules Manager', '', 0, 0, '', 'Modules', 'com_modules', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (29, 'Plugin Manager', '', 0, 0, '', 'Plugins', 'com_plugins', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (30, 'Template Manager', '', 0, 0, '', 'Templates', 'com_templates', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (31, 'User Manager', '', 0, 0, '', 'Users', 'com_users', 0, '', 1, 'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n', 1);
INSERT INTO `jos_components` VALUES (32, 'Cache Manager', '', 0, 0, '', 'Cache', 'com_cache', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (33, 'Control Panel', '', 0, 0, '', 'Control Panel', 'com_cpanel', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (34, 'RSform!Pro', 'option=com_rsform', 0, 0, 'option=com_rsform', 'RSform!Pro', 'com_rsform', 0, '../administrator/components/com_rsform/images/rsformpro.gif', 0, 'formId=1\n', 1);
INSERT INTO `jos_components` VALUES (35, 'Manage Forms', '', 0, 34, 'option=com_rsform&task=forms.manage', 'Manage Forms', 'com_rsform', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (36, 'Manage Submissions', '', 0, 34, 'option=com_rsform&task=submissions.manage', 'Manage Submissions', 'com_rsform', 1, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (37, 'Configuration', '', 0, 34, 'option=com_rsform&task=configuration.edit', 'Configuration', 'com_rsform', 2, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (38, 'Backup/Restore', '', 0, 34, 'option=com_rsform&task=backup.restore', 'Backup/Restore', 'com_rsform', 3, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (39, 'Updates', '', 0, 34, 'option=com_rsform&task=updates.manage', 'Updates', 'com_rsform', 4, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (40, 'Plugins', '', 0, 34, 'option=com_rsform&task=goto.plugins', 'Plugins', 'com_rsform', 5, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (41, 'Phoca Download', 'option=com_phocadownload', 0, 0, 'option=com_phocadownload', 'Phoca Download', 'com_phocadownload', 0, 'components/com_phocadownload/assets/images/icon-16-pdl-menu.png', 0, 'filename_or_name=title\ndownload_external_link=_self\ndisplay_downloads=0\ndisplay_description=3\ndisplay_detail=1\ndisplay_new=0\ndisplay_hot=0\ndisplay_most_download=1\ndisplay_file_view=0\ndisplay_date_type=0\ndownload_metadesc=\ndownload_metakey=\nsection_ordering=1\ncategory_ordering=1\nfile_ordering=1\ndefault_pagination=20\npagination=5;10;15;20;50\ndisplay_up_icon=1\nenable_plugin_query=0\ndisplay_category_comments=0\ndisplay_file_comments=0\nfile_icon_size=16\nfile_icon_size_md=16\nbutton_style=\ntheme=phocadownload-grey\ndisplay_num_doc_secs=0\ndisplay_num_doc_secs_header=1\nlicense_box_height=300\ndisplay_play=0\nplayer_width=328\nplayer_height=200\nplayer_mp3_height=30\nplay_popup_window=0\ndisplay_preview=0\npreview_width=640\npreview_height=480\npreview_popup_window=0\nenable_user_cp=0\nuser_files_max_count=5\nuser_files_max_size=20971520\nuser_file_upload_size=4145728\nenable_user_upload_approve=0\nsend_mail_download=0\nsend_mail_upload=0\n\n', 1);
INSERT INTO `jos_components` VALUES (42, 'Control Panel', '', 0, 41, 'option=com_phocadownload', 'Control Panel', 'com_phocadownload', 0, 'components/com_phocadownload/assets/images/icon-16-pdl-control-panel.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (43, 'Files', '', 0, 41, 'option=com_phocadownload&view=phocadownloads', 'Files', 'com_phocadownload', 1, 'components/com_phocadownload/assets/images/icon-16-pdl-menu-files.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (44, 'Sections', '', 0, 41, 'option=com_phocadownload&view=phocadownloadsecs', 'Sections', 'com_phocadownload', 2, 'components/com_phocadownload/assets/images/icon-16-pdl-menu-section.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (45, 'Categories', '', 0, 41, 'option=com_phocadownload&view=phocadownloadcats', 'Categories', 'com_phocadownload', 3, 'components/com_phocadownload/assets/images/icon-16-pdl-menu-category.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (46, 'Licenses', '', 0, 41, 'option=com_phocadownload&view=phocadownloadlics', 'Licenses', 'com_phocadownload', 4, 'components/com_phocadownload/assets/images/icon-16-pdl-menu-lic.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (47, 'Settings', '', 0, 41, 'option=com_phocadownload&view=phocadownloadset', 'Settings', 'com_phocadownload', 5, 'components/com_phocadownload/assets/images/icon-16-pdl-menu-settings.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (48, 'Statistics', '', 0, 41, 'option=com_phocadownload&view=phocadownloadstat', 'Statistics', 'com_phocadownload', 6, 'components/com_phocadownload/assets/images/icon-16-pdl-menu-stat.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (49, 'PHOCADOWNLOAD_USERS', '', 0, 41, 'option=com_phocadownload&view=phocadownloadusers', 'PHOCADOWNLOAD_USERS', 'com_phocadownload', 7, 'components/com_phocadownload/assets/images/icon-16-pdl-menu-users.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (50, 'Info', '', 0, 41, 'option=com_phocadownload&view=phocadownloadinfo', 'Info', 'com_phocadownload', 8, 'components/com_phocadownload/assets/images/icon-16-pdl-menu-info.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (51, 'COM_AKEEBA', 'option=com_akeeba', 0, 0, 'option=com_akeeba', 'COM_AKEEBA', 'com_akeeba', 0, 'components/com_akeeba/assets/images/akeeba-16.png', 0, 'siteurl=http://www.icmab.es/doctoresenlaempresa/registro/\njlibrariesdir=/var/www/congresses/doctoresenlaempresa/registro/libraries\njversion=1.5\nlastversion=3.4.3\nliveupdate=lastcheck=1357729862\\nupdatedata="{\\"supported\\":true,\\"stuck\\":false,\\"version\\":\\"3.6.12\\",\\"date\\":\\"2013-01-04\\",\\"stability\\":\\"stable\\",\\"downloadURL\\":\\"http:\\\\\\/\\\\\\/cdn.akeebabackup.com\\\\\\/downloads\\\\\\/akeebabackup\\\\\\/3.6.12\\\\\\/com_akeeba-3.6.12-core.zip\\",\\"infoURL\\":\\"https:\\\\\\/\\\\\\/www.akeebabackup.com\\\\\\/downloads\\\\\\/akeeba-backup\\\\\\/3-6-12.html\\",\\"releasenotes\\":\\"<h3>In a nutshell<\\\\\\/h3><p> Akeeba Backup 3.6.11 wouldn''t work on Internet Explorer. This version addresses this issue.<\\\\\\/p><h3>Changelog<\\\\\\/h3><h4>Bug fixes<\\\\\\/h4><ul> <li>[LOW] Backup doesn''t run on IE because it lacks console.debug support (ugh!)<\\\\\\/li><\\\\\\/ul>\\"}"\\nstuck=0\\n\\n\n\n', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_contact_details`
-- 

CREATE TABLE `jos_contact_details` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `con_position` varchar(255) default NULL,
  `address` text,
  `suburb` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `country` varchar(100) default NULL,
  `postcode` varchar(100) default NULL,
  `telephone` varchar(255) default NULL,
  `fax` varchar(255) default NULL,
  `misc` mediumtext,
  `image` varchar(255) default NULL,
  `imagepos` varchar(20) default NULL,
  `email_to` varchar(255) default NULL,
  `default_con` tinyint(1) unsigned NOT NULL default '0',
  `published` tinyint(1) unsigned NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL default '0',
  `catid` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `mobile` varchar(255) NOT NULL default '',
  `webpage` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_contact_details`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_content`
-- 

CREATE TABLE `jos_content` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `title_alias` varchar(255) NOT NULL default '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `sectionid` int(11) unsigned NOT NULL default '0',
  `mask` int(11) unsigned NOT NULL default '0',
  `catid` int(11) unsigned NOT NULL default '0',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL default '1',
  `parentid` int(11) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0',
  `metadata` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_content`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_content_frontpage`
-- 

CREATE TABLE `jos_content_frontpage` (
  `content_id` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_content_frontpage`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_content_rating`
-- 

CREATE TABLE `jos_content_rating` (
  `content_id` int(11) NOT NULL default '0',
  `rating_sum` int(11) unsigned NOT NULL default '0',
  `rating_count` int(11) unsigned NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_content_rating`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_acl_aro`
-- 

CREATE TABLE `jos_core_acl_aro` (
  `id` int(11) NOT NULL auto_increment,
  `section_value` varchar(240) NOT NULL default '0',
  `value` varchar(240) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- 
-- Dumping data for table `jos_core_acl_aro`
-- 

INSERT INTO `jos_core_acl_aro` VALUES (10, 'users', '62', 0, 'Administrator', 0);
INSERT INTO `jos_core_acl_aro` VALUES (11, 'users', '63', 0, 'Albert', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_acl_aro_groups`
-- 

CREATE TABLE `jos_core_acl_aro_groups` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `lft` int(11) NOT NULL default '0',
  `rgt` int(11) NOT NULL default '0',
  `value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

-- 
-- Dumping data for table `jos_core_acl_aro_groups`
-- 

INSERT INTO `jos_core_acl_aro_groups` VALUES (17, 0, 'ROOT', 1, 22, 'ROOT');
INSERT INTO `jos_core_acl_aro_groups` VALUES (28, 17, 'USERS', 2, 21, 'USERS');
INSERT INTO `jos_core_acl_aro_groups` VALUES (29, 28, 'Public Frontend', 3, 12, 'Public Frontend');
INSERT INTO `jos_core_acl_aro_groups` VALUES (18, 29, 'Registered', 4, 11, 'Registered');
INSERT INTO `jos_core_acl_aro_groups` VALUES (19, 18, 'Author', 5, 10, 'Author');
INSERT INTO `jos_core_acl_aro_groups` VALUES (20, 19, 'Editor', 6, 9, 'Editor');
INSERT INTO `jos_core_acl_aro_groups` VALUES (21, 20, 'Publisher', 7, 8, 'Publisher');
INSERT INTO `jos_core_acl_aro_groups` VALUES (30, 28, 'Public Backend', 13, 20, 'Public Backend');
INSERT INTO `jos_core_acl_aro_groups` VALUES (23, 30, 'Manager', 14, 19, 'Manager');
INSERT INTO `jos_core_acl_aro_groups` VALUES (24, 23, 'Administrator', 15, 18, 'Administrator');
INSERT INTO `jos_core_acl_aro_groups` VALUES (25, 24, 'Super Administrator', 16, 17, 'Super Administrator');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_acl_aro_map`
-- 

CREATE TABLE `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL default '0',
  `section_value` varchar(230) NOT NULL default '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY  (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_core_acl_aro_map`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_acl_aro_sections`
-- 

CREATE TABLE `jos_core_acl_aro_sections` (
  `id` int(11) NOT NULL auto_increment,
  `value` varchar(230) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(230) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `jos_core_acl_aro_sections`
-- 

INSERT INTO `jos_core_acl_aro_sections` VALUES (10, 'users', 1, 'Users', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_acl_groups_aro_map`
-- 

CREATE TABLE `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL default '0',
  `section_value` varchar(240) NOT NULL default '',
  `aro_id` int(11) NOT NULL default '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_core_acl_groups_aro_map`
-- 

INSERT INTO `jos_core_acl_groups_aro_map` VALUES (25, '', 10);
INSERT INTO `jos_core_acl_groups_aro_map` VALUES (25, '', 11);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_log_items`
-- 

CREATE TABLE `jos_core_log_items` (
  `time_stamp` date NOT NULL default '0000-00-00',
  `item_table` varchar(50) NOT NULL default '',
  `item_id` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_core_log_items`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_log_searches`
-- 

CREATE TABLE `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL default '',
  `hits` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_core_log_searches`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_groups`
-- 

CREATE TABLE `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_groups`
-- 

INSERT INTO `jos_groups` VALUES (0, 'Public');
INSERT INTO `jos_groups` VALUES (1, 'Registered');
INSERT INTO `jos_groups` VALUES (2, 'Special');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_menu`
-- 

CREATE TABLE `jos_menu` (
  `id` int(11) NOT NULL auto_increment,
  `menutype` varchar(75) default NULL,
  `name` varchar(255) default NULL,
  `alias` varchar(255) NOT NULL default '',
  `link` text,
  `type` varchar(50) NOT NULL default '',
  `published` tinyint(1) NOT NULL default '0',
  `parent` int(11) unsigned NOT NULL default '0',
  `componentid` int(11) unsigned NOT NULL default '0',
  `sublevel` int(11) default '0',
  `ordering` int(11) default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL default '0',
  `browserNav` tinyint(4) default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `utaccess` tinyint(3) unsigned NOT NULL default '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL default '0',
  `rgt` int(11) unsigned NOT NULL default '0',
  `home` int(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `jos_menu`
-- 

INSERT INTO `jos_menu` VALUES (1, 'mainmenu', 'Home', 'home', 'index.php?option=com_content&view=frontpage', 'component', 0, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (2, 'mainmenu', 'Registro', 'registro', 'index.php?option=com_rsform', 'component', 1, 0, 34, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'formId=2\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 1);
INSERT INTO `jos_menu` VALUES (3, 'new-menu', 'Seminario I', 'seminario-i', 'index.php?option=com_phocadownload&view=category&id=1', 'component', 1, 0, 41, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_pagination=1\nshow_pagination_limit=1\nfilename_or_name=title\ndownload_external_link=\ndisplay_downloads=\ndisplay_description=\ndisplay_detail=\ndisplay_new=\ndisplay_hot=\ndisplay_most_download=\ndisplay_file_view=\ndisplay_date_type=\ndownload_metadesc=\ndownload_metakey=\nsection_ordering=\ncategory_ordering=\nfile_ordering=\ndefault_pagination=\npagination=\ndisplay_up_icon=\nenable_plugin_query=\ndisplay_category_comments=\ndisplay_file_comments=\nfile_icon_size=\nfile_icon_size_md=\nbutton_style=\ntheme=\ndisplay_num_doc_secs=\ndisplay_num_doc_secs_header=\nlicense_box_height=\ndisplay_play=\nplayer_width=\nplayer_height=\nplayer_mp3_height=\nplay_popup_window=\ndisplay_preview=\npreview_width=\npreview_height=\npreview_popup_window=\nenable_user_cp=\nuser_files_max_count=\nuser_files_max_size=\nuser_file_upload_size=\nenable_user_upload_approve=\nsend_mail_download=0\nsend_mail_upload=0\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (4, 'new-menu', 'Seminario II', 'seminario-ii', 'index.php?option=com_phocadownload&view=category&id=2', 'component', 1, 0, 41, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_pagination=1\nshow_pagination_limit=1\nfilename_or_name=title\ndownload_external_link=\ndisplay_downloads=\ndisplay_description=\ndisplay_detail=\ndisplay_new=\ndisplay_hot=\ndisplay_most_download=\ndisplay_file_view=\ndisplay_date_type=\ndownload_metadesc=\ndownload_metakey=\nsection_ordering=\ncategory_ordering=\nfile_ordering=\ndefault_pagination=\npagination=\ndisplay_up_icon=\nenable_plugin_query=\ndisplay_category_comments=\ndisplay_file_comments=\nfile_icon_size=\nfile_icon_size_md=\nbutton_style=\ntheme=\ndisplay_num_doc_secs=\ndisplay_num_doc_secs_header=\nlicense_box_height=\ndisplay_play=\nplayer_width=\nplayer_height=\nplayer_mp3_height=\nplay_popup_window=\ndisplay_preview=\npreview_width=\npreview_height=\npreview_popup_window=\nenable_user_cp=\nuser_files_max_count=\nuser_files_max_size=\nuser_file_upload_size=\nenable_user_upload_approve=\nsend_mail_download=0\nsend_mail_upload=0\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (5, 'new-menu', 'Seminario III', 'seminario-iii', 'index.php?option=com_phocadownload&view=category&id=3', 'component', 1, 0, 41, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_pagination=1\nshow_pagination_limit=1\nfilename_or_name=title\ndownload_external_link=\ndisplay_downloads=\ndisplay_description=\ndisplay_detail=\ndisplay_new=\ndisplay_hot=\ndisplay_most_download=\ndisplay_file_view=\ndisplay_date_type=\ndownload_metadesc=\ndownload_metakey=\nsection_ordering=\ncategory_ordering=\nfile_ordering=\ndefault_pagination=\npagination=\ndisplay_up_icon=\nenable_plugin_query=\ndisplay_category_comments=\ndisplay_file_comments=\nfile_icon_size=\nfile_icon_size_md=\nbutton_style=\ntheme=\ndisplay_num_doc_secs=\ndisplay_num_doc_secs_header=\nlicense_box_height=\ndisplay_play=\nplayer_width=\nplayer_height=\nplayer_mp3_height=\nplay_popup_window=\ndisplay_preview=\npreview_width=\npreview_height=\npreview_popup_window=\nenable_user_cp=\nuser_files_max_count=\nuser_files_max_size=\nuser_file_upload_size=\nenable_user_upload_approve=\nsend_mail_download=0\nsend_mail_upload=0\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (6, 'new-menu', 'Seminario IV', 'seminario-iv', 'index.php?option=com_phocadownload&view=category&id=4', 'component', 1, 0, 41, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_pagination=1\nshow_pagination_limit=1\nfilename_or_name=\ndownload_external_link=\ndisplay_downloads=\ndisplay_description=\ndisplay_detail=\ndisplay_new=\ndisplay_hot=\ndisplay_most_download=\ndisplay_file_view=\ndisplay_date_type=\ndownload_metadesc=\ndownload_metakey=\nsection_ordering=\ncategory_ordering=\nfile_ordering=\ndefault_pagination=\npagination=\ndisplay_up_icon=\nenable_plugin_query=\ndisplay_category_comments=\ndisplay_file_comments=\nfile_icon_size=\nfile_icon_size_md=\nbutton_style=\ntheme=\ndisplay_num_doc_secs=\ndisplay_num_doc_secs_header=\nlicense_box_height=\ndisplay_play=\nplayer_width=\nplayer_height=\nplayer_mp3_height=\nplay_popup_window=\ndisplay_preview=\npreview_width=\npreview_height=\npreview_popup_window=\nenable_user_cp=\nuser_files_max_count=\nuser_files_max_size=\nuser_file_upload_size=\nenable_user_upload_approve=\nsend_mail_download=0\nsend_mail_upload=0\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (7, 'new-menu', 'Jornada Networking', 'jornada-networking', 'index.php?option=com_phocadownload&view=category&id=5', 'component', 1, 0, 41, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_pagination=1\nshow_pagination_limit=1\nfilename_or_name=\ndownload_external_link=\ndisplay_downloads=\ndisplay_description=\ndisplay_detail=\ndisplay_new=\ndisplay_hot=\ndisplay_most_download=\ndisplay_file_view=\ndisplay_date_type=\ndownload_metadesc=\ndownload_metakey=\nsection_ordering=\ncategory_ordering=\nfile_ordering=\ndefault_pagination=\npagination=\ndisplay_up_icon=\nenable_plugin_query=\ndisplay_category_comments=\ndisplay_file_comments=\nfile_icon_size=\nfile_icon_size_md=\nbutton_style=\ntheme=\ndisplay_num_doc_secs=\ndisplay_num_doc_secs_header=\nlicense_box_height=\ndisplay_play=\nplayer_width=\nplayer_height=\nplayer_mp3_height=\nplay_popup_window=\ndisplay_preview=\npreview_width=\npreview_height=\npreview_popup_window=\nenable_user_cp=\nuser_files_max_count=\nuser_files_max_size=\nuser_file_upload_size=\nenable_user_upload_approve=\nsend_mail_download=0\nsend_mail_upload=0\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_menu_types`
-- 

CREATE TABLE `jos_menu_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `menutype` varchar(75) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `jos_menu_types`
-- 

INSERT INTO `jos_menu_types` VALUES (1, 'mainmenu', 'Main Menu', 'The main menu for the site');
INSERT INTO `jos_menu_types` VALUES (2, 'new-menu', 'New Menu', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_messages`
-- 

CREATE TABLE `jos_messages` (
  `message_id` int(10) unsigned NOT NULL auto_increment,
  `user_id_from` int(10) unsigned NOT NULL default '0',
  `user_id_to` int(10) unsigned NOT NULL default '0',
  `folder_id` int(10) unsigned NOT NULL default '0',
  `date_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `state` int(11) NOT NULL default '0',
  `priority` int(1) unsigned NOT NULL default '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY  (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_messages`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_messages_cfg`
-- 

CREATE TABLE `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL default '0',
  `cfg_name` varchar(100) NOT NULL default '',
  `cfg_value` varchar(255) NOT NULL default '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_messages_cfg`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_migration_backlinks`
-- 

CREATE TABLE `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_migration_backlinks`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_modules`
-- 

CREATE TABLE `jos_modules` (
  `id` int(11) NOT NULL auto_increment,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `position` varchar(50) default NULL,
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `module` varchar(50) default NULL,
  `numnews` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `showtitle` tinyint(3) unsigned NOT NULL default '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  `control` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

-- 
-- Dumping data for table `jos_modules`
-- 

INSERT INTO `jos_modules` VALUES (1, 'Download Presentations', '', 0, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=new-menu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 1, 0, '');
INSERT INTO `jos_modules` VALUES (2, 'Login', '', 1, 'login', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES (3, 'Popular', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_popular', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (4, 'Recent added Articles', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_latest', 0, 2, 1, 'ordering=c_dsc\nuser_id=0\ncache=0\n\n', 0, 1, '');
INSERT INTO `jos_modules` VALUES (5, 'Menu Stats', '', 5, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_stats', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (6, 'Unread Messages', '', 1, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_unread', 0, 2, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES (7, 'Online Users', '', 2, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_online', 0, 2, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES (8, 'Toolbar', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', 1, 'mod_toolbar', 0, 2, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES (9, 'Quick Icons', '', 1, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_quickicon', 0, 2, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES (10, 'Logged in Users', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_logged', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (11, 'Footer', '', 0, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES (12, 'Admin Menu', '', 1, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_menu', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (13, 'Admin SubMenu', '', 1, 'submenu', 0, '0000-00-00 00:00:00', 1, 'mod_submenu', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (14, 'User Status', '', 1, 'status', 0, '0000-00-00 00:00:00', 1, 'mod_status', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (15, 'Title', '', 1, 'title', 0, '0000-00-00 00:00:00', 1, 'mod_title', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (16, 'Información ', '<h3>Precios:</h3>\r\n<p><br /> <strong>Ciclo completo: </strong></p>\r\n<p>150€ (asistentes académicos y particulares) <br />200€ (empresas)</p>\r\n<ul>\r\n</ul>\r\n<p><strong>Seminario 15 y 16 /09/10: </strong></p>\r\n<p>80€ (asistentes académicos y particulares)<br />100€ (empresas)</p>\r\n<ul>\r\n</ul>\r\n<ul>\r\n</ul>\r\n<p><strong>Resto seminarios: </strong></p>\r\n<p>30€ (asistentes académicos y particulares) <br />50€ (empresas)</p>\r\n<p>Jornada networking gratuita</p>\r\n<ul>\r\n</ul>\r\n<p> </p>\r\n<h3>Pagos:</h3>\r\n<p><br /> <em>Fundació Empresa i Ciencia<br /> NIF: G-08887721 <br /> Campus UAB, Edifici A (Rectorat) <br /> 08193 Bellaterra. <br /> nº de cuenta: 2100 0424 3902 0014 5951 </em><br /><br /> (Se ruega guardar el resguardo, se pedirá el día del evento) <br /> Información: transfer@icmab.es</p>', 2, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (18, 'Akeeba Backup Notification Module', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_akadmin', 0, 2, 1, '', 0, 1, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_modules_menu`
-- 

CREATE TABLE `jos_modules_menu` (
  `moduleid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_modules_menu`
-- 

INSERT INTO `jos_modules_menu` VALUES (1, 0);
INSERT INTO `jos_modules_menu` VALUES (16, 0);
INSERT INTO `jos_modules_menu` VALUES (18, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_newsfeeds`
-- 

CREATE TABLE `jos_newsfeeds` (
  `catid` int(11) NOT NULL default '0',
  `id` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL default '',
  `link` text NOT NULL,
  `filename` varchar(200) default NULL,
  `published` tinyint(1) NOT NULL default '0',
  `numarticles` int(11) unsigned NOT NULL default '1',
  `cache_time` int(11) unsigned NOT NULL default '3600',
  `checked_out` tinyint(3) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `rtl` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_newsfeeds`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_phocadownload`
-- 

CREATE TABLE `jos_phocadownload` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `sectionid` int(11) NOT NULL default '0',
  `owner_id` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(250) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `filename` varchar(250) NOT NULL default '',
  `filesize` int(11) NOT NULL default '0',
  `filename_play` varchar(250) NOT NULL default '',
  `filename_preview` varchar(250) NOT NULL default '',
  `author` varchar(255) NOT NULL default '',
  `author_email` varchar(255) NOT NULL default '',
  `author_url` varchar(255) NOT NULL default '',
  `license` varchar(255) NOT NULL default '',
  `license_url` varchar(255) NOT NULL default '',
  `image_filename` varchar(255) NOT NULL default '',
  `image_filename_spec1` varchar(255) NOT NULL default '',
  `image_filename_spec2` varchar(255) NOT NULL default '',
  `image_download` varchar(255) NOT NULL default '',
  `link_external` varchar(255) NOT NULL default '',
  `description` text,
  `version` varchar(255) NOT NULL default '',
  `directlink` tinyint(1) NOT NULL default '0',
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL default '0',
  `textonly` tinyint(1) NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `approved` tinyint(3) unsigned NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `confirm_license` int(11) NOT NULL default '0',
  `unaccessible_file` int(11) NOT NULL default '0',
  `params` text,
  `metakey` text,
  `metadesc` text,
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`,`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

-- 
-- Dumping data for table `jos_phocadownload`
-- 

INSERT INTO `jos_phocadownload` VALUES (2, 1, 1, 0, 0, 'Procesos de generación de nuevos proyectos', 'procesos-de-generacin-de-nuevos-proyectos', 'icmab_guallarte.pdf', 1422347, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2010-09-20 10:55:44', '2010-09-20 10:55:44', '0000-00-00 00:00:00', 1448, 0, 1, 1, 0, '0000-00-00 00:00:00', 1, 0, -1, 0, NULL, '', '');
INSERT INTO `jos_phocadownload` VALUES (3, 1, 1, 0, 0, 'Innovación Directiva', 'innovacin-directiva', 'director-innovacion1.pdf', 202834, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2010-09-20 10:58:18', '2010-09-20 10:58:18', '0000-00-00 00:00:00', 1221, 0, 1, 1, 0, '0000-00-00 00:00:00', 2, 0, -1, 0, NULL, '', '');
INSERT INTO `jos_phocadownload` VALUES (4, 2, 1, 0, 0, 'La gestión de la innovación en la División B2B de CIRSA', 'la-gestin-de-la-innovacin-en-la-divisin-b2b-de-cirsa', 'innovacionenricbarba.pdf', 829667, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2010-10-27 09:04:45', '2010-10-27 09:04:45', '0000-00-00 00:00:00', 1535, 0, 1, 1, 0, '0000-00-00 00:00:00', 1, 0, -1, 0, NULL, '', '');
INSERT INTO `jos_phocadownload` VALUES (5, 2, 1, 0, 0, 'Invertir en I+D', 'invertir-en-i-d', 'invertir_en_id.pdf', 90995, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2010-10-27 09:06:48', '2010-10-27 09:06:48', '0000-00-00 00:00:00', 1149, 0, 1, 1, 0, '0000-00-00 00:00:00', 2, 0, -1, 0, NULL, '', '');
INSERT INTO `jos_phocadownload` VALUES (6, 2, 1, 0, 0, 'La Innovación y el Científico', 'la-innovacin-y-el-cientfico', 'ricard_doctoriales.pdf', 3883316, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2010-10-27 09:08:15', '2010-10-27 09:08:15', '0000-00-00 00:00:00', 1109, 0, 1, 1, 0, '0000-00-00 00:00:00', 3, 0, -1, 0, NULL, '', '');
INSERT INTO `jos_phocadownload` VALUES (7, 3, 1, 0, 0, 'NETWORKING', 'networking', 'javier_aguilar.pdf', 2237844, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2010-11-05 15:41:36', '2010-11-05 15:41:36', '0000-00-00 00:00:00', 1134, 0, 1, 1, 0, '0000-00-00 00:00:00', 1, 0, -1, 0, NULL, '', '');
INSERT INTO `jos_phocadownload` VALUES (8, 3, 1, 0, 0, 'El Talento y las competencias profesionales', 'el-talento-y-las-competencias-profesionales', 'cliville.pdf', 183902, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2010-11-05 15:43:48', '2010-11-05 15:43:48', '0000-00-00 00:00:00', 1185, 0, 1, 1, 0, '0000-00-00 00:00:00', 2, 0, -1, 0, NULL, '', '');
INSERT INTO `jos_phocadownload` VALUES (9, 3, 1, 0, 0, 'En busca de las competencias directivas', 'en-busca-de-las-competencias-directivas', 'competencias.pdf', 140079, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2010-11-05 15:44:23', '2010-11-05 15:44:23', '0000-00-00 00:00:00', 2134, 0, 1, 1, 0, '0000-00-00 00:00:00', 3, 0, -1, 0, NULL, '', '');
INSERT INTO `jos_phocadownload` VALUES (10, 4, 1, 0, 0, 'Knowledge innovation market', 'knowledge-innovation-market', 'valorizacin_kim.pdf', 744135, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2010-11-17 16:58:58', '2010-11-17 16:58:58', '0000-00-00 00:00:00', 1058, 0, 1, 1, 0, '0000-00-00 00:00:00', 1, 0, -1, 0, NULL, '', '');
INSERT INTO `jos_phocadownload` VALUES (11, 4, 1, 0, 0, 'Valorización de resultados de I+D', 'valorizacin-de-resultados-de-i-d', 'valoritzacio_ascamm.pdf', 2843779, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2010-11-17 17:04:30', '2010-11-17 17:04:30', '0000-00-00 00:00:00', 1269, 0, 1, 1, 0, '0000-00-00 00:00:00', 2, 0, -1, 0, NULL, '', '');
INSERT INTO `jos_phocadownload` VALUES (12, 5, 1, 0, 0, 'Club de Doctors i Personal de Recerca del PTV', 'club-de-doctors-i-personal-de-recerca-del-ptv', 'club_doctores_ptv.pdf', 147523, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2010-12-03 10:45:20', '2010-12-03 10:45:20', '0000-00-00 00:00:00', 997, 0, 1, 1, 0, '0000-00-00 00:00:00', 1, 0, -1, 0, NULL, '', '');
INSERT INTO `jos_phocadownload` VALUES (13, 5, 1, 0, 0, 'Networking Gich', 'networking-gich', 'doctoresempresanetworkinggich.pdf', 502466, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2010-12-03 10:47:27', '2010-12-03 10:47:27', '0000-00-00 00:00:00', 995, 0, 1, 1, 0, '0000-00-00 00:00:00', 2, 0, -1, 0, NULL, '', '');
INSERT INTO `jos_phocadownload` VALUES (14, 5, 1, 0, 0, 'Jornada Networking Laserna', 'jornada-networking-laserna', 'jornada_networking_laserna.pdf', 656086, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2010-12-03 10:47:53', '2010-12-03 10:47:53', '0000-00-00 00:00:00', 1002, 0, 1, 1, 0, '0000-00-00 00:00:00', 3, 0, -1, 0, NULL, '', '');
INSERT INTO `jos_phocadownload` VALUES (15, 5, 1, 0, 0, 'Visió des de la PYME', 'visi-des-de-la-pyme', 'jornades_networking_pilar.pdf', 381635, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2010-12-03 10:48:38', '2010-12-03 10:48:38', '0000-00-00 00:00:00', 997, 0, 1, 1, 0, '0000-00-00 00:00:00', 4, 0, -1, 0, NULL, '', '');
INSERT INTO `jos_phocadownload` VALUES (16, 5, 1, 0, 0, 'Las leyes de la Networkdinámica', 'las-leyes-de-la-networkdinmica', 'networking_ricard.pdf', 1174881, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2010-12-03 10:49:16', '2010-12-03 10:49:16', '0000-00-00 00:00:00', 1002, 0, 1, 1, 0, '0000-00-00 00:00:00', 5, 0, -1, 0, NULL, '', '');
INSERT INTO `jos_phocadownload` VALUES (17, 5, 1, 0, 0, 'CETEMMSA R+D', 'cetemmsa-r-d', 'jornada networking icmab 021210.pdf', 1152120, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2010-12-15 15:31:46', '2010-12-15 15:31:46', '0000-00-00 00:00:00', 981, 0, 1, 1, 0, '0000-00-00 00:00:00', 6, 0, -1, 0, NULL, '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_phocadownload_categories`
-- 

CREATE TABLE `jos_phocadownload_categories` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `section` int(11) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `image` varchar(255) NOT NULL default '',
  `image_position` varchar(30) NOT NULL default '',
  `description` text,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(50) default NULL,
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `uploaduserid` text,
  `accessuserid` text,
  `deleteuserid` text,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `count` int(11) NOT NULL default '0',
  `params` text,
  `metakey` text,
  `metadesc` text,
  PRIMARY KEY  (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `jos_phocadownload_categories`
-- 

INSERT INTO `jos_phocadownload_categories` VALUES (1, 0, 1, 'Seminario I', '', 'seminario-i', '', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, '63', '0', NULL, '2010-09-15 14:06:47', 0, NULL, '', '');
INSERT INTO `jos_phocadownload_categories` VALUES (2, 0, 1, 'Seminario II', '', 'seminario-ii', '', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, '-2', '0', NULL, '2010-10-27 09:04:40', 0, NULL, '', '');
INSERT INTO `jos_phocadownload_categories` VALUES (3, 0, 1, 'Seminario III', '', 'seminario-iii', '', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, '-2', '0', NULL, '2010-11-05 15:41:31', 0, NULL, '', '');
INSERT INTO `jos_phocadownload_categories` VALUES (4, 0, 1, 'Seminario IV', '', 'seminario-iv', '', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, '-2', '0', NULL, '2010-11-17 16:58:39', 0, NULL, '', '');
INSERT INTO `jos_phocadownload_categories` VALUES (5, 0, 1, 'Jornada Networking', '', 'jornada-networking', '', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 5, 0, '-2', '0', NULL, '2010-12-03 10:45:16', 0, NULL, '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_phocadownload_licenses`
-- 

CREATE TABLE `jos_phocadownload_licenses` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `description` text,
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_phocadownload_licenses`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_phocadownload_sections`
-- 

CREATE TABLE `jos_phocadownload_sections` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `image` text,
  `scope` varchar(50) NOT NULL default '',
  `image_position` varchar(30) NOT NULL default '',
  `description` text,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `count` int(11) NOT NULL default '0',
  `params` text,
  `metakey` text,
  `metadesc` text,
  PRIMARY KEY  (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `jos_phocadownload_sections`
-- 

INSERT INTO `jos_phocadownload_sections` VALUES (1, 'Ciclo de Seminarios', '', 'ciclo-de-seminarios', '', '', 'left', '', 1, 0, '0000-00-00 00:00:00', 1, 0, '2010-09-15 14:06:17', 0, NULL, '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_phocadownload_settings`
-- 

CREATE TABLE `jos_phocadownload_settings` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(250) NOT NULL default '',
  `value` text,
  `values` text,
  `type` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `jos_phocadownload_settings`
-- 

INSERT INTO `jos_phocadownload_settings` VALUES (1, 'download_folder', 'phocadownload', '', 'text');
INSERT INTO `jos_phocadownload_settings` VALUES (2, 'allowed_file_types', '{hqx=application/mac-binhex40}\r\n{cpt=application/mac-compactpro}\r\n{csv=text/x-comma-separated-values}\r\n{bin=application/macbinary}\r\n{dms=application/octet-stream}\r\n{lha=application/octet-stream}\r\n{lzh=application/octet-stream}\r\n{exe=application/octet-stream}\r\n{class=application/octet-stream}\r\n{psd=application/x-photoshop}\r\n{so=application/octet-stream}\r\n{sea=application/octet-stream}\r\n{dll=application/octet-stream}\r\n{oda=application/oda}\r\n{pdf=application/pdf}\r\n{ai=application/postscript}\r\n{eps=application/postscript}\r\n{ps=application/postscript}\r\n{smi=application/smil}\r\n{smil=application/smil}\r\n{mif=application/vnd.mif}\r\n{xls=application/vnd.ms-excel}\r\n{ppt=application/powerpoint}\r\n{wbxml=application/wbxml}\r\n{wmlc=application/wmlc}\r\n{dcr=application/x-director}\r\n{dir=application/x-director}\r\n{dxr=application/x-director}\r\n{dvi=application/x-dvi}\r\n{gtar=application/x-gtar}\r\n{gz=application/x-gzip}\r\n{php=application/x-httpd-php}\r\n{php4=application/x-httpd-php}\r\n{php3=application/x-httpd-php}\r\n{phtml=application/x-httpd-php}\r\n{phps=application/x-httpd-php-source}\r\n{js=application/x-javascript}\r\n{swf=application/x-shockwave-flash}\r\n{sit=application/x-stuffit}\r\n{tar=application/x-tar}\r\n{tgz=application/x-tar}\r\n{xhtml=application/xhtml+xml}\r\n{xht=application/xhtml+xml}\r\n{zip=application/x-zip}\r\n{mid=audio/midi}\r\n{midi=audio/midi}\r\n{mpga=audio/mpeg}\r\n{mp2=audio/mpeg}\r\n{mp3=audio/mpeg}\r\n{aif=audio/x-aiff}\r\n{aiff=audio/x-aiff}\r\n{aifc=audio/x-aiff}\r\n{ram=audio/x-pn-realaudio}\r\n{rm=audio/x-pn-realaudio}\r\n{rpm=audio/x-pn-realaudio-plugin}\r\n{ra=audio/x-realaudio}\r\n{rv=video/vnd.rn-realvideo}\r\n{wav=audio/x-wav}\r\n{bmp=image/bmp}\r\n{gif=image/gif}\r\n{jpeg=image/jpeg}\r\n{jpg=image/jpeg}\r\n{jpe=image/jpeg}\r\n{png=image/png}\r\n{tiff=image/tiff}\r\n{tif=image/tiff}\r\n{css=text/css}\r\n{html=text/html}\r\n{htm=text/html}\r\n{shtml=text/html}\r\n{txt=text/plain}\r\n{text=text/plain}\r\n{log=text/plain}\r\n{rtx=text/richtext}\r\n{rtf=text/rtf}\r\n{xml=text/xml}\r\n{xsl=text/xml}\r\n{mpeg=video/mpeg}\r\n{mpg=video/mpeg}\r\n{mpe=video/mpeg}\r\n{qt=video/quicktime}\r\n{mov=video/quicktime}\r\n{avi=video/x-msvideo}\r\n{flv=video/x-flv}\r\n{movie=video/x-sgi-movie}\r\n{doc=application/msword}\r\n{xl=application/excel}\r\n{eml=message/rfc822}', '', 'textarea');
INSERT INTO `jos_phocadownload_settings` VALUES (3, 'disallowed_file_types', '', '', 'textarea');
INSERT INTO `jos_phocadownload_settings` VALUES (4, 'upload_maxsize', '4145728', '', 'text');
INSERT INTO `jos_phocadownload_settings` VALUES (5, 'enable_flash', '0', '{0=No}{1=Yes}', 'select');
INSERT INTO `jos_phocadownload_settings` VALUES (6, 'enable_user_statistics', '1', '{0=No}{1=Yes}', 'select');
INSERT INTO `jos_phocadownload_settings` VALUES (7, 'absolute_path', '', '', 'text');
INSERT INTO `jos_phocadownload_settings` VALUES (8, 'description', '', '', 'textareaeditor');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_phocadownload_user_stat`
-- 

CREATE TABLE `jos_phocadownload_user_stat` (
  `id` int(11) NOT NULL auto_increment,
  `fileid` int(11) NOT NULL default '0',
  `userid` int(11) NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

-- 
-- Dumping data for table `jos_phocadownload_user_stat`
-- 

INSERT INTO `jos_phocadownload_user_stat` VALUES (1, 3, 0, 1221, '2013-08-04 09:08:33', 0, 0);
INSERT INTO `jos_phocadownload_user_stat` VALUES (2, 2, 0, 1448, '2013-09-28 00:35:07', 0, 0);
INSERT INTO `jos_phocadownload_user_stat` VALUES (3, 4, 0, 1535, '2013-09-26 13:05:07', 0, 0);
INSERT INTO `jos_phocadownload_user_stat` VALUES (4, 6, 0, 1109, '2013-08-20 08:01:51', 0, 0);
INSERT INTO `jos_phocadownload_user_stat` VALUES (5, 5, 0, 1149, '2013-09-17 21:33:09', 0, 0);
INSERT INTO `jos_phocadownload_user_stat` VALUES (6, 9, 0, 2134, '2013-09-29 17:23:16', 0, 0);
INSERT INTO `jos_phocadownload_user_stat` VALUES (7, 7, 0, 1134, '2013-09-24 03:10:00', 0, 0);
INSERT INTO `jos_phocadownload_user_stat` VALUES (8, 8, 0, 1185, '2013-09-28 11:03:05', 0, 0);
INSERT INTO `jos_phocadownload_user_stat` VALUES (9, 11, 0, 1269, '2013-09-24 22:46:57', 0, 0);
INSERT INTO `jos_phocadownload_user_stat` VALUES (10, 10, 0, 1058, '2013-09-07 00:07:03', 0, 0);
INSERT INTO `jos_phocadownload_user_stat` VALUES (11, 12, 0, 997, '2013-08-26 07:56:38', 0, 0);
INSERT INTO `jos_phocadownload_user_stat` VALUES (12, 16, 0, 1002, '2013-09-06 21:19:32', 0, 0);
INSERT INTO `jos_phocadownload_user_stat` VALUES (13, 13, 0, 995, '2013-09-20 11:35:45', 0, 0);
INSERT INTO `jos_phocadownload_user_stat` VALUES (14, 14, 0, 1002, '2013-09-06 11:49:40', 0, 0);
INSERT INTO `jos_phocadownload_user_stat` VALUES (15, 15, 0, 997, '2013-09-07 00:03:51', 0, 0);
INSERT INTO `jos_phocadownload_user_stat` VALUES (16, 17, 0, 981, '2013-08-04 09:07:21', 0, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_plugins`
-- 

CREATE TABLE `jos_plugins` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `element` varchar(100) NOT NULL default '',
  `folder` varchar(100) NOT NULL default '',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `published` tinyint(3) NOT NULL default '0',
  `iscore` tinyint(3) NOT NULL default '0',
  `client_id` tinyint(3) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

-- 
-- Dumping data for table `jos_plugins`
-- 

INSERT INTO `jos_plugins` VALUES (1, 'Authentication - Joomla', 'joomla', 'authentication', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (2, 'Authentication - LDAP', 'ldap', 'authentication', 0, 2, 0, 1, 0, 0, '0000-00-00 00:00:00', 'host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n');
INSERT INTO `jos_plugins` VALUES (3, 'Authentication - GMail', 'gmail', 'authentication', 0, 4, 0, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (4, 'Authentication - OpenID', 'openid', 'authentication', 0, 3, 0, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (5, 'User - Joomla!', 'joomla', 'user', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'autoregister=1\n\n');
INSERT INTO `jos_plugins` VALUES (6, 'Search - Content', 'content', 'search', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n');
INSERT INTO `jos_plugins` VALUES (7, 'Search - Contacts', 'contacts', 'search', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES (8, 'Search - Categories', 'categories', 'search', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES (9, 'Search - Sections', 'sections', 'search', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES (10, 'Search - Newsfeeds', 'newsfeeds', 'search', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES (11, 'Search - Weblinks', 'weblinks', 'search', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES (12, 'Content - Pagebreak', 'pagebreak', 'content', 0, 10000, 1, 1, 0, 0, '0000-00-00 00:00:00', 'enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n');
INSERT INTO `jos_plugins` VALUES (13, 'Content - Rating', 'vote', 'content', 0, 4, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (14, 'Content - Email Cloaking', 'emailcloak', 'content', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'mode=1\n\n');
INSERT INTO `jos_plugins` VALUES (15, 'Content - Code Hightlighter (GeSHi)', 'geshi', 'content', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (16, 'Content - Load Module', 'loadmodule', 'content', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'enabled=1\nstyle=0\n\n');
INSERT INTO `jos_plugins` VALUES (17, 'Content - Page Navigation', 'pagenavigation', 'content', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'position=1\n\n');
INSERT INTO `jos_plugins` VALUES (18, 'Editor - No Editor', 'none', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (19, 'Editor - TinyMCE', 'tinymce', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 'mode=advanced\nskin=0\ncompressed=0\ncleanup_startup=0\ncleanup_save=2\nentity_encoding=raw\nlang_mode=0\nlang_code=en\ntext_direction=ltr\ncontent_css=1\ncontent_css_custom=\nrelative_urls=1\nnewlines=0\ninvalid_elements=applet\nextended_elements=\ntoolbar=top\ntoolbar_align=left\nhtml_height=550\nhtml_width=750\nelement_path=1\nfonts=1\npaste=1\nsearchreplace=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\ncolors=1\ntable=1\nsmilies=1\nmedia=1\nhr=1\ndirectionality=1\nfullscreen=1\nstyle=1\nlayer=1\nxhtmlxtras=1\nvisualchars=1\nnonbreaking=1\ntemplate=0\nadvimage=1\nadvlink=1\nautosave=1\ncontextmenu=1\ninlinepopups=1\nsafari=1\ncustom_plugin=\ncustom_button=\n\n');
INSERT INTO `jos_plugins` VALUES (20, 'Editor - XStandard Lite 2.0', 'xstandard', 'editors', 0, 0, 0, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (21, 'Editor Button - Image', 'image', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (22, 'Editor Button - Pagebreak', 'pagebreak', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (23, 'Editor Button - Readmore', 'readmore', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (24, 'XML-RPC - Joomla', 'joomla', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (25, 'XML-RPC - Blogger API', 'blogger', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', 'catid=1\nsectionid=0\n\n');
INSERT INTO `jos_plugins` VALUES (27, 'System - SEF', 'sef', 'system', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (28, 'System - Debug', 'debug', 'system', 0, 2, 1, 0, 0, 0, '0000-00-00 00:00:00', 'queries=1\nmemory=1\nlangauge=1\n\n');
INSERT INTO `jos_plugins` VALUES (29, 'System - Legacy', 'legacy', 'system', 0, 3, 0, 1, 0, 0, '0000-00-00 00:00:00', 'route=0\n\n');
INSERT INTO `jos_plugins` VALUES (30, 'System - Cache', 'cache', 'system', 0, 4, 0, 1, 0, 0, '0000-00-00 00:00:00', 'browsercache=0\ncachetime=15\n\n');
INSERT INTO `jos_plugins` VALUES (31, 'System - Log', 'log', 'system', 0, 5, 0, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (32, 'System - Remember Me', 'remember', 'system', 0, 6, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (33, 'System - Backlink', 'backlink', 'system', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (34, 'System - Mootools Upgrade', 'mtupgrade', 'system', 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (35, 'Akeeba Backup Lazy Scheduling', 'aklazy', 'system', 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 'daysfreq=1\nbackuptime=00:00\nprofile=1\n');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_poll_data`
-- 

CREATE TABLE `jos_poll_data` (
  `id` int(11) NOT NULL auto_increment,
  `pollid` int(11) NOT NULL default '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_poll_data`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_poll_date`
-- 

CREATE TABLE `jos_poll_date` (
  `id` bigint(20) NOT NULL auto_increment,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL default '0',
  `poll_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_poll_date`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_poll_menu`
-- 

CREATE TABLE `jos_poll_menu` (
  `pollid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_poll_menu`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_polls`
-- 

CREATE TABLE `jos_polls` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `voters` int(9) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `access` int(11) NOT NULL default '0',
  `lag` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_polls`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_rsform_component_type_fields`
-- 

CREATE TABLE `jos_rsform_component_type_fields` (
  `ComponentTypeFieldId` int(11) NOT NULL auto_increment,
  `ComponentTypeId` int(11) NOT NULL default '0',
  `FieldName` text NOT NULL,
  `FieldType` enum('hidden','hiddenparam','textbox','textarea','select') NOT NULL default 'hidden',
  `FieldValues` text NOT NULL,
  `Ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ComponentTypeFieldId`),
  KEY `ComponentTypeId` (`ComponentTypeId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=166 ;

-- 
-- Dumping data for table `jos_rsform_component_type_fields`
-- 

INSERT INTO `jos_rsform_component_type_fields` VALUES (2, 1, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES (3, 1, 'CAPTION', 'textbox', '', 2);
INSERT INTO `jos_rsform_component_type_fields` VALUES (4, 1, 'REQUIRED', 'select', 'NO\r\nYES', 3);
INSERT INTO `jos_rsform_component_type_fields` VALUES (5, 1, 'SIZE', 'textbox', '20', 4);
INSERT INTO `jos_rsform_component_type_fields` VALUES (6, 1, 'MAXSIZE', 'textbox', '', 5);
INSERT INTO `jos_rsform_component_type_fields` VALUES (7, 1, 'VALIDATIONRULE', 'select', '//<code>\r\nreturn RSgetValidationRules();\r\n//</code>', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES (8, 1, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 7);
INSERT INTO `jos_rsform_component_type_fields` VALUES (9, 1, 'ADDITIONALATTRIBUTES', 'textarea', '', 8);
INSERT INTO `jos_rsform_component_type_fields` VALUES (10, 1, 'DEFAULTVALUE', 'textarea', '', 9);
INSERT INTO `jos_rsform_component_type_fields` VALUES (11, 1, 'DESCRIPTION', 'textarea', '', 11);
INSERT INTO `jos_rsform_component_type_fields` VALUES (12, 1, 'COMPONENTTYPE', 'hidden', '1', 15);
INSERT INTO `jos_rsform_component_type_fields` VALUES (13, 2, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES (14, 2, 'CAPTION', 'textbox', '', 2);
INSERT INTO `jos_rsform_component_type_fields` VALUES (15, 2, 'REQUIRED', 'select', 'NO\r\nYES', 3);
INSERT INTO `jos_rsform_component_type_fields` VALUES (16, 2, 'COLS', 'textbox', '50', 4);
INSERT INTO `jos_rsform_component_type_fields` VALUES (17, 2, 'ROWS', 'textbox', '5', 5);
INSERT INTO `jos_rsform_component_type_fields` VALUES (18, 2, 'VALIDATIONRULE', 'select', '//<code>\r\nreturn RSgetValidationRules();\r\n//</code>', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES (19, 2, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 7);
INSERT INTO `jos_rsform_component_type_fields` VALUES (20, 2, 'ADDITIONALATTRIBUTES', 'textarea', '', 8);
INSERT INTO `jos_rsform_component_type_fields` VALUES (21, 2, 'DEFAULTVALUE', 'textarea', '', 9);
INSERT INTO `jos_rsform_component_type_fields` VALUES (22, 2, 'DESCRIPTION', 'textarea', '', 10);
INSERT INTO `jos_rsform_component_type_fields` VALUES (23, 2, 'COMPONENTTYPE', 'hidden', '2', 10);
INSERT INTO `jos_rsform_component_type_fields` VALUES (24, 3, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES (25, 3, 'CAPTION', 'textbox', '', 2);
INSERT INTO `jos_rsform_component_type_fields` VALUES (26, 3, 'SIZE', 'textbox', '', 3);
INSERT INTO `jos_rsform_component_type_fields` VALUES (27, 3, 'MULTIPLE', 'select', 'NO\r\nYES', 4);
INSERT INTO `jos_rsform_component_type_fields` VALUES (28, 3, 'ITEMS', 'textarea', '', 5);
INSERT INTO `jos_rsform_component_type_fields` VALUES (29, 3, 'REQUIRED', 'select', 'NO\r\nYES', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES (30, 3, 'ADDITIONALATTRIBUTES', 'textarea', '', 7);
INSERT INTO `jos_rsform_component_type_fields` VALUES (31, 3, 'DESCRIPTION', 'textarea', '', 8);
INSERT INTO `jos_rsform_component_type_fields` VALUES (32, 3, 'COMPONENTTYPE', 'hidden', '3', 10);
INSERT INTO `jos_rsform_component_type_fields` VALUES (33, 4, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES (34, 4, 'CAPTION', 'textbox', '', 2);
INSERT INTO `jos_rsform_component_type_fields` VALUES (35, 4, 'ITEMS', 'textarea', '', 3);
INSERT INTO `jos_rsform_component_type_fields` VALUES (36, 4, 'FLOW', 'select', 'HORIZONTAL\r\nVERTICAL', 4);
INSERT INTO `jos_rsform_component_type_fields` VALUES (37, 4, 'REQUIRED', 'select', 'NO\r\nYES', 5);
INSERT INTO `jos_rsform_component_type_fields` VALUES (38, 4, 'ADDITIONALATTRIBUTES', 'textarea', '', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES (39, 4, 'DESCRIPTION', 'textarea', '', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES (40, 4, 'COMPONENTTYPE', 'hidden', '4', 7);
INSERT INTO `jos_rsform_component_type_fields` VALUES (41, 5, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES (42, 5, 'CAPTION', 'textbox', '', 2);
INSERT INTO `jos_rsform_component_type_fields` VALUES (43, 5, 'ITEMS', 'textarea', '', 3);
INSERT INTO `jos_rsform_component_type_fields` VALUES (44, 5, 'FLOW', 'select', 'HORIZONTAL\r\nVERTICAL', 4);
INSERT INTO `jos_rsform_component_type_fields` VALUES (45, 5, 'REQUIRED', 'select', 'NO\r\nYES', 5);
INSERT INTO `jos_rsform_component_type_fields` VALUES (46, 5, 'ADDITIONALATTRIBUTES', 'textarea', '', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES (47, 5, 'DESCRIPTION', 'textarea', '', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES (48, 5, 'COMPONENTTYPE', 'hidden', '5', 7);
INSERT INTO `jos_rsform_component_type_fields` VALUES (49, 6, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES (50, 6, 'CAPTION', 'textbox', '', 2);
INSERT INTO `jos_rsform_component_type_fields` VALUES (51, 6, 'REQUIRED', 'select', 'NO\r\nYES', 3);
INSERT INTO `jos_rsform_component_type_fields` VALUES (52, 6, 'DATEFORMAT', 'textbox', 'DDMMYYYY', 4);
INSERT INTO `jos_rsform_component_type_fields` VALUES (53, 6, 'CALENDARLAYOUT', 'select', 'FLAT\r\nPOPUP', 5);
INSERT INTO `jos_rsform_component_type_fields` VALUES (54, 6, 'ADDITIONALATTRIBUTES', 'textarea', '', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES (55, 6, 'DESCRIPTION', 'textarea', '', 7);
INSERT INTO `jos_rsform_component_type_fields` VALUES (56, 6, 'COMPONENTTYPE', 'hidden', '6', 8);
INSERT INTO `jos_rsform_component_type_fields` VALUES (57, 7, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES (58, 7, 'CAPTION', 'textbox', '', 2);
INSERT INTO `jos_rsform_component_type_fields` VALUES (59, 7, 'LABEL', 'textbox', '', 3);
INSERT INTO `jos_rsform_component_type_fields` VALUES (60, 7, 'RESET', 'select', 'NO\r\nYES', 4);
INSERT INTO `jos_rsform_component_type_fields` VALUES (61, 7, 'RESETLABEL', 'textbox', '', 5);
INSERT INTO `jos_rsform_component_type_fields` VALUES (62, 7, 'ADDITIONALATTRIBUTES', 'textarea', '', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES (63, 7, 'DESCRIPTION', 'textarea', '', 7);
INSERT INTO `jos_rsform_component_type_fields` VALUES (64, 7, 'COMPONENTTYPE', 'hidden', '7', 8);
INSERT INTO `jos_rsform_component_type_fields` VALUES (65, 8, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES (66, 8, 'CAPTION', 'textbox', '', 2);
INSERT INTO `jos_rsform_component_type_fields` VALUES (67, 8, 'LENGTH', 'textbox', '4', 3);
INSERT INTO `jos_rsform_component_type_fields` VALUES (68, 8, 'BACKGROUNDCOLOR', 'textbox', '#FFFFFF', 4);
INSERT INTO `jos_rsform_component_type_fields` VALUES (69, 8, 'TEXTCOLOR', 'textbox', '#000000', 5);
INSERT INTO `jos_rsform_component_type_fields` VALUES (70, 8, 'TYPE', 'select', 'ALPHA\r\nNUMERIC\r\nALPHANUMERIC', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES (71, 8, 'ADDITIONALATTRIBUTES', 'textarea', 'style="text-align:center;width:75px;"', 7);
INSERT INTO `jos_rsform_component_type_fields` VALUES (72, 8, 'DESCRIPTION', 'textarea', '', 9);
INSERT INTO `jos_rsform_component_type_fields` VALUES (73, 8, 'COMPONENTTYPE', 'hidden', '8', 9);
INSERT INTO `jos_rsform_component_type_fields` VALUES (74, 9, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES (75, 9, 'CAPTION', 'textbox', '', 2);
INSERT INTO `jos_rsform_component_type_fields` VALUES (76, 9, 'FILESIZE', 'textbox', '', 3);
INSERT INTO `jos_rsform_component_type_fields` VALUES (77, 9, 'REQUIRED', 'select', 'NO\r\nYES', 4);
INSERT INTO `jos_rsform_component_type_fields` VALUES (78, 9, 'ACCEPTEDFILES', 'textarea', '', 5);
INSERT INTO `jos_rsform_component_type_fields` VALUES (79, 9, 'DESTINATION', 'textbox', '//<code>\r\nreturn $RSadapter->config[''absolute_path''].''/components/com_rsform/uploads/'';\r\n//</code>', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES (80, 9, 'ADDITIONALATTRIBUTES', 'textarea', '', 7);
INSERT INTO `jos_rsform_component_type_fields` VALUES (81, 9, 'DESCRIPTION', 'textarea', '', 8);
INSERT INTO `jos_rsform_component_type_fields` VALUES (82, 9, 'COMPONENTTYPE', 'hidden', '9', 9);
INSERT INTO `jos_rsform_component_type_fields` VALUES (83, 10, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES (84, 10, 'TEXT', 'textarea', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES (85, 10, 'COMPONENTTYPE', 'hidden', '10', 9);
INSERT INTO `jos_rsform_component_type_fields` VALUES (86, 11, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES (87, 11, 'DEFAULTVALUE', 'textarea', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES (88, 11, 'ADDITIONALATTRIBUTES', 'textarea', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES (89, 11, 'COMPONENTTYPE', 'hidden', '11', 9);
INSERT INTO `jos_rsform_component_type_fields` VALUES (118, 12, 'COMPONENTTYPE', 'hidden', '12', 10);
INSERT INTO `jos_rsform_component_type_fields` VALUES (117, 12, 'ADDITIONALATTRIBUTES', 'textarea', '', 9);
INSERT INTO `jos_rsform_component_type_fields` VALUES (144, 3, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100);
INSERT INTO `jos_rsform_component_type_fields` VALUES (115, 12, 'RESETLABEL', 'textbox', '', 7);
INSERT INTO `jos_rsform_component_type_fields` VALUES (114, 12, 'RESET', 'select', 'NO\r\nYES', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES (113, 12, 'IMAGERESET', 'textbox', '', 5);
INSERT INTO `jos_rsform_component_type_fields` VALUES (112, 12, 'IMAGEBUTTON', 'textbox', '', 4);
INSERT INTO `jos_rsform_component_type_fields` VALUES (111, 12, 'LABEL', 'textbox', '', 3);
INSERT INTO `jos_rsform_component_type_fields` VALUES (110, 12, 'CAPTION', 'textbox', '', 2);
INSERT INTO `jos_rsform_component_type_fields` VALUES (109, 12, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES (119, 13, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES (120, 13, 'CAPTION', 'textbox', '', 3);
INSERT INTO `jos_rsform_component_type_fields` VALUES (121, 13, 'LABEL', 'textbox', '', 2);
INSERT INTO `jos_rsform_component_type_fields` VALUES (122, 13, 'RESET', 'select', 'NO\r\nYES', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES (123, 13, 'RESETLABEL', 'textbox', '', 7);
INSERT INTO `jos_rsform_component_type_fields` VALUES (125, 13, 'ADDITIONALATTRIBUTES', 'textarea', '', 9);
INSERT INTO `jos_rsform_component_type_fields` VALUES (126, 13, 'COMPONENTTYPE', 'hidden', '13', 10);
INSERT INTO `jos_rsform_component_type_fields` VALUES (127, 14, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES (128, 14, 'CAPTION', 'textbox', '', 2);
INSERT INTO `jos_rsform_component_type_fields` VALUES (129, 14, 'REQUIRED', 'select', 'NO\r\nYES', 3);
INSERT INTO `jos_rsform_component_type_fields` VALUES (130, 14, 'SIZE', 'textbox', '', 4);
INSERT INTO `jos_rsform_component_type_fields` VALUES (131, 14, 'MAXSIZE', 'textbox', '', 5);
INSERT INTO `jos_rsform_component_type_fields` VALUES (132, 14, 'DEFAULTVALUE', 'textarea', '', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES (133, 14, 'ADDITIONALATTRIBUTES', 'textarea', '', 7);
INSERT INTO `jos_rsform_component_type_fields` VALUES (134, 14, 'COMPONENTTYPE', 'hidden', '14', 8);
INSERT INTO `jos_rsform_component_type_fields` VALUES (135, 15, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES (138, 15, 'LENGTH', 'textbox', '8', 4);
INSERT INTO `jos_rsform_component_type_fields` VALUES (140, 15, 'ADDITIONALATTRIBUTES', 'textarea', '', 7);
INSERT INTO `jos_rsform_component_type_fields` VALUES (141, 15, 'COMPONENTTYPE', 'hidden', '15', 8);
INSERT INTO `jos_rsform_component_type_fields` VALUES (142, 14, 'DESCRIPTION', 'textarea', '', 100);
INSERT INTO `jos_rsform_component_type_fields` VALUES (143, 8, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100);
INSERT INTO `jos_rsform_component_type_fields` VALUES (145, 4, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100);
INSERT INTO `jos_rsform_component_type_fields` VALUES (146, 5, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100);
INSERT INTO `jos_rsform_component_type_fields` VALUES (147, 6, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100);
INSERT INTO `jos_rsform_component_type_fields` VALUES (148, 14, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100);
INSERT INTO `jos_rsform_component_type_fields` VALUES (149, 9, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100);
INSERT INTO `jos_rsform_component_type_fields` VALUES (150, 8, 'FLOW', 'select', 'VERTICAL\r\nHORIZONTAL', 7);
INSERT INTO `jos_rsform_component_type_fields` VALUES (151, 8, 'SHOWREFRESH', 'select', 'NO\r\nYES', 8);
INSERT INTO `jos_rsform_component_type_fields` VALUES (152, 8, 'REFRESHTEXT', 'textbox', 'REFRESH', 11);
INSERT INTO `jos_rsform_component_type_fields` VALUES (153, 6, 'READONLY', 'select', 'NO\r\nYES', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES (154, 12, 'DESCRIPTION', 'textarea', '', 10);
INSERT INTO `jos_rsform_component_type_fields` VALUES (155, 6, 'POPUPLABEL', 'textbox', '...', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES (157, 15, 'CHARACTERS', 'select', 'ALPHANUMERIC\r\nALPHA\r\nNUMERIC', 3);
INSERT INTO `jos_rsform_component_type_fields` VALUES (158, 9, 'ATTACHUSEREMAIL', 'select', 'NO\r\nYES', 100);
INSERT INTO `jos_rsform_component_type_fields` VALUES (159, 9, 'ATTACHADMINEMAIL', 'select', 'NO\r\nYES', 101);
INSERT INTO `jos_rsform_component_type_fields` VALUES (160, 2, 'WYSIWYG', 'select', 'NO\r\nYES', 11);
INSERT INTO `jos_rsform_component_type_fields` VALUES (161, 8, 'SIZE', 'textbox', '15', 12);
INSERT INTO `jos_rsform_component_type_fields` VALUES (162, 8, 'IMAGETYPE', 'select', 'FREETYPE\r\nNOFREETYPE\r\nINVISIBLE', 3);
INSERT INTO `jos_rsform_component_type_fields` VALUES (163, 1, 'VALIDATIONEXTRA', 'textbox', '', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES (164, 2, 'VALIDATIONEXTRA', 'textbox', '', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES (165, 14, 'VALIDATIONRULE', 'select', '//<code>\r\nreturn RSgetValidationRules();\r\n//</code>', 9);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_rsform_component_types`
-- 

CREATE TABLE `jos_rsform_component_types` (
  `ComponentTypeId` int(11) NOT NULL auto_increment,
  `ComponentTypeName` text NOT NULL,
  PRIMARY KEY  (`ComponentTypeId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- 
-- Dumping data for table `jos_rsform_component_types`
-- 

INSERT INTO `jos_rsform_component_types` VALUES (1, 'textBox');
INSERT INTO `jos_rsform_component_types` VALUES (2, 'textArea');
INSERT INTO `jos_rsform_component_types` VALUES (3, 'selectList');
INSERT INTO `jos_rsform_component_types` VALUES (4, 'checkboxGroup');
INSERT INTO `jos_rsform_component_types` VALUES (5, 'radioGroup');
INSERT INTO `jos_rsform_component_types` VALUES (6, 'calendar');
INSERT INTO `jos_rsform_component_types` VALUES (7, 'button');
INSERT INTO `jos_rsform_component_types` VALUES (8, 'captcha');
INSERT INTO `jos_rsform_component_types` VALUES (9, 'fileUpload');
INSERT INTO `jos_rsform_component_types` VALUES (10, 'freeText');
INSERT INTO `jos_rsform_component_types` VALUES (11, 'hidden');
INSERT INTO `jos_rsform_component_types` VALUES (12, 'imageButton');
INSERT INTO `jos_rsform_component_types` VALUES (13, 'submitButton');
INSERT INTO `jos_rsform_component_types` VALUES (14, 'password');
INSERT INTO `jos_rsform_component_types` VALUES (15, 'ticket');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_rsform_components`
-- 

CREATE TABLE `jos_rsform_components` (
  `ComponentId` int(11) NOT NULL auto_increment,
  `FormId` int(11) NOT NULL default '0',
  `ComponentTypeId` int(11) NOT NULL default '0',
  `Order` int(11) NOT NULL default '0',
  `Published` tinyint(1) NOT NULL default '1',
  UNIQUE KEY `ComponentId` (`ComponentId`),
  KEY `ComponentTypeId` (`ComponentTypeId`),
  KEY `FormId` (`FormId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=65 ;

-- 
-- Dumping data for table `jos_rsform_components`
-- 

INSERT INTO `jos_rsform_components` VALUES (10, 2, 1, 1, 1);
INSERT INTO `jos_rsform_components` VALUES (58, 3, 1, 10, 1);
INSERT INTO `jos_rsform_components` VALUES (12, 2, 13, 12, 1);
INSERT INTO `jos_rsform_components` VALUES (57, 3, 1, 11, 1);
INSERT INTO `jos_rsform_components` VALUES (56, 3, 1, 12, 1);
INSERT INTO `jos_rsform_components` VALUES (55, 3, 8, 13, 0);
INSERT INTO `jos_rsform_components` VALUES (54, 3, 1, 3, 1);
INSERT INTO `jos_rsform_components` VALUES (53, 3, 13, 14, 1);
INSERT INTO `jos_rsform_components` VALUES (41, 2, 1, 4, 1);
INSERT INTO `jos_rsform_components` VALUES (50, 2, 3, 3, 1);
INSERT INTO `jos_rsform_components` VALUES (48, 2, 1, 11, 1);
INSERT INTO `jos_rsform_components` VALUES (47, 2, 1, 10, 1);
INSERT INTO `jos_rsform_components` VALUES (46, 2, 1, 9, 1);
INSERT INTO `jos_rsform_components` VALUES (45, 2, 1, 8, 1);
INSERT INTO `jos_rsform_components` VALUES (43, 2, 1, 6, 1);
INSERT INTO `jos_rsform_components` VALUES (44, 2, 1, 7, 1);
INSERT INTO `jos_rsform_components` VALUES (40, 2, 1, 2, 1);
INSERT INTO `jos_rsform_components` VALUES (52, 3, 1, 6, 1);
INSERT INTO `jos_rsform_components` VALUES (51, 3, 10, 1, 1);
INSERT INTO `jos_rsform_components` VALUES (42, 2, 1, 5, 1);
INSERT INTO `jos_rsform_components` VALUES (59, 3, 10, 9, 1);
INSERT INTO `jos_rsform_components` VALUES (60, 3, 1, 8, 1);
INSERT INTO `jos_rsform_components` VALUES (61, 3, 1, 5, 1);
INSERT INTO `jos_rsform_components` VALUES (62, 3, 1, 7, 1);
INSERT INTO `jos_rsform_components` VALUES (63, 3, 1, 4, 1);
INSERT INTO `jos_rsform_components` VALUES (64, 3, 10, 2, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_rsform_config`
-- 

CREATE TABLE `jos_rsform_config` (
  `ConfigId` int(11) NOT NULL auto_increment,
  `SettingName` varchar(64) NOT NULL default '',
  `SettingValue` text NOT NULL,
  PRIMARY KEY  (`ConfigId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `jos_rsform_config`
-- 

INSERT INTO `jos_rsform_config` VALUES (1, 'global.register.code', '');
INSERT INTO `jos_rsform_config` VALUES (2, 'global.debug.mode', '0');
INSERT INTO `jos_rsform_config` VALUES (3, 'global.iis', '1');
INSERT INTO `jos_rsform_config` VALUES (4, 'global.editor', '1');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_rsform_forms`
-- 

CREATE TABLE `jos_rsform_forms` (
  `FormId` int(11) NOT NULL auto_increment,
  `FormName` text NOT NULL,
  `FormLayout` text NOT NULL,
  `FormLayoutName` text NOT NULL,
  `FormLayoutAutogenerate` tinyint(1) NOT NULL default '1',
  `FormTitle` text NOT NULL,
  `Published` tinyint(4) NOT NULL default '1',
  `Lang` varchar(255) NOT NULL default '',
  `ReturnUrl` text NOT NULL,
  `Thankyou` text NOT NULL,
  `UserEmailText` text NOT NULL,
  `UserEmailTo` text NOT NULL,
  `UserEmailCC` varchar(255) NOT NULL,
  `UserEmailBCC` varchar(255) NOT NULL,
  `UserEmailFrom` varchar(255) NOT NULL default '',
  `UserEmailReplyTo` varchar(255) NOT NULL,
  `UserEmailFromName` varchar(255) NOT NULL default '',
  `UserEmailSubject` varchar(255) NOT NULL default '',
  `UserEmailMode` tinyint(4) NOT NULL default '1',
  `UserEmailAttach` tinyint(4) NOT NULL,
  `UserEmailAttachFile` varchar(255) NOT NULL,
  `AdminEmailText` text NOT NULL,
  `AdminEmailTo` text NOT NULL,
  `AdminEmailCC` varchar(255) NOT NULL,
  `AdminEmailBCC` varchar(255) NOT NULL,
  `AdminEmailFrom` varchar(255) NOT NULL default '',
  `AdminEmailReplyTo` varchar(255) NOT NULL,
  `AdminEmailFromName` varchar(255) NOT NULL default '',
  `AdminEmailSubject` varchar(255) NOT NULL default '',
  `AdminEmailMode` tinyint(4) NOT NULL default '1',
  `ScriptProcess` text NOT NULL,
  `ScriptProcess2` text NOT NULL,
  `ScriptDisplay` text NOT NULL,
  PRIMARY KEY  (`FormId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `jos_rsform_forms`
-- 

INSERT INTO `jos_rsform_forms` VALUES (2, 'Registro Ciclo de Seminarios: Doctores en la Empresa', '<div class="componentheading">{global:formtitle}</div>\n<div>\n	{nombre:caption} (*)<br/>\n	{nombre:body}<br/>\n	{nombre:validation}\n	{nombre:description}<br/>\n	{apellidos:caption} (*)<br/>\n	{apellidos:body}<br/>\n	{apellidos:validation}\n	{apellidos:description}<br/>\n	{seminarios:caption} (*)<br/>\n	{seminarios:body}<br/>\n	{seminarios:validation}\n	{seminarios:description}<br/>\n	{institucion:caption} (*)<br/>\n	{institucion:body}<br/>\n	{institucion:validation}\n	{institucion:description}<br/>\n	{direccion:caption} (*)<br/>\n	{direccion:body}<br/>\n	{direccion:validation}\n	{direccion:description}<br/>\n	{ciudad:caption} (*)<br/>\n	{ciudad:body}<br/>\n	{ciudad:validation}\n	{ciudad:description}<br/>\n	{codigo_postal:caption} (*)<br/>\n	{codigo_postal:body}<br/>\n	{codigo_postal:validation}\n	{codigo_postal:description}<br/>\n	{pais:caption} (*)<br/>\n	{pais:body}<br/>\n	{pais:validation}\n	{pais:description}<br/>\n	{email:caption} (*)<br/>\n	{email:body}<br/>\n	{email:validation}\n	{email:description}<br/>\n	{telefono:caption}<br/>\n	{telefono:body}<br/>\n	{telefono:validation}\n	{telefono:description}<br/>\n	{nif:caption}<br/>\n	{nif:body}<br/>\n	{nif:validation}\n	{nif:description}<br/>\n	{registro:caption}<br/>\n	{registro:body}<br/>\n	{registro:validation}\n	{registro:description}<br/>\n</div>\n', '2lines', 1, 'Registro Ciclo de Seminarios: Doctores en la Empresa', 0, '', '', '<p>Buenos días,</p><p>Hemos recibido una inscripción suya al Ciclo de Seminarios de Doctores en la Empresa.<br></p><p>{nombre:caption}: {nombre:value} {apellidos:value}<br>{seminarios:caption}: {seminarios:value}<br></p><p>\r\nLe recordamos que debe realizar el pago correspondiente al nº de\r\ncuenta:&nbsp; 2100 0424 3902 0014 5951</p><p>Fundació Empresa i Ciencia<br>NIF: G-08887721<br>Campus UAB, Edifici A (Rectorat)<br>08193 Bellaterra.<br></p><p>Se ruega guardar el resguardo, ya que se pedirá el día del evento.</p><p>Para cualquier duda, puede contactar a Vicky Couste [vcouste@icmab.es]</p><p>Saludos,</p><p>Doctores en la Empresa</p><p><b><br></b></p>', '<p>Buenos días,</p><p>Hemos recibido una inscripción suya al Ciclo de Seminarios de Doctores en la Empresa.<br></p><p>{nombre:caption}: {nombre:value} {apellidos:value}<br>{seminarios:caption}: {seminarios:value}<br></p><p>\r\n		                    			                    			Le recordamos que debe realizar el pago correspondiente al nº de cuenta:&nbsp; 2100 0424 3902 0014 5951</p><p>Fundació Empresa i Ciencia<br>NIF: G-08887721<br>Campus UAB, Edifici A (Rectorat)<br>08193 Bellaterra.<br></p><p>Se ruega guardar el resguardo, ya que se pedirá el día del evento.</p><p>Para cualquier duda, puede contactar a Vicky Couste [vcouste@icmab.es]</p><p>Saludos,</p><p>Doctores en la Empresa<br></p>', '{email:value}', '', '', 'webmaster@icmab.es', '', 'Doctores en la empresa', 'Registro Ciclo de Seminarios Doctores en la empresa', 1, 0, '/srv/www/html/doctoresenlaempresa/encuesta/components/com_rsform/uploads/', '<p><strong>nombre</strong><br>\r\n		                    			{nombre:caption}:{nombre:value}<br><br>\r\n			                    				                    			<strong>apellidos</strong><br>\r\n		                    			{apellidos:caption}:{apellidos:value}<br><br>\r\n			                    				                    			<strong>seminarios</strong><br>\r\n		                    			{seminarios:caption}:{seminarios:value}<br><br>\r\n			                    				                    			<strong>institucion</strong><br>\r\n		                    			{institucion:caption}:{institucion:value}<br><br>\r\n			                    				                    			<strong>direccion</strong><br>\r\n		                    			{direccion:caption}:{direccion:value}<br><br>\r\n			                    				                    			<strong>ciudad</strong><br>\r\n		                    			{ciudad:caption}:{ciudad:value}<br><br>\r\n			                    				                    			<strong>codigo_postal</strong><br>\r\n		                    			{codigo_postal:caption}:{codigo_postal:value}<br><br>\r\n			                    				                    			<strong>pais</strong><br>\r\n		                    			{pais:caption}:{pais:value}<br><br>\r\n			                    				                    			<strong>email</strong><br>\r\n		                    			{email:caption}:{email:value}<br><br>\r\n			                    				                    			<strong>telefono</strong><br>\r\n		                    			{telefono:caption}:{telefono:value}<br><br>\r\n			                    				                    			<strong>nif</strong><br>\r\n		                    			{nif:caption}:{nif:value}<br><br>\r\n			                    				                    			<strong>registro</strong><br>\r\n		                    			{registro:caption}:{registro:value}</p>', 'amoreno@icmab.es,vcouste@icmab.es', '', '', 'webmaster@icmab.es', '', 'Registro Ciclo de Seminarios Doctores en la empresa', 'Nueva entrada en la Registro Ciclo de Seminarios Doctores en la empresa', 1, '', '', '');
INSERT INTO `jos_rsform_forms` VALUES (3, 'EULASUR Workshop: FROM MATERIALS TO PRODUCTS', '<div class="componentheading">{global:formtitle}</div>\r\n{intro:body}\r\n<br>\r\n<table border="0" width="100%">\r\n	<tr>\r\n		<td>{personal:body}<div class="formClr"></div>{personal:validation}</td>\r\n		<td>{personal:description}</td>\r\n		<td>{personal:caption}</td>\r\n	</tr>\r\n	<tr>\r\n		<td colspan=''3''><br></td>\r\n	</tr>\r\n	<tr class=''sectiontableentry1''>\r\n		<td>{title:caption}</td>\r\n		<td>{title:body}<div class="formClr"></div>{title:validation}</td>\r\n		<td>{title:description}</td>\r\n	</tr>\r\n	<tr class=''sectiontableentry2''>\r\n		<td>{name:caption} (*)</td>\r\n		<td>{name:body}<div class="formClr"></div>{name:validation}</td>\r\n		<td>{name:description}</td>\r\n	</tr>\r\n	<tr class=''sectiontableentry1''>\r\n		<td>{familyname:caption} (*)</td>\r\n		<td>{familyname:body}<div class="formClr"></div>{familyname:validation}</td>\r\n		<td>{familyname:description}</td>\r\n	</tr>\r\n	<tr class=''sectiontableentry2''>\r\n		<td>{email:caption} (*)</td>\r\n		<td>{email:body}<div class="formClr"></div>{email:validation}</td>\r\n		<td>{email:description}</td>\r\n	</tr>\r\n	<tr class=''sectiontableentry1''>\r\n		<td>{passport:caption} (*)</td>\r\n		<td>{passport:body}<div class="formClr"></div>{passport:validation}</td>\r\n		<td>{passport:description}</td>\r\n	</tr>\r\n	<tr class=''sectiontableentry2''>\r\n		<td>{placeandbirth:caption}</td>\r\n		<td>{placeandbirth:body}<div class="formClr"></div>{placeandbirth:validation}</td>\r\n		<td>{placeandbirth:description}</td>\r\n	</tr>\r\n	<tr>\r\n		<td colspan=''3''><br></td>\r\n	</tr>\r\n	<tr>\r\n		<td>{academic:body}<div class="formClr"></div>{academic:validation}</td>\r\n		<td>{academic:description}</td>\r\n		<td>{academic:caption}</td>\r\n	</tr>\r\n	<tr>\r\n		<td colspan=''3''><br></td>\r\n	</tr>\r\n	<tr class=''sectiontableentry1''>\r\n		<td>{organization:caption} (*)</td>\r\n		<td>{organization:body}<div class="formClr"></div>{organization:validation}</td>\r\n		<td>{organization:description}</td>\r\n	</tr>\r\n	<tr class=''sectiontableentry2''>\r\n		<td>{department:caption} (*)</td>\r\n		<td>{department:body}<div class="formClr"></div>{department:validation}</td>\r\n		<td>{department:description}</td>\r\n	</tr>\r\n	<tr class=''sectiontableentry1''>\r\n		<td>{position:caption}</td>\r\n		<td>{position:body}<div class="formClr"></div>{position:validation}</td>\r\n		<td>{position:description}</td>\r\n	</tr>\r\n	<tr>\r\n		<td colspan=''3''><br></td>\r\n	</tr>\r\n	<tr>\r\n		<td></td>\r\n		<td></td>\r\n		<td>{submit:body}{submit:validation}</td>\r\n	</tr>\r\n</table>\r\n', 'inline', 0, 'EULASUR Workshop: FROM MATERIALS TO PRODUCTS', 0, '', '', '<p> </p>\r\n<h3>EULASUR WORKSHOP “FROM MATERIALS TO PRODUCTS”</h3>\r\n<p class="oknote">You have been successfully registered to this Workshop.</p>\r\n<p>Please book your accommodation at:<br /><a target="_blank" href="http://www.bristolhotels.com.br/eng/hotl/hotel.asp?codhotel=BMH&amp;Banner1=2">Bristol Merit Hotel</a><br />Rua dos Tamoios, 341 – Centro – 30120‐050 – Belo Horizonte –MG – Brazil<br /><br />In order to make reservations, please send a message to the agency <strong>PRIMUS</strong>:<br /><a href="mailto:ramim.corporativo@primus.com.br.?subject=Workshop BeloHorizonte 2011">ramim.corporativo@primus.com.br.</a><br />Inform of your name, how many days you intend to stay, and specify the dates.<br /><br />In case of double‐occupied rooms please indicate the roommate of your preference.<br /><br /><br /><strong>Rates</strong>:<br />Single apartment: <strong>R$209,00</strong> (breakfast and lunch included)<br />Double apartment: <strong>R$275,00</strong> (breakfast and lunch included)<br />These special rates are guaranteed until <strong>March 07</strong>, so please make the reservations as soon as possible.<br /><br /><em>You can also contact by phone:<br />Agency PRIMUS<br />Rodrigo Amim (e‐mail above indicated)<br />+55‐31‐3228‐6066<br />http://www.primus.com.br/ </em></p>\r\n<form><input type="button" value=" Print this page "\r\nonclick="window.print();return false;" /></form> \r\n<br /><br />\r\n<p>Regards,</p>\r\n<p>Eulasur organization.</p>', '<div style="border: 1px solid #cccccc; margin: 5px;" id="AdminEmailText">\r\n<p>You have been successfully registered to this Workshop with the following data:</p>\r\n<p><br /><strong>Personal Data</strong></p>\r\n<p>{title:caption}:{title:value}<br />{name:caption}:{name:value}<br />{familyname:caption}:{familyname:value}<br /><strong></strong>{email:caption}:{email:value}<br />{passport:caption}:{passport:value}<br />{placeandbirth:caption}:{placeandbirth:value}<br /><br /><strong>Professional Data</strong><br /> {organization:caption}:{organization:value}<br />{department:caption}:{department:value}<br />{position:caption}:{position:value}</p>\r\n<p>Regards,</p>\r\n<p>EULASUR organization</p>\r\n</div>', '{email:value}', '', '', 'amoreno@icmab.es', '', 'Workshop de BeloHorizonte 2011', 'Workshop de BeloHorizonte 2011', 1, 0, '/srv/www/html/eulasur/components/com_rsform/uploads/', '<p>A new Workshop de BeloHorizonte 2011 entry has been submited with the following details.</p>\r\n<p><br /><strong>Personal Data</strong></p>\r\n<p>{title:caption}:{title:value}<br />{name:caption}:{name:value}<br />{familyname:caption}:{familyname:value}<br /><strong></strong>{email:caption}:{email:value}<br />{passport:caption}:{passport:value}<br />{placeandbirth:caption}:{placeandbirth:value}<br /><br /><strong>Professional Data</strong><br /> {organization:caption}:{organization:value}<br />{department:caption}:{department:value}<br />{position:caption}:{position:value}</p>\r\n<p>Regards,</p>\r\n<p>EULASUR organization</p>', 'amoreno@icmab.es;wagner@fisica.ufmg.br;mvendrell@icmab.es', '', '', 'amoreno@icmab.es', '', 'Workshop de BeloHorizonte 2011', 'Workshop de BeloHorizonte 2011', 1, '', '', 'global $mainframe;\r\n$mainframe->triggerEvent(''onCaptchaConfirm'');');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_rsform_mappings`
-- 

CREATE TABLE `jos_rsform_mappings` (
  `MappingId` int(11) NOT NULL auto_increment,
  `ComponentId` int(11) NOT NULL,
  `MappingTable` text NOT NULL,
  `MappingColumn` text NOT NULL,
  PRIMARY KEY  (`MappingId`),
  KEY `ComponentId` (`ComponentId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_rsform_mappings`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_rsform_properties`
-- 

CREATE TABLE `jos_rsform_properties` (
  `PropertyId` int(11) NOT NULL auto_increment,
  `ComponentId` int(11) NOT NULL default '0',
  `PropertyName` text NOT NULL,
  `PropertyValue` text NOT NULL,
  UNIQUE KEY `PropertyId` (`PropertyId`),
  KEY `ComponentId` (`ComponentId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=554 ;

-- 
-- Dumping data for table `jos_rsform_properties`
-- 

INSERT INTO `jos_rsform_properties` VALUES (66, 10, 'NAME', 'nombre');
INSERT INTO `jos_rsform_properties` VALUES (67, 10, 'CAPTION', 'Nombre');
INSERT INTO `jos_rsform_properties` VALUES (68, 10, 'REQUIRED', 'YES');
INSERT INTO `jos_rsform_properties` VALUES (69, 10, 'SIZE', '40');
INSERT INTO `jos_rsform_properties` VALUES (70, 10, 'MAXSIZE', '');
INSERT INTO `jos_rsform_properties` VALUES (71, 10, 'VALIDATIONRULE', 'none');
INSERT INTO `jos_rsform_properties` VALUES (72, 10, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES (73, 10, 'VALIDATIONMESSAGE', 'Debes indicar tu nombre');
INSERT INTO `jos_rsform_properties` VALUES (74, 10, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES (75, 10, 'DEFAULTVALUE', '');
INSERT INTO `jos_rsform_properties` VALUES (76, 10, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES (462, 55, 'TEXTCOLOR', '#000000');
INSERT INTO `jos_rsform_properties` VALUES (461, 55, 'TYPE', 'ALPHA');
INSERT INTO `jos_rsform_properties` VALUES (460, 55, 'ADDITIONALATTRIBUTES', 'style="text-align:center;width:75px;"');
INSERT INTO `jos_rsform_properties` VALUES (459, 55, 'NAME', 'captcha');
INSERT INTO `jos_rsform_properties` VALUES (458, 54, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES (457, 54, 'DEFAULTVALUE', '');
INSERT INTO `jos_rsform_properties` VALUES (456, 54, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES (85, 12, 'NAME', 'registro');
INSERT INTO `jos_rsform_properties` VALUES (86, 12, 'LABEL', 'Registro');
INSERT INTO `jos_rsform_properties` VALUES (87, 12, 'CAPTION', '');
INSERT INTO `jos_rsform_properties` VALUES (88, 12, 'RESET', 'NO');
INSERT INTO `jos_rsform_properties` VALUES (89, 12, 'RESETLABEL', '');
INSERT INTO `jos_rsform_properties` VALUES (90, 12, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES (455, 54, 'VALIDATIONMESSAGE', '');
INSERT INTO `jos_rsform_properties` VALUES (453, 54, 'MAXSIZE', '');
INSERT INTO `jos_rsform_properties` VALUES (454, 54, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES (452, 54, 'VALIDATIONRULE', 'none');
INSERT INTO `jos_rsform_properties` VALUES (451, 54, 'SIZE', '10');
INSERT INTO `jos_rsform_properties` VALUES (450, 54, 'REQUIRED', 'NO');
INSERT INTO `jos_rsform_properties` VALUES (449, 54, 'CAPTION', 'Title');
INSERT INTO `jos_rsform_properties` VALUES (448, 54, 'NAME', 'title');
INSERT INTO `jos_rsform_properties` VALUES (447, 53, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES (446, 53, 'RESETLABEL', '');
INSERT INTO `jos_rsform_properties` VALUES (443, 53, 'LABEL', 'Save and Send');
INSERT INTO `jos_rsform_properties` VALUES (444, 53, 'CAPTION', '');
INSERT INTO `jos_rsform_properties` VALUES (445, 53, 'RESET', 'NO');
INSERT INTO `jos_rsform_properties` VALUES (442, 53, 'NAME', 'submit');
INSERT INTO `jos_rsform_properties` VALUES (441, 52, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES (440, 52, 'DEFAULTVALUE', '');
INSERT INTO `jos_rsform_properties` VALUES (439, 52, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES (438, 52, 'VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `jos_rsform_properties` VALUES (437, 52, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES (436, 52, 'VALIDATIONRULE', 'email');
INSERT INTO `jos_rsform_properties` VALUES (435, 52, 'MAXSIZE', '');
INSERT INTO `jos_rsform_properties` VALUES (434, 52, 'SIZE', '40');
INSERT INTO `jos_rsform_properties` VALUES (421, 50, 'CAPTION', 'Seminarios');
INSERT INTO `jos_rsform_properties` VALUES (422, 50, 'SIZE', '');
INSERT INTO `jos_rsform_properties` VALUES (423, 50, 'MULTIPLE', 'NO');
INSERT INTO `jos_rsform_properties` VALUES (424, 50, 'ITEMS', 'Seminario II, III y IV\r\nSeminario II [21 de octubre]. “La Innovación y el científico”\r\nSeminario III [29 de octubre]. “El talento y las competencias profesionales.”\r\nSeminario IV [11 de noviembre] “Valorización de ideas y resultados de I+D.”\r\nJornada [2 de diciembre]. Networking con empresas');
INSERT INTO `jos_rsform_properties` VALUES (425, 50, 'REQUIRED', 'YES');
INSERT INTO `jos_rsform_properties` VALUES (426, 50, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES (427, 50, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES (428, 50, 'VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `jos_rsform_properties` VALUES (429, 51, 'TEXT', '<p align="center"><h2>Bristol Merit Hotel, Belo Horizonte, Brazil. 7-10 April, 2011</h2>\r\n<h2>REGISTRATION FORM</h2>\r\n</p>\r\n<br>');
INSERT INTO `jos_rsform_properties` VALUES (430, 51, 'NAME', 'intro');
INSERT INTO `jos_rsform_properties` VALUES (340, 41, 'CAPTION', 'Institucion');
INSERT INTO `jos_rsform_properties` VALUES (337, 41, 'SIZE', '40');
INSERT INTO `jos_rsform_properties` VALUES (338, 41, 'REQUIRED', 'YES');
INSERT INTO `jos_rsform_properties` VALUES (339, 41, 'NAME', 'institucion');
INSERT INTO `jos_rsform_properties` VALUES (336, 41, 'MAXSIZE', '');
INSERT INTO `jos_rsform_properties` VALUES (335, 41, 'VALIDATIONRULE', 'none');
INSERT INTO `jos_rsform_properties` VALUES (334, 41, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES (329, 40, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES (330, 41, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES (331, 41, 'DEFAULTVALUE', '');
INSERT INTO `jos_rsform_properties` VALUES (332, 41, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES (333, 41, 'VALIDATIONMESSAGE', 'Debes indicar la Institución a la que perteneces');
INSERT INTO `jos_rsform_properties` VALUES (402, 47, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES (401, 47, 'VALIDATIONRULE', 'none');
INSERT INTO `jos_rsform_properties` VALUES (400, 47, 'MAXSIZE', '');
INSERT INTO `jos_rsform_properties` VALUES (397, 47, 'CAPTION', 'Teléfono');
INSERT INTO `jos_rsform_properties` VALUES (398, 47, 'REQUIRED', 'NO');
INSERT INTO `jos_rsform_properties` VALUES (399, 47, 'SIZE', '40');
INSERT INTO `jos_rsform_properties` VALUES (396, 47, 'NAME', 'telefono');
INSERT INTO `jos_rsform_properties` VALUES (395, 46, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES (394, 46, 'DEFAULTVALUE', '');
INSERT INTO `jos_rsform_properties` VALUES (393, 46, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES (392, 46, 'VALIDATIONMESSAGE', 'E-mail inválido');
INSERT INTO `jos_rsform_properties` VALUES (391, 46, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES (388, 46, 'SIZE', '40');
INSERT INTO `jos_rsform_properties` VALUES (389, 46, 'MAXSIZE', '');
INSERT INTO `jos_rsform_properties` VALUES (390, 46, 'VALIDATIONRULE', 'email');
INSERT INTO `jos_rsform_properties` VALUES (387, 46, 'REQUIRED', 'YES');
INSERT INTO `jos_rsform_properties` VALUES (386, 46, 'CAPTION', 'E-mail');
INSERT INTO `jos_rsform_properties` VALUES (385, 46, 'NAME', 'email');
INSERT INTO `jos_rsform_properties` VALUES (384, 45, 'CAPTION', 'País');
INSERT INTO `jos_rsform_properties` VALUES (383, 45, 'NAME', 'pais');
INSERT INTO `jos_rsform_properties` VALUES (382, 45, 'REQUIRED', 'YES');
INSERT INTO `jos_rsform_properties` VALUES (378, 45, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES (379, 45, 'VALIDATIONRULE', 'none');
INSERT INTO `jos_rsform_properties` VALUES (380, 45, 'MAXSIZE', '');
INSERT INTO `jos_rsform_properties` VALUES (381, 45, 'SIZE', '40');
INSERT INTO `jos_rsform_properties` VALUES (377, 45, 'VALIDATIONMESSAGE', 'Debes indicar el país');
INSERT INTO `jos_rsform_properties` VALUES (376, 45, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES (375, 45, 'DEFAULTVALUE', '');
INSERT INTO `jos_rsform_properties` VALUES (374, 45, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES (373, 44, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES (371, 44, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES (372, 44, 'DEFAULTVALUE', '');
INSERT INTO `jos_rsform_properties` VALUES (370, 44, 'VALIDATIONMESSAGE', 'Debes indicar el código postal');
INSERT INTO `jos_rsform_properties` VALUES (369, 44, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES (368, 44, 'VALIDATIONRULE', 'none');
INSERT INTO `jos_rsform_properties` VALUES (367, 44, 'MAXSIZE', '');
INSERT INTO `jos_rsform_properties` VALUES (366, 44, 'SIZE', '10');
INSERT INTO `jos_rsform_properties` VALUES (365, 44, 'REQUIRED', 'YES');
INSERT INTO `jos_rsform_properties` VALUES (364, 44, 'CAPTION', 'Código Postal');
INSERT INTO `jos_rsform_properties` VALUES (363, 44, 'NAME', 'codigo_postal');
INSERT INTO `jos_rsform_properties` VALUES (362, 43, 'CAPTION', 'Ciudad');
INSERT INTO `jos_rsform_properties` VALUES (361, 43, 'NAME', 'ciudad');
INSERT INTO `jos_rsform_properties` VALUES (360, 43, 'REQUIRED', 'YES');
INSERT INTO `jos_rsform_properties` VALUES (350, 42, 'DEFAULTVALUE', '');
INSERT INTO `jos_rsform_properties` VALUES (351, 42, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES (352, 43, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES (353, 43, 'DEFAULTVALUE', '');
INSERT INTO `jos_rsform_properties` VALUES (354, 43, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES (355, 43, 'VALIDATIONMESSAGE', 'Debes indicar la ciudad');
INSERT INTO `jos_rsform_properties` VALUES (356, 43, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES (357, 43, 'VALIDATIONRULE', 'none');
INSERT INTO `jos_rsform_properties` VALUES (358, 43, 'MAXSIZE', '');
INSERT INTO `jos_rsform_properties` VALUES (359, 43, 'SIZE', '40');
INSERT INTO `jos_rsform_properties` VALUES (328, 40, 'DEFAULTVALUE', '');
INSERT INTO `jos_rsform_properties` VALUES (325, 40, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES (326, 40, 'VALIDATIONMESSAGE', 'Debes indicar tu/s apellido/s');
INSERT INTO `jos_rsform_properties` VALUES (327, 40, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES (324, 40, 'VALIDATIONRULE', 'none');
INSERT INTO `jos_rsform_properties` VALUES (323, 40, 'MAXSIZE', '');
INSERT INTO `jos_rsform_properties` VALUES (322, 40, 'SIZE', '40');
INSERT INTO `jos_rsform_properties` VALUES (321, 40, 'REQUIRED', 'YES');
INSERT INTO `jos_rsform_properties` VALUES (319, 40, 'NAME', 'apellidos');
INSERT INTO `jos_rsform_properties` VALUES (320, 40, 'CAPTION', 'Apellidos');
INSERT INTO `jos_rsform_properties` VALUES (431, 52, 'NAME', 'email');
INSERT INTO `jos_rsform_properties` VALUES (432, 52, 'CAPTION', 'Email');
INSERT INTO `jos_rsform_properties` VALUES (433, 52, 'REQUIRED', 'YES');
INSERT INTO `jos_rsform_properties` VALUES (420, 50, 'NAME', 'seminarios');
INSERT INTO `jos_rsform_properties` VALUES (411, 48, 'MAXSIZE', '');
INSERT INTO `jos_rsform_properties` VALUES (410, 48, 'SIZE', '20');
INSERT INTO `jos_rsform_properties` VALUES (417, 48, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES (416, 48, 'DEFAULTVALUE', '');
INSERT INTO `jos_rsform_properties` VALUES (415, 48, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES (414, 48, 'VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `jos_rsform_properties` VALUES (413, 48, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES (412, 48, 'VALIDATIONRULE', 'none');
INSERT INTO `jos_rsform_properties` VALUES (409, 48, 'REQUIRED', 'NO');
INSERT INTO `jos_rsform_properties` VALUES (408, 48, 'CAPTION', 'NIF');
INSERT INTO `jos_rsform_properties` VALUES (407, 48, 'NAME', 'nif');
INSERT INTO `jos_rsform_properties` VALUES (406, 47, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES (349, 42, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES (348, 42, 'VALIDATIONMESSAGE', 'Debes indicar tu dirección');
INSERT INTO `jos_rsform_properties` VALUES (347, 42, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES (346, 42, 'VALIDATIONRULE', 'none');
INSERT INTO `jos_rsform_properties` VALUES (345, 42, 'MAXSIZE', '');
INSERT INTO `jos_rsform_properties` VALUES (344, 42, 'SIZE', '80');
INSERT INTO `jos_rsform_properties` VALUES (343, 42, 'REQUIRED', 'YES');
INSERT INTO `jos_rsform_properties` VALUES (342, 42, 'CAPTION', 'Dirección');
INSERT INTO `jos_rsform_properties` VALUES (341, 42, 'NAME', 'direccion');
INSERT INTO `jos_rsform_properties` VALUES (404, 47, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES (405, 47, 'DEFAULTVALUE', '');
INSERT INTO `jos_rsform_properties` VALUES (403, 47, 'VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `jos_rsform_properties` VALUES (463, 55, 'BACKGROUNDCOLOR', '#FFFFFF');
INSERT INTO `jos_rsform_properties` VALUES (464, 55, 'IMAGETYPE', 'FREETYPE');
INSERT INTO `jos_rsform_properties` VALUES (465, 55, 'LENGTH', '4');
INSERT INTO `jos_rsform_properties` VALUES (466, 55, 'CAPTION', 'Captcha');
INSERT INTO `jos_rsform_properties` VALUES (467, 55, 'VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `jos_rsform_properties` VALUES (468, 55, 'SIZE', '15');
INSERT INTO `jos_rsform_properties` VALUES (469, 55, 'REFRESHTEXT', 'Refresh');
INSERT INTO `jos_rsform_properties` VALUES (470, 55, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES (471, 55, 'SHOWREFRESH', 'NO');
INSERT INTO `jos_rsform_properties` VALUES (472, 55, 'FLOW', 'VERTICAL');
INSERT INTO `jos_rsform_properties` VALUES (473, 56, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES (474, 56, 'DEFAULTVALUE', '');
INSERT INTO `jos_rsform_properties` VALUES (475, 56, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES (476, 56, 'VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `jos_rsform_properties` VALUES (477, 56, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES (478, 56, 'VALIDATIONRULE', 'none');
INSERT INTO `jos_rsform_properties` VALUES (479, 56, 'MAXSIZE', '');
INSERT INTO `jos_rsform_properties` VALUES (480, 56, 'SIZE', '20');
INSERT INTO `jos_rsform_properties` VALUES (481, 56, 'REQUIRED', 'NO');
INSERT INTO `jos_rsform_properties` VALUES (482, 56, 'CAPTION', 'Position');
INSERT INTO `jos_rsform_properties` VALUES (483, 56, 'NAME', 'position');
INSERT INTO `jos_rsform_properties` VALUES (484, 57, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES (485, 57, 'DEFAULTVALUE', '');
INSERT INTO `jos_rsform_properties` VALUES (486, 57, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES (487, 57, 'VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `jos_rsform_properties` VALUES (488, 57, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES (489, 57, 'VALIDATIONRULE', 'none');
INSERT INTO `jos_rsform_properties` VALUES (490, 57, 'MAXSIZE', '');
INSERT INTO `jos_rsform_properties` VALUES (491, 57, 'SIZE', '20');
INSERT INTO `jos_rsform_properties` VALUES (492, 57, 'REQUIRED', 'YES');
INSERT INTO `jos_rsform_properties` VALUES (493, 57, 'CAPTION', 'Department');
INSERT INTO `jos_rsform_properties` VALUES (494, 57, 'NAME', 'department');
INSERT INTO `jos_rsform_properties` VALUES (495, 58, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES (496, 58, 'DEFAULTVALUE', '');
INSERT INTO `jos_rsform_properties` VALUES (497, 58, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES (498, 58, 'VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `jos_rsform_properties` VALUES (499, 58, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES (500, 58, 'VALIDATIONRULE', 'none');
INSERT INTO `jos_rsform_properties` VALUES (501, 58, 'MAXSIZE', '');
INSERT INTO `jos_rsform_properties` VALUES (502, 58, 'SIZE', '20');
INSERT INTO `jos_rsform_properties` VALUES (503, 58, 'REQUIRED', 'YES');
INSERT INTO `jos_rsform_properties` VALUES (504, 58, 'NAME', 'organization');
INSERT INTO `jos_rsform_properties` VALUES (505, 58, 'CAPTION', 'Name of the company / organization');
INSERT INTO `jos_rsform_properties` VALUES (506, 59, 'TEXT', '<b>Professional Information<b>');
INSERT INTO `jos_rsform_properties` VALUES (507, 59, 'NAME', 'academic');
INSERT INTO `jos_rsform_properties` VALUES (508, 60, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES (509, 60, 'DEFAULTVALUE', '');
INSERT INTO `jos_rsform_properties` VALUES (510, 60, 'VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `jos_rsform_properties` VALUES (511, 60, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES (512, 60, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES (513, 60, 'VALIDATIONRULE', 'none');
INSERT INTO `jos_rsform_properties` VALUES (514, 60, 'MAXSIZE', '');
INSERT INTO `jos_rsform_properties` VALUES (515, 60, 'SIZE', '40');
INSERT INTO `jos_rsform_properties` VALUES (516, 60, 'REQUIRED', 'NO');
INSERT INTO `jos_rsform_properties` VALUES (517, 60, 'CAPTION', 'Place and date of birth');
INSERT INTO `jos_rsform_properties` VALUES (518, 60, 'NAME', 'placeandbirth');
INSERT INTO `jos_rsform_properties` VALUES (519, 61, 'NAME', 'familyname');
INSERT INTO `jos_rsform_properties` VALUES (520, 61, 'CAPTION', 'Family Name');
INSERT INTO `jos_rsform_properties` VALUES (521, 61, 'REQUIRED', 'YES');
INSERT INTO `jos_rsform_properties` VALUES (522, 61, 'SIZE', '40');
INSERT INTO `jos_rsform_properties` VALUES (523, 61, 'MAXSIZE', '');
INSERT INTO `jos_rsform_properties` VALUES (524, 61, 'VALIDATIONRULE', 'none');
INSERT INTO `jos_rsform_properties` VALUES (525, 61, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES (526, 61, 'VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `jos_rsform_properties` VALUES (527, 61, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES (528, 61, 'DEFAULTVALUE', '');
INSERT INTO `jos_rsform_properties` VALUES (529, 61, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES (530, 62, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES (531, 62, 'DEFAULTVALUE', '');
INSERT INTO `jos_rsform_properties` VALUES (532, 62, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES (533, 62, 'VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `jos_rsform_properties` VALUES (534, 62, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES (535, 62, 'NAME', 'passport');
INSERT INTO `jos_rsform_properties` VALUES (536, 62, 'VALIDATIONRULE', 'none');
INSERT INTO `jos_rsform_properties` VALUES (537, 62, 'CAPTION', 'Passport Nr.');
INSERT INTO `jos_rsform_properties` VALUES (538, 62, 'REQUIRED', 'YES');
INSERT INTO `jos_rsform_properties` VALUES (539, 62, 'SIZE', '20');
INSERT INTO `jos_rsform_properties` VALUES (540, 62, 'MAXSIZE', '');
INSERT INTO `jos_rsform_properties` VALUES (541, 63, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES (542, 63, 'DEFAULTVALUE', '');
INSERT INTO `jos_rsform_properties` VALUES (543, 63, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES (544, 63, 'VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `jos_rsform_properties` VALUES (545, 63, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES (546, 63, 'VALIDATIONRULE', 'none');
INSERT INTO `jos_rsform_properties` VALUES (547, 63, 'MAXSIZE', '');
INSERT INTO `jos_rsform_properties` VALUES (548, 63, 'SIZE', '40');
INSERT INTO `jos_rsform_properties` VALUES (549, 63, 'REQUIRED', 'YES');
INSERT INTO `jos_rsform_properties` VALUES (550, 63, 'CAPTION', 'Name');
INSERT INTO `jos_rsform_properties` VALUES (551, 63, 'NAME', 'name');
INSERT INTO `jos_rsform_properties` VALUES (552, 64, 'TEXT', '<b>Personal Details</b>');
INSERT INTO `jos_rsform_properties` VALUES (553, 64, 'NAME', 'personal');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_rsform_submission_values`
-- 

CREATE TABLE `jos_rsform_submission_values` (
  `SubmissionValueId` int(11) NOT NULL auto_increment,
  `FormId` int(11) NOT NULL,
  `SubmissionId` int(11) NOT NULL default '0',
  `FieldName` text NOT NULL,
  `FieldValue` text NOT NULL,
  PRIMARY KEY  (`SubmissionValueId`),
  KEY `FormId` (`FormId`),
  KEY `SubmissionId` (`SubmissionId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1180 ;

-- 
-- Dumping data for table `jos_rsform_submission_values`
-- 

INSERT INTO `jos_rsform_submission_values` VALUES (511, 2, 31, 'email', 'patricia.zamora@uah.es');
INSERT INTO `jos_rsform_submission_values` VALUES (510, 2, 31, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (509, 2, 31, 'codigo_postal', '08193');
INSERT INTO `jos_rsform_submission_values` VALUES (508, 2, 31, 'ciudad', 'Bellaterra');
INSERT INTO `jos_rsform_submission_values` VALUES (507, 2, 31, 'direccion', 'Campus UAB Bellaterrra');
INSERT INTO `jos_rsform_submission_values` VALUES (506, 2, 31, 'institucion', 'ICMAB-CSIC');
INSERT INTO `jos_rsform_submission_values` VALUES (505, 2, 31, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (504, 2, 31, 'apellidos', 'Zamora Bonachela');
INSERT INTO `jos_rsform_submission_values` VALUES (503, 2, 31, 'nombre', 'Patricia');
INSERT INTO `jos_rsform_submission_values` VALUES (502, 2, 30, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (500, 2, 30, 'nif', '');
INSERT INTO `jos_rsform_submission_values` VALUES (501, 2, 30, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (499, 2, 30, 'telefono', '');
INSERT INTO `jos_rsform_submission_values` VALUES (498, 2, 30, 'email', 'vcouste@icmab.es');
INSERT INTO `jos_rsform_submission_values` VALUES (497, 2, 30, 'pais', 'rth');
INSERT INTO `jos_rsform_submission_values` VALUES (496, 2, 30, 'codigo_postal', 'rth');
INSERT INTO `jos_rsform_submission_values` VALUES (495, 2, 30, 'ciudad', 'trh');
INSERT INTO `jos_rsform_submission_values` VALUES (494, 2, 30, 'direccion', 'rth');
INSERT INTO `jos_rsform_submission_values` VALUES (493, 2, 30, 'institucion', 'th');
INSERT INTO `jos_rsform_submission_values` VALUES (492, 2, 30, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (491, 2, 30, 'apellidos', 'fgdg');
INSERT INTO `jos_rsform_submission_values` VALUES (490, 2, 30, 'nombre', 'prueba');
INSERT INTO `jos_rsform_submission_values` VALUES (489, 2, 29, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (488, 2, 29, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (487, 2, 29, 'nif', 'Y0030757c');
INSERT INTO `jos_rsform_submission_values` VALUES (486, 2, 29, 'telefono', '649723994');
INSERT INTO `jos_rsform_submission_values` VALUES (485, 2, 29, 'email', 'silvia.padron@uab.cat');
INSERT INTO `jos_rsform_submission_values` VALUES (484, 2, 29, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (483, 2, 29, 'codigo_postal', '08193');
INSERT INTO `jos_rsform_submission_values` VALUES (482, 2, 29, 'ciudad', 'Barcelona');
INSERT INTO `jos_rsform_submission_values` VALUES (481, 2, 29, 'direccion', 'Campus UAB - Cerdanyola del Vallès ');
INSERT INTO `jos_rsform_submission_values` VALUES (480, 2, 29, 'institucion', 'ETSE-UAB');
INSERT INTO `jos_rsform_submission_values` VALUES (479, 2, 29, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (478, 2, 29, 'apellidos', 'Padron Astorga');
INSERT INTO `jos_rsform_submission_values` VALUES (476, 2, 28, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (477, 2, 29, 'nombre', 'Silvia');
INSERT INTO `jos_rsform_submission_values` VALUES (475, 2, 28, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (474, 2, 28, 'nif', '47773646-R');
INSERT INTO `jos_rsform_submission_values` VALUES (473, 2, 28, 'telefono', '977081542');
INSERT INTO `jos_rsform_submission_values` VALUES (472, 2, 28, 'email', 'fxavier.rius-ruiz@urv.cat');
INSERT INTO `jos_rsform_submission_values` VALUES (471, 2, 28, 'pais', 'Espanya');
INSERT INTO `jos_rsform_submission_values` VALUES (470, 2, 28, 'codigo_postal', '43007');
INSERT INTO `jos_rsform_submission_values` VALUES (469, 2, 28, 'ciudad', 'Tarragona');
INSERT INTO `jos_rsform_submission_values` VALUES (468, 2, 28, 'direccion', 'C/ Marcel·lí Domingo s/n');
INSERT INTO `jos_rsform_submission_values` VALUES (467, 2, 28, 'institucion', 'Universitat Rovira i Virgili');
INSERT INTO `jos_rsform_submission_values` VALUES (466, 2, 28, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (465, 2, 28, 'apellidos', 'Rius Ruiz');
INSERT INTO `jos_rsform_submission_values` VALUES (462, 2, 27, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (463, 2, 27, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (464, 2, 28, 'nombre', 'F. Xavier');
INSERT INTO `jos_rsform_submission_values` VALUES (460, 2, 27, 'telefono', 'tj');
INSERT INTO `jos_rsform_submission_values` VALUES (461, 2, 27, 'nif', 'jer');
INSERT INTO `jos_rsform_submission_values` VALUES (459, 2, 27, 'email', 'vcouste@icmab.es');
INSERT INTO `jos_rsform_submission_values` VALUES (458, 2, 27, 'pais', 'hjhjv');
INSERT INTO `jos_rsform_submission_values` VALUES (457, 2, 27, 'codigo_postal', 'kyugyg');
INSERT INTO `jos_rsform_submission_values` VALUES (456, 2, 27, 'ciudad', 'yftyf');
INSERT INTO `jos_rsform_submission_values` VALUES (455, 2, 27, 'direccion', 'yukgyug');
INSERT INTO `jos_rsform_submission_values` VALUES (454, 2, 27, 'institucion', 'jhfgf');
INSERT INTO `jos_rsform_submission_values` VALUES (453, 2, 27, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (452, 2, 27, 'apellidos', 'vdfsdfg');
INSERT INTO `jos_rsform_submission_values` VALUES (451, 2, 27, 'nombre', 'vicky');
INSERT INTO `jos_rsform_submission_values` VALUES (450, 2, 26, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (449, 2, 26, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (448, 2, 26, 'nif', '46970261Y');
INSERT INTO `jos_rsform_submission_values` VALUES (447, 2, 26, 'telefono', '93 363 83 00 ext. 363');
INSERT INTO `jos_rsform_submission_values` VALUES (445, 2, 26, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (446, 2, 26, 'email', 'mfontnie@gmail.com');
INSERT INTO `jos_rsform_submission_values` VALUES (444, 2, 26, 'codigo_postal', '08036');
INSERT INTO `jos_rsform_submission_values` VALUES (443, 2, 26, 'ciudad', 'Barcelona');
INSERT INTO `jos_rsform_submission_values` VALUES (442, 2, 26, 'direccion', 'Rosselló, 161 6ª i 7ª planta ');
INSERT INTO `jos_rsform_submission_values` VALUES (441, 2, 26, 'institucion', 'Institut Investigacions Biomèdiques de Barcelona (CSIC)');
INSERT INTO `jos_rsform_submission_values` VALUES (440, 2, 26, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (439, 2, 26, 'apellidos', 'Font Nieves de la Vega');
INSERT INTO `jos_rsform_submission_values` VALUES (438, 2, 26, 'nombre', 'Míriam');
INSERT INTO `jos_rsform_submission_values` VALUES (437, 2, 25, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (436, 2, 25, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (433, 2, 25, 'email', 'apepiol@icmab.es');
INSERT INTO `jos_rsform_submission_values` VALUES (434, 2, 25, 'telefono', '935801953');
INSERT INTO `jos_rsform_submission_values` VALUES (435, 2, 25, 'nif', '53127518W');
INSERT INTO `jos_rsform_submission_values` VALUES (431, 2, 25, 'codigo_postal', '08193');
INSERT INTO `jos_rsform_submission_values` VALUES (432, 2, 25, 'pais', 'Espanya');
INSERT INTO `jos_rsform_submission_values` VALUES (430, 2, 25, 'ciudad', 'Bellaterra');
INSERT INTO `jos_rsform_submission_values` VALUES (429, 2, 25, 'direccion', 'Campus UAB s/n');
INSERT INTO `jos_rsform_submission_values` VALUES (428, 2, 25, 'institucion', 'ICMAB');
INSERT INTO `jos_rsform_submission_values` VALUES (427, 2, 25, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (426, 2, 25, 'apellidos', 'Pepiol Martí');
INSERT INTO `jos_rsform_submission_values` VALUES (425, 2, 25, 'nombre', 'Ariadna');
INSERT INTO `jos_rsform_submission_values` VALUES (424, 2, 24, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (423, 2, 24, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (422, 2, 24, 'nif', 'Y0704222E');
INSERT INTO `jos_rsform_submission_values` VALUES (421, 2, 24, 'telefono', '671939408');
INSERT INTO `jos_rsform_submission_values` VALUES (420, 2, 24, 'email', 'julioalonso.bastos@uab.cat');
INSERT INTO `jos_rsform_submission_values` VALUES (419, 2, 24, 'pais', 'ESPAÑA');
INSERT INTO `jos_rsform_submission_values` VALUES (418, 2, 24, 'codigo_postal', '08193');
INSERT INTO `jos_rsform_submission_values` VALUES (417, 2, 24, 'ciudad', 'BARCELONA');
INSERT INTO `jos_rsform_submission_values` VALUES (416, 2, 24, 'direccion', 'CAMPUS UAB, BELLATERRA');
INSERT INTO `jos_rsform_submission_values` VALUES (415, 2, 24, 'institucion', 'UNIVERSITAT AUTÒNOMA DE BARCEONA');
INSERT INTO `jos_rsform_submission_values` VALUES (414, 2, 24, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (413, 2, 24, 'apellidos', 'BASTOS ARRIETA');
INSERT INTO `jos_rsform_submission_values` VALUES (412, 2, 24, 'nombre', 'JULIO ');
INSERT INTO `jos_rsform_submission_values` VALUES (411, 2, 23, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (410, 2, 23, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (409, 2, 23, 'nif', '');
INSERT INTO `jos_rsform_submission_values` VALUES (408, 2, 23, 'telefono', '630327899');
INSERT INTO `jos_rsform_submission_values` VALUES (407, 2, 23, 'email', 'nuria.rovira@urv.cat');
INSERT INTO `jos_rsform_submission_values` VALUES (406, 2, 23, 'pais', 'ESPAÑA');
INSERT INTO `jos_rsform_submission_values` VALUES (405, 2, 23, 'codigo_postal', '43007');
INSERT INTO `jos_rsform_submission_values` VALUES (404, 2, 23, 'ciudad', 'TARRAGONA');
INSERT INTO `jos_rsform_submission_values` VALUES (403, 2, 23, 'direccion', 'AV. PAÏSOS CATALANS, 26');
INSERT INTO `jos_rsform_submission_values` VALUES (402, 2, 23, 'institucion', 'URV');
INSERT INTO `jos_rsform_submission_values` VALUES (401, 2, 23, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (400, 2, 23, 'apellidos', 'ROVIRA ASENJO');
INSERT INTO `jos_rsform_submission_values` VALUES (399, 2, 23, 'nombre', 'NURIA');
INSERT INTO `jos_rsform_submission_values` VALUES (398, 2, 22, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (397, 2, 22, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (396, 2, 22, 'nif', '46355758V');
INSERT INTO `jos_rsform_submission_values` VALUES (395, 2, 22, 'telefono', '935813556');
INSERT INTO `jos_rsform_submission_values` VALUES (394, 2, 22, 'email', 'Guillermo.Talavera@uab.es');
INSERT INTO `jos_rsform_submission_values` VALUES (393, 2, 22, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (392, 2, 22, 'codigo_postal', '08193');
INSERT INTO `jos_rsform_submission_values` VALUES (391, 2, 22, 'ciudad', 'Barcelona');
INSERT INTO `jos_rsform_submission_values` VALUES (390, 2, 22, 'direccion', 'Escola d''Enginyeria  - UAB');
INSERT INTO `jos_rsform_submission_values` VALUES (389, 2, 22, 'institucion', 'CEPHIS - UAB');
INSERT INTO `jos_rsform_submission_values` VALUES (388, 2, 22, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (387, 2, 22, 'apellidos', 'Talavera');
INSERT INTO `jos_rsform_submission_values` VALUES (386, 2, 22, 'nombre', 'Guillermo');
INSERT INTO `jos_rsform_submission_values` VALUES (385, 2, 21, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (384, 2, 21, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (383, 2, 21, 'nif', '');
INSERT INTO `jos_rsform_submission_values` VALUES (382, 2, 21, 'telefono', '');
INSERT INTO `jos_rsform_submission_values` VALUES (381, 2, 21, 'email', 'nsrnqi@iibb.csic.es');
INSERT INTO `jos_rsform_submission_values` VALUES (380, 2, 21, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (379, 2, 21, 'codigo_postal', '08036');
INSERT INTO `jos_rsform_submission_values` VALUES (378, 2, 21, 'ciudad', 'Barcelona');
INSERT INTO `jos_rsform_submission_values` VALUES (377, 2, 21, 'direccion', 'Rosselló 161 6ª planta');
INSERT INTO `jos_rsform_submission_values` VALUES (376, 2, 21, 'institucion', 'Instituto de Investigaciones Biomédicas de Barcelona');
INSERT INTO `jos_rsform_submission_values` VALUES (375, 2, 21, 'seminarios', 'Seminario III [29 de octubre]. “El talento y las competencias profesionales.”');
INSERT INTO `jos_rsform_submission_values` VALUES (374, 2, 21, 'apellidos', 'Santana Ramos');
INSERT INTO `jos_rsform_submission_values` VALUES (373, 2, 21, 'nombre', 'Noemi');
INSERT INTO `jos_rsform_submission_values` VALUES (372, 2, 20, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (371, 2, 20, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (370, 2, 20, 'nif', '43549566-D');
INSERT INTO `jos_rsform_submission_values` VALUES (369, 2, 20, 'telefono', '935801853 (260)');
INSERT INTO `jos_rsform_submission_values` VALUES (368, 2, 20, 'email', 'lmartin@icmab.es');
INSERT INTO `jos_rsform_submission_values` VALUES (367, 2, 20, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (366, 2, 20, 'codigo_postal', '08193');
INSERT INTO `jos_rsform_submission_values` VALUES (365, 2, 20, 'ciudad', 'Bellaterra (Cerdanyola del Vallès)');
INSERT INTO `jos_rsform_submission_values` VALUES (364, 2, 20, 'direccion', 'Campus UAB');
INSERT INTO `jos_rsform_submission_values` VALUES (363, 2, 20, 'institucion', 'Institut de Ciència de Materials de Barcelona (ICMAB-CSIC)');
INSERT INTO `jos_rsform_submission_values` VALUES (362, 2, 20, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (361, 2, 20, 'apellidos', 'MARTIN SANCHEZ');
INSERT INTO `jos_rsform_submission_values` VALUES (360, 2, 20, 'nombre', 'LAURA');
INSERT INTO `jos_rsform_submission_values` VALUES (359, 2, 19, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (358, 2, 19, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (356, 2, 19, 'telefono', '697404833');
INSERT INTO `jos_rsform_submission_values` VALUES (357, 2, 19, 'nif', '21774490e');
INSERT INTO `jos_rsform_submission_values` VALUES (355, 2, 19, 'email', 'izabel.alfany@gmail.com');
INSERT INTO `jos_rsform_submission_values` VALUES (354, 2, 19, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (353, 2, 19, 'codigo_postal', '08036');
INSERT INTO `jos_rsform_submission_values` VALUES (352, 2, 19, 'ciudad', 'Barcelona');
INSERT INTO `jos_rsform_submission_values` VALUES (351, 2, 19, 'direccion', 'C/ Rosselló 161, 7ª planta');
INSERT INTO `jos_rsform_submission_values` VALUES (350, 2, 19, 'institucion', 'IIBB - CSIC');
INSERT INTO `jos_rsform_submission_values` VALUES (348, 2, 19, 'apellidos', 'Alfany Fernandez');
INSERT INTO `jos_rsform_submission_values` VALUES (349, 2, 19, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (347, 2, 19, 'nombre', 'Izabel ');
INSERT INTO `jos_rsform_submission_values` VALUES (346, 2, 18, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (345, 2, 18, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (344, 2, 18, 'nif', '');
INSERT INTO `jos_rsform_submission_values` VALUES (343, 2, 18, 'telefono', '');
INSERT INTO `jos_rsform_submission_values` VALUES (342, 2, 18, 'email', 'albert.moreno@worldonline.fr');
INSERT INTO `jos_rsform_submission_values` VALUES (341, 2, 18, 'pais', 'Spain');
INSERT INTO `jos_rsform_submission_values` VALUES (340, 2, 18, 'codigo_postal', '08021');
INSERT INTO `jos_rsform_submission_values` VALUES (339, 2, 18, 'ciudad', 'Sabadell');
INSERT INTO `jos_rsform_submission_values` VALUES (338, 2, 18, 'direccion', 'Plaça Daniel');
INSERT INTO `jos_rsform_submission_values` VALUES (337, 2, 18, 'institucion', 'ICMAB-CSIC');
INSERT INTO `jos_rsform_submission_values` VALUES (336, 2, 18, 'seminarios', 'Seminario I [15 y 16 de septiembre]. “El Director de Innovación. Procesos de generación de nuevos proyectos.”');
INSERT INTO `jos_rsform_submission_values` VALUES (335, 2, 18, 'apellidos', 'Moreno');
INSERT INTO `jos_rsform_submission_values` VALUES (334, 2, 18, 'nombre', 'Albert');
INSERT INTO `jos_rsform_submission_values` VALUES (512, 2, 31, 'telefono', '');
INSERT INTO `jos_rsform_submission_values` VALUES (513, 2, 31, 'nif', '');
INSERT INTO `jos_rsform_submission_values` VALUES (514, 2, 31, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (515, 2, 31, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (516, 2, 32, 'nombre', 'Radu Adrian');
INSERT INTO `jos_rsform_submission_values` VALUES (517, 2, 32, 'apellidos', 'Popescu');
INSERT INTO `jos_rsform_submission_values` VALUES (518, 2, 32, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (519, 2, 32, 'institucion', 'ICMAB-CSIC');
INSERT INTO `jos_rsform_submission_values` VALUES (520, 2, 32, 'direccion', 'Campus UAB, Bellaterra');
INSERT INTO `jos_rsform_submission_values` VALUES (521, 2, 32, 'ciudad', 'Barcelona');
INSERT INTO `jos_rsform_submission_values` VALUES (522, 2, 32, 'codigo_postal', '08193');
INSERT INTO `jos_rsform_submission_values` VALUES (523, 2, 32, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (524, 2, 32, 'email', 'arpopescu@icmab.es');
INSERT INTO `jos_rsform_submission_values` VALUES (525, 2, 32, 'telefono', '935801853 (ext. 255)');
INSERT INTO `jos_rsform_submission_values` VALUES (526, 2, 32, 'nif', 'X9148810P');
INSERT INTO `jos_rsform_submission_values` VALUES (527, 2, 32, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (528, 2, 32, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (529, 2, 33, 'nombre', 'Marius Valentin');
INSERT INTO `jos_rsform_submission_values` VALUES (530, 2, 33, 'apellidos', 'Lupu');
INSERT INTO `jos_rsform_submission_values` VALUES (531, 2, 33, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (532, 2, 33, 'institucion', 'ICMAB');
INSERT INTO `jos_rsform_submission_values` VALUES (533, 2, 33, 'direccion', 'Calle Diagonal, 10, 8-3a');
INSERT INTO `jos_rsform_submission_values` VALUES (534, 2, 33, 'ciudad', 'Cerdanyola del Valles');
INSERT INTO `jos_rsform_submission_values` VALUES (535, 2, 33, 'codigo_postal', '08290');
INSERT INTO `jos_rsform_submission_values` VALUES (536, 2, 33, 'pais', 'Spain');
INSERT INTO `jos_rsform_submission_values` VALUES (537, 2, 33, 'email', 'marlupu2003@yahoo.com');
INSERT INTO `jos_rsform_submission_values` VALUES (538, 2, 33, 'telefono', '663413712');
INSERT INTO `jos_rsform_submission_values` VALUES (539, 2, 33, 'nif', 'Y0316404F');
INSERT INTO `jos_rsform_submission_values` VALUES (540, 2, 33, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (541, 2, 33, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (542, 2, 34, 'nombre', 'Ana Daniela');
INSERT INTO `jos_rsform_submission_values` VALUES (543, 2, 34, 'apellidos', 'Musteti');
INSERT INTO `jos_rsform_submission_values` VALUES (544, 2, 34, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (545, 2, 34, 'institucion', 'ICMAB');
INSERT INTO `jos_rsform_submission_values` VALUES (546, 2, 34, 'direccion', 'Calle Diagonal, 10, 8-3a');
INSERT INTO `jos_rsform_submission_values` VALUES (547, 2, 34, 'ciudad', 'Cerdanyola del Valles');
INSERT INTO `jos_rsform_submission_values` VALUES (548, 2, 34, 'codigo_postal', '08290');
INSERT INTO `jos_rsform_submission_values` VALUES (549, 2, 34, 'pais', 'Spain');
INSERT INTO `jos_rsform_submission_values` VALUES (550, 2, 34, 'email', 'dana181084@yahoo.com');
INSERT INTO `jos_rsform_submission_values` VALUES (551, 2, 34, 'telefono', '663413712');
INSERT INTO `jos_rsform_submission_values` VALUES (552, 2, 34, 'nif', 'Y0316440C');
INSERT INTO `jos_rsform_submission_values` VALUES (553, 2, 34, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (554, 2, 34, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (555, 2, 35, 'nombre', 'DAVID');
INSERT INTO `jos_rsform_submission_values` VALUES (556, 2, 35, 'apellidos', 'OLID BRITOS');
INSERT INTO `jos_rsform_submission_values` VALUES (557, 2, 35, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (558, 2, 35, 'institucion', 'ICMAB-CSIC');
INSERT INTO `jos_rsform_submission_values` VALUES (559, 2, 35, 'direccion', 'CAMPUS UAB S/N');
INSERT INTO `jos_rsform_submission_values` VALUES (560, 2, 35, 'ciudad', 'BELLATERRA');
INSERT INTO `jos_rsform_submission_values` VALUES (561, 2, 35, 'codigo_postal', '08193');
INSERT INTO `jos_rsform_submission_values` VALUES (562, 2, 35, 'pais', 'ESPANYA');
INSERT INTO `jos_rsform_submission_values` VALUES (563, 2, 35, 'email', 'dolid@icmab.es');
INSERT INTO `jos_rsform_submission_values` VALUES (564, 2, 35, 'telefono', '692687420');
INSERT INTO `jos_rsform_submission_values` VALUES (565, 2, 35, 'nif', '40452070S');
INSERT INTO `jos_rsform_submission_values` VALUES (566, 2, 35, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (567, 2, 35, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (568, 2, 36, 'nombre', 'Albert');
INSERT INTO `jos_rsform_submission_values` VALUES (569, 2, 36, 'apellidos', 'Ferrer Ugalde');
INSERT INTO `jos_rsform_submission_values` VALUES (570, 2, 36, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (571, 2, 36, 'institucion', 'ICMAB (Teixidor)');
INSERT INTO `jos_rsform_submission_values` VALUES (572, 2, 36, 'direccion', 'Campus UAB s/n');
INSERT INTO `jos_rsform_submission_values` VALUES (573, 2, 36, 'ciudad', 'Bellaterra');
INSERT INTO `jos_rsform_submission_values` VALUES (574, 2, 36, 'codigo_postal', '08193');
INSERT INTO `jos_rsform_submission_values` VALUES (575, 2, 36, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (576, 2, 36, 'email', 'aferrer@icmab.es');
INSERT INTO `jos_rsform_submission_values` VALUES (577, 2, 36, 'telefono', '');
INSERT INTO `jos_rsform_submission_values` VALUES (578, 2, 36, 'nif', '');
INSERT INTO `jos_rsform_submission_values` VALUES (579, 2, 36, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (580, 2, 36, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (581, 2, 37, 'nombre', 'Ana Maria');
INSERT INTO `jos_rsform_submission_values` VALUES (582, 2, 37, 'apellidos', 'Cioran');
INSERT INTO `jos_rsform_submission_values` VALUES (583, 2, 37, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (584, 2, 37, 'institucion', 'ICMAB (Teixidor)');
INSERT INTO `jos_rsform_submission_values` VALUES (585, 2, 37, 'direccion', 'Campus UAB s/n');
INSERT INTO `jos_rsform_submission_values` VALUES (586, 2, 37, 'ciudad', 'Bellaterra');
INSERT INTO `jos_rsform_submission_values` VALUES (587, 2, 37, 'codigo_postal', '08193');
INSERT INTO `jos_rsform_submission_values` VALUES (588, 2, 37, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (589, 2, 37, 'email', 'acioran@icmab.es');
INSERT INTO `jos_rsform_submission_values` VALUES (590, 2, 37, 'telefono', '');
INSERT INTO `jos_rsform_submission_values` VALUES (591, 2, 37, 'nif', '');
INSERT INTO `jos_rsform_submission_values` VALUES (592, 2, 37, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (593, 2, 37, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (594, 2, 38, 'nombre', 'Arantzazu');
INSERT INTO `jos_rsform_submission_values` VALUES (595, 2, 38, 'apellidos', 'Gonzalez Campo');
INSERT INTO `jos_rsform_submission_values` VALUES (596, 2, 38, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (597, 2, 38, 'institucion', 'ICMAB (Teixidor)');
INSERT INTO `jos_rsform_submission_values` VALUES (598, 2, 38, 'direccion', 'Campus de la UAB');
INSERT INTO `jos_rsform_submission_values` VALUES (599, 2, 38, 'ciudad', 'Bellaterra');
INSERT INTO `jos_rsform_submission_values` VALUES (600, 2, 38, 'codigo_postal', '08193');
INSERT INTO `jos_rsform_submission_values` VALUES (601, 2, 38, 'pais', 'Espanya');
INSERT INTO `jos_rsform_submission_values` VALUES (602, 2, 38, 'email', 'agonzalez@icmab.es');
INSERT INTO `jos_rsform_submission_values` VALUES (603, 2, 38, 'telefono', '');
INSERT INTO `jos_rsform_submission_values` VALUES (604, 2, 38, 'nif', '');
INSERT INTO `jos_rsform_submission_values` VALUES (605, 2, 38, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (606, 2, 38, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (607, 2, 39, 'nombre', 'Nelson René');
INSERT INTO `jos_rsform_submission_values` VALUES (608, 2, 39, 'apellidos', 'García Polanco');
INSERT INTO `jos_rsform_submission_values` VALUES (609, 2, 39, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (610, 2, 39, 'institucion', 'LITEC-Universidad de Zaragoza');
INSERT INTO `jos_rsform_submission_values` VALUES (611, 2, 39, 'direccion', 'C/ María de Luna, 10.');
INSERT INTO `jos_rsform_submission_values` VALUES (612, 2, 39, 'ciudad', 'Zaragoza');
INSERT INTO `jos_rsform_submission_values` VALUES (613, 2, 39, 'codigo_postal', '50018');
INSERT INTO `jos_rsform_submission_values` VALUES (614, 2, 39, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (615, 2, 39, 'email', 'nelson@unizar.es');
INSERT INTO `jos_rsform_submission_values` VALUES (616, 2, 39, 'telefono', '669995204');
INSERT INTO `jos_rsform_submission_values` VALUES (617, 2, 39, 'nif', 'x8120378k');
INSERT INTO `jos_rsform_submission_values` VALUES (618, 2, 39, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (619, 2, 39, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (620, 2, 40, 'nombre', 'Joan');
INSERT INTO `jos_rsform_submission_values` VALUES (621, 2, 40, 'apellidos', 'Gemio Valero');
INSERT INTO `jos_rsform_submission_values` VALUES (622, 2, 40, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (623, 2, 40, 'institucion', 'Universidad Autonoma de Barcelona');
INSERT INTO `jos_rsform_submission_values` VALUES (624, 2, 40, 'direccion', 'QC-3002, ETSE, Edificio Q, Campus UAB');
INSERT INTO `jos_rsform_submission_values` VALUES (625, 2, 40, 'ciudad', 'Bellaterra');
INSERT INTO `jos_rsform_submission_values` VALUES (626, 2, 40, 'codigo_postal', '08193');
INSERT INTO `jos_rsform_submission_values` VALUES (627, 2, 40, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (628, 2, 40, 'email', 'xanete@gmail.com');
INSERT INTO `jos_rsform_submission_values` VALUES (629, 2, 40, 'telefono', '639440820');
INSERT INTO `jos_rsform_submission_values` VALUES (630, 2, 40, 'nif', '');
INSERT INTO `jos_rsform_submission_values` VALUES (631, 2, 40, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (632, 2, 40, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (633, 2, 41, 'nombre', 'Mariona');
INSERT INTO `jos_rsform_submission_values` VALUES (634, 2, 41, 'apellidos', 'Garcia de Palau Galí');
INSERT INTO `jos_rsform_submission_values` VALUES (635, 2, 41, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (636, 2, 41, 'institucion', 'ICMAB');
INSERT INTO `jos_rsform_submission_values` VALUES (637, 2, 41, 'direccion', 'Campus UAB, 08193 Bellaterra');
INSERT INTO `jos_rsform_submission_values` VALUES (638, 2, 41, 'ciudad', 'Bellaterra');
INSERT INTO `jos_rsform_submission_values` VALUES (639, 2, 41, 'codigo_postal', '08193');
INSERT INTO `jos_rsform_submission_values` VALUES (640, 2, 41, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (641, 2, 41, 'email', 'mdepalau@icmab.es');
INSERT INTO `jos_rsform_submission_values` VALUES (642, 2, 41, 'telefono', '');
INSERT INTO `jos_rsform_submission_values` VALUES (643, 2, 41, 'nif', '');
INSERT INTO `jos_rsform_submission_values` VALUES (644, 2, 41, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (645, 2, 41, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (646, 2, 42, 'nombre', 'Roxana');
INSERT INTO `jos_rsform_submission_values` VALUES (647, 2, 42, 'apellidos', 'Vlad');
INSERT INTO `jos_rsform_submission_values` VALUES (648, 2, 42, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (649, 2, 42, 'institucion', 'ICMAB-CSIC');
INSERT INTO `jos_rsform_submission_values` VALUES (650, 2, 42, 'direccion', 'Campus UAB, 08193, Bellaterra');
INSERT INTO `jos_rsform_submission_values` VALUES (651, 2, 42, 'ciudad', 'Bellaterra');
INSERT INTO `jos_rsform_submission_values` VALUES (652, 2, 42, 'codigo_postal', '08193');
INSERT INTO `jos_rsform_submission_values` VALUES (653, 2, 42, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (654, 2, 42, 'email', 'vrvlad@icmab.es');
INSERT INTO `jos_rsform_submission_values` VALUES (655, 2, 42, 'telefono', '');
INSERT INTO `jos_rsform_submission_values` VALUES (656, 2, 42, 'nif', '');
INSERT INTO `jos_rsform_submission_values` VALUES (657, 2, 42, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (658, 2, 42, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (659, 2, 43, 'nombre', 'fernando');
INSERT INTO `jos_rsform_submission_values` VALUES (660, 2, 43, 'apellidos', 'martinez julian');
INSERT INTO `jos_rsform_submission_values` VALUES (661, 2, 43, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (662, 2, 43, 'institucion', 'ICMAB');
INSERT INTO `jos_rsform_submission_values` VALUES (663, 2, 43, 'direccion', 'campus UAB');
INSERT INTO `jos_rsform_submission_values` VALUES (664, 2, 43, 'ciudad', 'bellaterra');
INSERT INTO `jos_rsform_submission_values` VALUES (665, 2, 43, 'codigo_postal', '08193');
INSERT INTO `jos_rsform_submission_values` VALUES (666, 2, 43, 'pais', 'españa');
INSERT INTO `jos_rsform_submission_values` VALUES (667, 2, 43, 'email', 'fmartinez@icmab.es');
INSERT INTO `jos_rsform_submission_values` VALUES (668, 2, 43, 'telefono', '93501853');
INSERT INTO `jos_rsform_submission_values` VALUES (669, 2, 43, 'nif', '74683316Q');
INSERT INTO `jos_rsform_submission_values` VALUES (670, 2, 43, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (671, 2, 43, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (672, 2, 44, 'nombre', 'Xavier');
INSERT INTO `jos_rsform_submission_values` VALUES (673, 2, 44, 'apellidos', 'Palmer Paricio');
INSERT INTO `jos_rsform_submission_values` VALUES (674, 2, 44, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (675, 2, 44, 'institucion', 'ICMAB');
INSERT INTO `jos_rsform_submission_values` VALUES (676, 2, 44, 'direccion', 'Campus de la UAB');
INSERT INTO `jos_rsform_submission_values` VALUES (677, 2, 44, 'ciudad', 'Bellaterra');
INSERT INTO `jos_rsform_submission_values` VALUES (678, 2, 44, 'codigo_postal', '08193');
INSERT INTO `jos_rsform_submission_values` VALUES (679, 2, 44, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (680, 2, 44, 'email', 'xpalmer@icmab.es');
INSERT INTO `jos_rsform_submission_values` VALUES (681, 2, 44, 'telefono', '935801853');
INSERT INTO `jos_rsform_submission_values` VALUES (682, 2, 44, 'nif', '36577366y');
INSERT INTO `jos_rsform_submission_values` VALUES (683, 2, 44, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (684, 2, 44, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (685, 2, 45, 'nombre', 'Elisa ');
INSERT INTO `jos_rsform_submission_values` VALUES (686, 2, 45, 'apellidos', 'Elizondo Saez de Vicuña');
INSERT INTO `jos_rsform_submission_values` VALUES (687, 2, 45, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (688, 2, 45, 'institucion', 'ICMAB');
INSERT INTO `jos_rsform_submission_values` VALUES (689, 2, 45, 'direccion', 'Campus UAB ');
INSERT INTO `jos_rsform_submission_values` VALUES (690, 2, 45, 'ciudad', 'Bellaterra');
INSERT INTO `jos_rsform_submission_values` VALUES (691, 2, 45, 'codigo_postal', '08913');
INSERT INTO `jos_rsform_submission_values` VALUES (692, 2, 45, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (693, 2, 45, 'email', 'eelizondo@icmab.es');
INSERT INTO `jos_rsform_submission_values` VALUES (694, 2, 45, 'telefono', '653172093');
INSERT INTO `jos_rsform_submission_values` VALUES (695, 2, 45, 'nif', '72738088J');
INSERT INTO `jos_rsform_submission_values` VALUES (696, 2, 45, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (697, 2, 45, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (698, 2, 46, 'nombre', 'César');
INSERT INTO `jos_rsform_submission_values` VALUES (699, 2, 46, 'apellidos', 'Díez Gil');
INSERT INTO `jos_rsform_submission_values` VALUES (700, 2, 46, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (701, 2, 46, 'institucion', 'ICMAB');
INSERT INTO `jos_rsform_submission_values` VALUES (702, 2, 46, 'direccion', 'Campus UAB ');
INSERT INTO `jos_rsform_submission_values` VALUES (703, 2, 46, 'ciudad', 'Bellaterra');
INSERT INTO `jos_rsform_submission_values` VALUES (704, 2, 46, 'codigo_postal', '08913');
INSERT INTO `jos_rsform_submission_values` VALUES (705, 2, 46, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (706, 2, 46, 'email', 'cdiez@icmab.es');
INSERT INTO `jos_rsform_submission_values` VALUES (707, 2, 46, 'telefono', '653172093');
INSERT INTO `jos_rsform_submission_values` VALUES (708, 2, 46, 'nif', '72977961L');
INSERT INTO `jos_rsform_submission_values` VALUES (709, 2, 46, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (710, 2, 46, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (711, 2, 47, 'nombre', 'Patricia');
INSERT INTO `jos_rsform_submission_values` VALUES (712, 2, 47, 'apellidos', 'Abellan Baeza');
INSERT INTO `jos_rsform_submission_values` VALUES (713, 2, 47, 'seminarios', 'Seminario I [15 y 16 de septiembre]. “El Director de Innovación. Procesos de generación de nuevos proyectos.”');
INSERT INTO `jos_rsform_submission_values` VALUES (714, 2, 47, 'institucion', 'ICMAB-CSIC');
INSERT INTO `jos_rsform_submission_values` VALUES (715, 2, 47, 'direccion', 'Campus UAB');
INSERT INTO `jos_rsform_submission_values` VALUES (716, 2, 47, 'ciudad', 'Bellaterra');
INSERT INTO `jos_rsform_submission_values` VALUES (717, 2, 47, 'codigo_postal', '08193');
INSERT INTO `jos_rsform_submission_values` VALUES (718, 2, 47, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (719, 2, 47, 'email', 'pabellan@icmab.es');
INSERT INTO `jos_rsform_submission_values` VALUES (720, 2, 47, 'telefono', '676768873');
INSERT INTO `jos_rsform_submission_values` VALUES (721, 2, 47, 'nif', '48423744G');
INSERT INTO `jos_rsform_submission_values` VALUES (722, 2, 47, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (723, 2, 47, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (724, 2, 48, 'nombre', 'Patricia');
INSERT INTO `jos_rsform_submission_values` VALUES (725, 2, 48, 'apellidos', 'Abellan Baeza');
INSERT INTO `jos_rsform_submission_values` VALUES (726, 2, 48, 'seminarios', 'Seminario III [29 de octubre]. “El talento y las competencias profesionales.”');
INSERT INTO `jos_rsform_submission_values` VALUES (727, 2, 48, 'institucion', 'ICMAB-CSIC');
INSERT INTO `jos_rsform_submission_values` VALUES (728, 2, 48, 'direccion', 'Campus UAB');
INSERT INTO `jos_rsform_submission_values` VALUES (729, 2, 48, 'ciudad', 'Bellaterra');
INSERT INTO `jos_rsform_submission_values` VALUES (730, 2, 48, 'codigo_postal', '08193');
INSERT INTO `jos_rsform_submission_values` VALUES (731, 2, 48, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (732, 2, 48, 'email', 'pabellan@icmab.es');
INSERT INTO `jos_rsform_submission_values` VALUES (733, 2, 48, 'telefono', '676768873');
INSERT INTO `jos_rsform_submission_values` VALUES (734, 2, 48, 'nif', '48423744G');
INSERT INTO `jos_rsform_submission_values` VALUES (735, 2, 48, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (736, 2, 48, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (737, 2, 49, 'nombre', 'Elena ');
INSERT INTO `jos_rsform_submission_values` VALUES (738, 2, 49, 'apellidos', 'Taboada Cabellos');
INSERT INTO `jos_rsform_submission_values` VALUES (739, 2, 49, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (740, 2, 49, 'institucion', 'ICMAB');
INSERT INTO `jos_rsform_submission_values` VALUES (741, 2, 49, 'direccion', 'Campus UAB');
INSERT INTO `jos_rsform_submission_values` VALUES (742, 2, 49, 'ciudad', 'Bellaterra');
INSERT INTO `jos_rsform_submission_values` VALUES (743, 2, 49, 'codigo_postal', '08193');
INSERT INTO `jos_rsform_submission_values` VALUES (744, 2, 49, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (745, 2, 49, 'email', 'etaboada@icmab.es');
INSERT INTO `jos_rsform_submission_values` VALUES (746, 2, 49, 'telefono', '');
INSERT INTO `jos_rsform_submission_values` VALUES (747, 2, 49, 'nif', '');
INSERT INTO `jos_rsform_submission_values` VALUES (748, 2, 49, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (749, 2, 49, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (750, 2, 50, 'nombre', 'AMADEU');
INSERT INTO `jos_rsform_submission_values` VALUES (751, 2, 50, 'apellidos', 'CONCUSTELL FARGAS');
INSERT INTO `jos_rsform_submission_values` VALUES (752, 2, 50, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (753, 2, 50, 'institucion', 'LA FARGA LACAMBRA SAU');
INSERT INTO `jos_rsform_submission_values` VALUES (754, 2, 50, 'direccion', 'ctra C17 km 73,5');
INSERT INTO `jos_rsform_submission_values` VALUES (755, 2, 50, 'ciudad', 'LES MASIES DE VOLTREGÀ');
INSERT INTO `jos_rsform_submission_values` VALUES (756, 2, 50, 'codigo_postal', '08508');
INSERT INTO `jos_rsform_submission_values` VALUES (757, 2, 50, 'pais', 'ESPANYA');
INSERT INTO `jos_rsform_submission_values` VALUES (758, 2, 50, 'email', 'amadeu.conscustell@lfg.es');
INSERT INTO `jos_rsform_submission_values` VALUES (759, 2, 50, 'telefono', '93 859 42 94');
INSERT INTO `jos_rsform_submission_values` VALUES (760, 2, 50, 'nif', 'A08661647');
INSERT INTO `jos_rsform_submission_values` VALUES (761, 2, 50, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (762, 2, 50, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (763, 2, 51, 'nombre', 'Mª DEL MAR');
INSERT INTO `jos_rsform_submission_values` VALUES (764, 2, 51, 'apellidos', 'TRISTANY SOLER');
INSERT INTO `jos_rsform_submission_values` VALUES (765, 2, 51, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (766, 2, 51, 'institucion', 'LA FARGA LACAMBRA SAU');
INSERT INTO `jos_rsform_submission_values` VALUES (767, 2, 51, 'direccion', 'ctra C17 km 73,5');
INSERT INTO `jos_rsform_submission_values` VALUES (768, 2, 51, 'ciudad', 'LES MASIES DE VOLTREGA');
INSERT INTO `jos_rsform_submission_values` VALUES (769, 2, 51, 'codigo_postal', '08508');
INSERT INTO `jos_rsform_submission_values` VALUES (770, 2, 51, 'pais', 'ESPANYA');
INSERT INTO `jos_rsform_submission_values` VALUES (771, 2, 51, 'email', 'mar.tristany@lfg.es');
INSERT INTO `jos_rsform_submission_values` VALUES (772, 2, 51, 'telefono', '93 859 42 94');
INSERT INTO `jos_rsform_submission_values` VALUES (773, 2, 51, 'nif', 'A08661647');
INSERT INTO `jos_rsform_submission_values` VALUES (774, 2, 51, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (775, 2, 51, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (776, 2, 52, 'nombre', 'Jone');
INSERT INTO `jos_rsform_submission_values` VALUES (777, 2, 52, 'apellidos', 'Zabaleta Llorens');
INSERT INTO `jos_rsform_submission_values` VALUES (778, 2, 52, 'seminarios', 'Seminario III [29 de octubre]. “El talento y las competencias profesionales.”');
INSERT INTO `jos_rsform_submission_values` VALUES (779, 2, 52, 'institucion', 'ICMAB');
INSERT INTO `jos_rsform_submission_values` VALUES (780, 2, 52, 'direccion', 'Campus UAB ');
INSERT INTO `jos_rsform_submission_values` VALUES (781, 2, 52, 'ciudad', 'Bellaterra');
INSERT INTO `jos_rsform_submission_values` VALUES (782, 2, 52, 'codigo_postal', '08193');
INSERT INTO `jos_rsform_submission_values` VALUES (783, 2, 52, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (784, 2, 52, 'email', 'jzabaleta@icmab.es');
INSERT INTO `jos_rsform_submission_values` VALUES (785, 2, 52, 'telefono', '');
INSERT INTO `jos_rsform_submission_values` VALUES (786, 2, 52, 'nif', '');
INSERT INTO `jos_rsform_submission_values` VALUES (787, 2, 52, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (788, 2, 52, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (789, 2, 53, 'nombre', 'Malena');
INSERT INTO `jos_rsform_submission_values` VALUES (790, 2, 53, 'apellidos', 'Oliveros');
INSERT INTO `jos_rsform_submission_values` VALUES (791, 2, 53, 'seminarios', 'Todos');
INSERT INTO `jos_rsform_submission_values` VALUES (792, 2, 53, 'institucion', 'ICMAB');
INSERT INTO `jos_rsform_submission_values` VALUES (793, 2, 53, 'direccion', 'Campus de la UAB ');
INSERT INTO `jos_rsform_submission_values` VALUES (794, 2, 53, 'ciudad', 'Bellaterra');
INSERT INTO `jos_rsform_submission_values` VALUES (795, 2, 53, 'codigo_postal', '08193');
INSERT INTO `jos_rsform_submission_values` VALUES (796, 2, 53, 'pais', 'Spain');
INSERT INTO `jos_rsform_submission_values` VALUES (797, 2, 53, 'email', 'moliveros@icmab.es');
INSERT INTO `jos_rsform_submission_values` VALUES (798, 2, 53, 'telefono', ' 34 935 801 853 (ext 253)');
INSERT INTO `jos_rsform_submission_values` VALUES (799, 2, 53, 'nif', 'x8440827B');
INSERT INTO `jos_rsform_submission_values` VALUES (800, 2, 53, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (801, 2, 53, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (802, 2, 54, 'nombre', 'Dominique');
INSERT INTO `jos_rsform_submission_values` VALUES (803, 2, 54, 'apellidos', 'Monferrer Ventura');
INSERT INTO `jos_rsform_submission_values` VALUES (804, 2, 54, 'seminarios', 'Seminario I [15 y 16 de septiembre]. “El Director de Innovación. Procesos de generación de nuevos proyectos.”');
INSERT INTO `jos_rsform_submission_values` VALUES (805, 2, 54, 'institucion', 'particular');
INSERT INTO `jos_rsform_submission_values` VALUES (806, 2, 54, 'direccion', 'c/Samalús nº3 ');
INSERT INTO `jos_rsform_submission_values` VALUES (807, 2, 54, 'ciudad', 'La Garriga');
INSERT INTO `jos_rsform_submission_values` VALUES (808, 2, 54, 'codigo_postal', '08530');
INSERT INTO `jos_rsform_submission_values` VALUES (809, 2, 54, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (810, 2, 54, 'email', 'micmique@gmail.com');
INSERT INTO `jos_rsform_submission_values` VALUES (811, 2, 54, 'telefono', '690380141');
INSERT INTO `jos_rsform_submission_values` VALUES (812, 2, 54, 'nif', '47647611Y');
INSERT INTO `jos_rsform_submission_values` VALUES (813, 2, 54, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (814, 2, 54, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (815, 2, 55, 'nombre', 'Olga');
INSERT INTO `jos_rsform_submission_values` VALUES (816, 2, 55, 'apellidos', 'Sans Copé');
INSERT INTO `jos_rsform_submission_values` VALUES (817, 2, 55, 'seminarios', 'Seminario II [21 de octubre]. “La Innovación y el científico”');
INSERT INTO `jos_rsform_submission_values` VALUES (818, 2, 55, 'institucion', 'La Salle-Universitat Ramon Llull');
INSERT INTO `jos_rsform_submission_values` VALUES (819, 2, 55, 'direccion', 'C/St. Joan de La Salle');
INSERT INTO `jos_rsform_submission_values` VALUES (820, 2, 55, 'ciudad', 'Barcelona');
INSERT INTO `jos_rsform_submission_values` VALUES (821, 2, 55, 'codigo_postal', '08022');
INSERT INTO `jos_rsform_submission_values` VALUES (822, 2, 55, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (823, 2, 55, 'email', 'osans@salle.url.edu');
INSERT INTO `jos_rsform_submission_values` VALUES (824, 2, 55, 'telefono', '');
INSERT INTO `jos_rsform_submission_values` VALUES (825, 2, 55, 'nif', '');
INSERT INTO `jos_rsform_submission_values` VALUES (826, 2, 55, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (827, 2, 55, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (828, 2, 56, 'nombre', 'Olga');
INSERT INTO `jos_rsform_submission_values` VALUES (829, 2, 56, 'apellidos', 'Sans Copé');
INSERT INTO `jos_rsform_submission_values` VALUES (830, 2, 56, 'seminarios', 'Seminario III [29 de octubre]. “El talento y las competencias profesionales.”');
INSERT INTO `jos_rsform_submission_values` VALUES (831, 2, 56, 'institucion', 'La Salle-Universitat Ramon Llull');
INSERT INTO `jos_rsform_submission_values` VALUES (832, 2, 56, 'direccion', 'C/St. Joan de La Salle');
INSERT INTO `jos_rsform_submission_values` VALUES (833, 2, 56, 'ciudad', 'Barcelona');
INSERT INTO `jos_rsform_submission_values` VALUES (834, 2, 56, 'codigo_postal', '08022');
INSERT INTO `jos_rsform_submission_values` VALUES (835, 2, 56, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (836, 2, 56, 'email', 'osans@salle.url.edu');
INSERT INTO `jos_rsform_submission_values` VALUES (837, 2, 56, 'telefono', '');
INSERT INTO `jos_rsform_submission_values` VALUES (838, 2, 56, 'nif', '');
INSERT INTO `jos_rsform_submission_values` VALUES (839, 2, 56, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (840, 2, 56, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (841, 2, 57, 'nombre', 'Olga');
INSERT INTO `jos_rsform_submission_values` VALUES (842, 2, 57, 'apellidos', 'Sans Copé');
INSERT INTO `jos_rsform_submission_values` VALUES (843, 2, 57, 'seminarios', 'Seminario IV [11 de noviembre] “Valorización de ideas y resultados de I+D.”');
INSERT INTO `jos_rsform_submission_values` VALUES (844, 2, 57, 'institucion', 'La Salle-Universitat Ramon Llull');
INSERT INTO `jos_rsform_submission_values` VALUES (845, 2, 57, 'direccion', 'C/St. Joan de La Salle');
INSERT INTO `jos_rsform_submission_values` VALUES (846, 2, 57, 'ciudad', 'Barcelona');
INSERT INTO `jos_rsform_submission_values` VALUES (847, 2, 57, 'codigo_postal', '08022');
INSERT INTO `jos_rsform_submission_values` VALUES (848, 2, 57, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (849, 2, 57, 'email', 'osans@salle.url.edu');
INSERT INTO `jos_rsform_submission_values` VALUES (850, 2, 57, 'telefono', '');
INSERT INTO `jos_rsform_submission_values` VALUES (851, 2, 57, 'nif', '');
INSERT INTO `jos_rsform_submission_values` VALUES (852, 2, 57, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (853, 2, 57, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (854, 2, 58, 'nombre', 'olga');
INSERT INTO `jos_rsform_submission_values` VALUES (855, 2, 58, 'apellidos', 'sans copé');
INSERT INTO `jos_rsform_submission_values` VALUES (856, 2, 58, 'seminarios', 'Seminario III [29 de octubre]. “El talento y las competencias profesionales.”');
INSERT INTO `jos_rsform_submission_values` VALUES (857, 2, 58, 'institucion', 'La Salle-Universitat Ramon Llull');
INSERT INTO `jos_rsform_submission_values` VALUES (858, 2, 58, 'direccion', 'C/St. Joan de la Salle');
INSERT INTO `jos_rsform_submission_values` VALUES (859, 2, 58, 'ciudad', 'Barcelona');
INSERT INTO `jos_rsform_submission_values` VALUES (860, 2, 58, 'codigo_postal', '08022');
INSERT INTO `jos_rsform_submission_values` VALUES (861, 2, 58, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (862, 2, 58, 'email', 'osans@salle.url.edu');
INSERT INTO `jos_rsform_submission_values` VALUES (863, 2, 58, 'telefono', '');
INSERT INTO `jos_rsform_submission_values` VALUES (864, 2, 58, 'nif', '');
INSERT INTO `jos_rsform_submission_values` VALUES (865, 2, 58, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (866, 2, 58, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (867, 2, 59, 'nombre', 'olga');
INSERT INTO `jos_rsform_submission_values` VALUES (868, 2, 59, 'apellidos', 'sans copé');
INSERT INTO `jos_rsform_submission_values` VALUES (869, 2, 59, 'seminarios', 'Seminario II [21 de octubre]. “La Innovación y el científico”');
INSERT INTO `jos_rsform_submission_values` VALUES (870, 2, 59, 'institucion', 'La Salle-Universitat Ramon Llull');
INSERT INTO `jos_rsform_submission_values` VALUES (871, 2, 59, 'direccion', 'C/St. Joan de la Salle');
INSERT INTO `jos_rsform_submission_values` VALUES (872, 2, 59, 'ciudad', 'Barcelona');
INSERT INTO `jos_rsform_submission_values` VALUES (873, 2, 59, 'codigo_postal', '08022');
INSERT INTO `jos_rsform_submission_values` VALUES (874, 2, 59, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (875, 2, 59, 'email', 'osans@salle.url.edu');
INSERT INTO `jos_rsform_submission_values` VALUES (876, 2, 59, 'telefono', '');
INSERT INTO `jos_rsform_submission_values` VALUES (877, 2, 59, 'nif', '');
INSERT INTO `jos_rsform_submission_values` VALUES (878, 2, 59, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (879, 2, 59, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (880, 2, 60, 'nombre', 'olga');
INSERT INTO `jos_rsform_submission_values` VALUES (881, 2, 60, 'apellidos', 'sans copé');
INSERT INTO `jos_rsform_submission_values` VALUES (882, 2, 60, 'seminarios', 'Seminario IV [11 de noviembre] “Valorización de ideas y resultados de I+D.”');
INSERT INTO `jos_rsform_submission_values` VALUES (883, 2, 60, 'institucion', 'La Salle-Universitat Ramon Llull');
INSERT INTO `jos_rsform_submission_values` VALUES (884, 2, 60, 'direccion', 'C/St. Joan de la Salle');
INSERT INTO `jos_rsform_submission_values` VALUES (885, 2, 60, 'ciudad', 'Barcelona');
INSERT INTO `jos_rsform_submission_values` VALUES (886, 2, 60, 'codigo_postal', '08022');
INSERT INTO `jos_rsform_submission_values` VALUES (887, 2, 60, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (888, 2, 60, 'email', 'osans@salle.url.edu');
INSERT INTO `jos_rsform_submission_values` VALUES (889, 2, 60, 'telefono', '');
INSERT INTO `jos_rsform_submission_values` VALUES (890, 2, 60, 'nif', '');
INSERT INTO `jos_rsform_submission_values` VALUES (891, 2, 60, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (892, 2, 60, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (893, 2, 61, 'nombre', 'Fco. Javier');
INSERT INTO `jos_rsform_submission_values` VALUES (894, 2, 61, 'apellidos', 'González Manzano');
INSERT INTO `jos_rsform_submission_values` VALUES (895, 2, 61, 'seminarios', 'Seminario IV [11 de noviembre] “Valorización de ideas y resultados de I+D.”');
INSERT INTO `jos_rsform_submission_values` VALUES (896, 2, 61, 'institucion', 'Particular');
INSERT INTO `jos_rsform_submission_values` VALUES (897, 2, 61, 'direccion', 'Pl. Dr. Cararach Mauri 5-8, 5º 3ª');
INSERT INTO `jos_rsform_submission_values` VALUES (898, 2, 61, 'ciudad', 'Barcelona');
INSERT INTO `jos_rsform_submission_values` VALUES (899, 2, 61, 'codigo_postal', '08027');
INSERT INTO `jos_rsform_submission_values` VALUES (900, 2, 61, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (901, 2, 61, 'email', 'fjgonzalez@ya.com');
INSERT INTO `jos_rsform_submission_values` VALUES (902, 2, 61, 'telefono', '605384585');
INSERT INTO `jos_rsform_submission_values` VALUES (903, 2, 61, 'nif', '43539857Y');
INSERT INTO `jos_rsform_submission_values` VALUES (904, 2, 61, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (905, 2, 61, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (906, 2, 62, 'nombre', 'Mohamed');
INSERT INTO `jos_rsform_submission_values` VALUES (907, 2, 62, 'apellidos', 'Aklalouch');
INSERT INTO `jos_rsform_submission_values` VALUES (908, 2, 62, 'seminarios', 'Seminario II, III y IV');
INSERT INTO `jos_rsform_submission_values` VALUES (909, 2, 62, 'institucion', 'Instituto de Ciencia de Materiales de Barcelona');
INSERT INTO `jos_rsform_submission_values` VALUES (910, 2, 62, 'direccion', 'Campus de la Universidad Autónoma de Barcelona 08193 Bellaterra');
INSERT INTO `jos_rsform_submission_values` VALUES (911, 2, 62, 'ciudad', 'Barcelona');
INSERT INTO `jos_rsform_submission_values` VALUES (912, 2, 62, 'codigo_postal', '08193 ');
INSERT INTO `jos_rsform_submission_values` VALUES (913, 2, 62, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (914, 2, 62, 'email', 'maklalouch@icmab.es');
INSERT INTO `jos_rsform_submission_values` VALUES (915, 2, 62, 'telefono', '');
INSERT INTO `jos_rsform_submission_values` VALUES (916, 2, 62, 'nif', '');
INSERT INTO `jos_rsform_submission_values` VALUES (917, 2, 62, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (918, 2, 62, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (919, 2, 63, 'nombre', 'Laia');
INSERT INTO `jos_rsform_submission_values` VALUES (920, 2, 63, 'apellidos', 'Lladó Pelfort');
INSERT INTO `jos_rsform_submission_values` VALUES (921, 2, 63, 'seminarios', 'Seminario II, III y IV');
INSERT INTO `jos_rsform_submission_values` VALUES (922, 2, 63, 'institucion', 'IIBB (CSIC-IDIBAPS-CIBERSAM)');
INSERT INTO `jos_rsform_submission_values` VALUES (923, 2, 63, 'direccion', 'Rosselló, 161, 6a planta');
INSERT INTO `jos_rsform_submission_values` VALUES (924, 2, 63, 'ciudad', 'Barcelona');
INSERT INTO `jos_rsform_submission_values` VALUES (925, 2, 63, 'codigo_postal', '08036');
INSERT INTO `jos_rsform_submission_values` VALUES (926, 2, 63, 'pais', 'Espanya');
INSERT INTO `jos_rsform_submission_values` VALUES (927, 2, 63, 'email', 'llpnqi@iibb.csic.es');
INSERT INTO `jos_rsform_submission_values` VALUES (928, 2, 63, 'telefono', '93 363 83 00 ext 354');
INSERT INTO `jos_rsform_submission_values` VALUES (929, 2, 63, 'nif', '');
INSERT INTO `jos_rsform_submission_values` VALUES (930, 2, 63, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (931, 2, 63, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (932, 2, 64, 'nombre', 'Pedro');
INSERT INTO `jos_rsform_submission_values` VALUES (933, 2, 64, 'apellidos', 'Diaz');
INSERT INTO `jos_rsform_submission_values` VALUES (934, 2, 64, 'seminarios', 'Seminario II, III y IV');
INSERT INTO `jos_rsform_submission_values` VALUES (935, 2, 64, 'institucion', 'Endesa');
INSERT INTO `jos_rsform_submission_values` VALUES (936, 2, 64, 'direccion', 'Avda. Paralelo, 51');
INSERT INTO `jos_rsform_submission_values` VALUES (937, 2, 64, 'ciudad', 'Barcelona');
INSERT INTO `jos_rsform_submission_values` VALUES (938, 2, 64, 'codigo_postal', '08004');
INSERT INTO `jos_rsform_submission_values` VALUES (939, 2, 64, 'pais', 'España');
INSERT INTO `jos_rsform_submission_values` VALUES (940, 2, 64, 'email', 'pedro.diazp@endesa.es');
INSERT INTO `jos_rsform_submission_values` VALUES (941, 2, 64, 'telefono', '656600430');
INSERT INTO `jos_rsform_submission_values` VALUES (942, 2, 64, 'nif', '37275700z');
INSERT INTO `jos_rsform_submission_values` VALUES (943, 2, 64, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (944, 2, 64, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (945, 2, 65, 'nombre', 'Laia');
INSERT INTO `jos_rsform_submission_values` VALUES (946, 2, 65, 'apellidos', 'Lladó Pelfort');
INSERT INTO `jos_rsform_submission_values` VALUES (947, 2, 65, 'seminarios', 'Jornada [2 de diciembre]. Networking con empresas');
INSERT INTO `jos_rsform_submission_values` VALUES (948, 2, 65, 'institucion', 'IIBB');
INSERT INTO `jos_rsform_submission_values` VALUES (949, 2, 65, 'direccion', 'Rosselló 161');
INSERT INTO `jos_rsform_submission_values` VALUES (950, 2, 65, 'ciudad', 'Barcelona');
INSERT INTO `jos_rsform_submission_values` VALUES (951, 2, 65, 'codigo_postal', '08036');
INSERT INTO `jos_rsform_submission_values` VALUES (952, 2, 65, 'pais', 'Espanya');
INSERT INTO `jos_rsform_submission_values` VALUES (953, 2, 65, 'email', 'llpnqi@iibb.csic.es');
INSERT INTO `jos_rsform_submission_values` VALUES (954, 2, 65, 'telefono', '');
INSERT INTO `jos_rsform_submission_values` VALUES (955, 2, 65, 'nif', '');
INSERT INTO `jos_rsform_submission_values` VALUES (956, 2, 65, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (957, 2, 65, 'formId', '2');
INSERT INTO `jos_rsform_submission_values` VALUES (958, 3, 66, 'title', 'Dr.');
INSERT INTO `jos_rsform_submission_values` VALUES (959, 3, 66, 'name', 'Jorge O.');
INSERT INTO `jos_rsform_submission_values` VALUES (960, 3, 66, 'familyname', 'Tocho');
INSERT INTO `jos_rsform_submission_values` VALUES (961, 3, 66, 'email', 'jorget@ciop.unlp.edu.ar');
INSERT INTO `jos_rsform_submission_values` VALUES (962, 3, 66, 'passport', '5532565');
INSERT INTO `jos_rsform_submission_values` VALUES (963, 3, 66, 'placeandbirth', 'LA Plata, Argentina, 19/02/1949');
INSERT INTO `jos_rsform_submission_values` VALUES (964, 3, 66, 'organization', 'CIOp (CONICET La plata- CIC)');
INSERT INTO `jos_rsform_submission_values` VALUES (965, 3, 66, 'department', 'Laser');
INSERT INTO `jos_rsform_submission_values` VALUES (966, 3, 66, 'position', 'Researcher');
INSERT INTO `jos_rsform_submission_values` VALUES (967, 3, 66, 'submit', 'Save and Send');
INSERT INTO `jos_rsform_submission_values` VALUES (968, 3, 66, 'formId', '7');
INSERT INTO `jos_rsform_submission_values` VALUES (969, 3, 67, 'title', 'professor');
INSERT INTO `jos_rsform_submission_values` VALUES (970, 3, 67, 'name', 'Janni');
INSERT INTO `jos_rsform_submission_values` VALUES (971, 3, 67, 'familyname', 'Nielsen');
INSERT INTO `jos_rsform_submission_values` VALUES (972, 3, 67, 'email', 'janni.nielsen@cbs.dk');
INSERT INTO `jos_rsform_submission_values` VALUES (973, 3, 67, 'passport', '22202022989');
INSERT INTO `jos_rsform_submission_values` VALUES (974, 3, 67, 'placeandbirth', 'Copenhagen. Denmark 1109049');
INSERT INTO `jos_rsform_submission_values` VALUES (975, 3, 67, 'organization', 'Copenhagen Business School');
INSERT INTO `jos_rsform_submission_values` VALUES (976, 3, 67, 'department', 'Centre for Applied ICT');
INSERT INTO `jos_rsform_submission_values` VALUES (977, 3, 67, 'position', 'professor');
INSERT INTO `jos_rsform_submission_values` VALUES (978, 3, 67, 'submit', 'Save and Send');
INSERT INTO `jos_rsform_submission_values` VALUES (979, 3, 67, 'formId', '7');
INSERT INTO `jos_rsform_submission_values` VALUES (980, 3, 68, 'title', 'Prof.');
INSERT INTO `jos_rsform_submission_values` VALUES (981, 3, 68, 'name', 'Carlos ');
INSERT INTO `jos_rsform_submission_values` VALUES (982, 3, 68, 'familyname', 'Miravitlles');
INSERT INTO `jos_rsform_submission_values` VALUES (983, 3, 68, 'email', 'miravitlles@icmab.es');
INSERT INTO `jos_rsform_submission_values` VALUES (984, 3, 68, 'passport', '37577578V');
INSERT INTO `jos_rsform_submission_values` VALUES (985, 3, 68, 'placeandbirth', 'Barcelona');
INSERT INTO `jos_rsform_submission_values` VALUES (986, 3, 68, 'organization', 'ICMAB');
INSERT INTO `jos_rsform_submission_values` VALUES (987, 3, 68, 'department', 'Cristallography');
INSERT INTO `jos_rsform_submission_values` VALUES (988, 3, 68, 'position', 'Prof.');
INSERT INTO `jos_rsform_submission_values` VALUES (989, 3, 68, 'submit', 'Save and Send');
INSERT INTO `jos_rsform_submission_values` VALUES (990, 3, 68, 'formId', '7');
INSERT INTO `jos_rsform_submission_values` VALUES (991, 3, 69, 'title', 'Prof.');
INSERT INTO `jos_rsform_submission_values` VALUES (992, 3, 69, 'name', 'Nieves');
INSERT INTO `jos_rsform_submission_values` VALUES (993, 3, 69, 'familyname', 'Casañ');
INSERT INTO `jos_rsform_submission_values` VALUES (994, 3, 69, 'email', 'nieves@icmab.es');
INSERT INTO `jos_rsform_submission_values` VALUES (995, 3, 69, 'passport', '11111111A');
INSERT INTO `jos_rsform_submission_values` VALUES (996, 3, 69, 'placeandbirth', '');
INSERT INTO `jos_rsform_submission_values` VALUES (997, 3, 69, 'organization', 'ICMAB');
INSERT INTO `jos_rsform_submission_values` VALUES (998, 3, 69, 'department', 'Solid State Chemistry');
INSERT INTO `jos_rsform_submission_values` VALUES (999, 3, 69, 'position', 'Prof.');
INSERT INTO `jos_rsform_submission_values` VALUES (1000, 3, 69, 'submit', 'Save and Send');
INSERT INTO `jos_rsform_submission_values` VALUES (1001, 3, 69, 'formId', '7');
INSERT INTO `jos_rsform_submission_values` VALUES (1002, 3, 70, 'title', 'Ms.');
INSERT INTO `jos_rsform_submission_values` VALUES (1003, 3, 70, 'name', 'Susana');
INSERT INTO `jos_rsform_submission_values` VALUES (1004, 3, 70, 'familyname', 'Garelik');
INSERT INTO `jos_rsform_submission_values` VALUES (1005, 3, 70, 'email', 's.garelik@icmab.es');
INSERT INTO `jos_rsform_submission_values` VALUES (1006, 3, 70, 'passport', '1111111A');
INSERT INTO `jos_rsform_submission_values` VALUES (1007, 3, 70, 'placeandbirth', '');
INSERT INTO `jos_rsform_submission_values` VALUES (1008, 3, 70, 'organization', 'ICMAB');
INSERT INTO `jos_rsform_submission_values` VALUES (1009, 3, 70, 'department', 'Technology Transfer');
INSERT INTO `jos_rsform_submission_values` VALUES (1010, 3, 70, 'position', 'Head of Unit');
INSERT INTO `jos_rsform_submission_values` VALUES (1011, 3, 70, 'submit', 'Save and Send');
INSERT INTO `jos_rsform_submission_values` VALUES (1012, 3, 70, 'formId', '7');
INSERT INTO `jos_rsform_submission_values` VALUES (1013, 3, 71, 'title', 'Prof.');
INSERT INTO `jos_rsform_submission_values` VALUES (1014, 3, 71, 'name', 'Xavier ');
INSERT INTO `jos_rsform_submission_values` VALUES (1015, 3, 71, 'familyname', 'Obradors');
INSERT INTO `jos_rsform_submission_values` VALUES (1016, 3, 71, 'email', 'obradors@icmab.es');
INSERT INTO `jos_rsform_submission_values` VALUES (1017, 3, 71, 'passport', '1111111A');
INSERT INTO `jos_rsform_submission_values` VALUES (1018, 3, 71, 'placeandbirth', '');
INSERT INTO `jos_rsform_submission_values` VALUES (1019, 3, 71, 'organization', 'ICMAB');
INSERT INTO `jos_rsform_submission_values` VALUES (1020, 3, 71, 'department', 'Superconducting Materials and Large Scale Nanostructuration ');
INSERT INTO `jos_rsform_submission_values` VALUES (1021, 3, 71, 'position', 'Director');
INSERT INTO `jos_rsform_submission_values` VALUES (1022, 3, 71, 'submit', 'Save and Send');
INSERT INTO `jos_rsform_submission_values` VALUES (1023, 3, 71, 'formId', '7');
INSERT INTO `jos_rsform_submission_values` VALUES (1024, 3, 72, 'title', 'associate professor, Ph.D.');
INSERT INTO `jos_rsform_submission_values` VALUES (1025, 3, 72, 'name', 'Maja');
INSERT INTO `jos_rsform_submission_values` VALUES (1026, 3, 72, 'familyname', 'Horst');
INSERT INTO `jos_rsform_submission_values` VALUES (1027, 3, 72, 'email', 'mho.ioa@cbs.dk');
INSERT INTO `jos_rsform_submission_values` VALUES (1028, 3, 72, 'passport', '101770802');
INSERT INTO `jos_rsform_submission_values` VALUES (1029, 3, 72, 'placeandbirth', 'Sjælland ');
INSERT INTO `jos_rsform_submission_values` VALUES (1030, 3, 72, 'organization', 'Copenhagen Business School');
INSERT INTO `jos_rsform_submission_values` VALUES (1031, 3, 72, 'department', 'Dept of Organization');
INSERT INTO `jos_rsform_submission_values` VALUES (1032, 3, 72, 'position', 'associate professor');
INSERT INTO `jos_rsform_submission_values` VALUES (1033, 3, 72, 'submit', 'Save and Send');
INSERT INTO `jos_rsform_submission_values` VALUES (1034, 3, 72, 'formId', '7');
INSERT INTO `jos_rsform_submission_values` VALUES (1035, 3, 73, 'title', 'Mr.');
INSERT INTO `jos_rsform_submission_values` VALUES (1036, 3, 73, 'name', 'Nicola');
INSERT INTO `jos_rsform_submission_values` VALUES (1037, 3, 73, 'familyname', 'Trevisan');
INSERT INTO `jos_rsform_submission_values` VALUES (1038, 3, 73, 'email', 'direzione@venetonanotech.it');
INSERT INTO `jos_rsform_submission_values` VALUES (1039, 3, 73, 'passport', 'B704939');
INSERT INTO `jos_rsform_submission_values` VALUES (1040, 3, 73, 'placeandbirth', 'Codevigo (Padua) - 04/11/1960');
INSERT INTO `jos_rsform_submission_values` VALUES (1041, 3, 73, 'organization', 'Veneto Nanotech S.C.p.A.');
INSERT INTO `jos_rsform_submission_values` VALUES (1042, 3, 73, 'department', 'Veneto Nanotech');
INSERT INTO `jos_rsform_submission_values` VALUES (1043, 3, 73, 'position', 'CEO');
INSERT INTO `jos_rsform_submission_values` VALUES (1044, 3, 73, 'submit', 'Save and Send');
INSERT INTO `jos_rsform_submission_values` VALUES (1045, 3, 73, 'formId', '7');
INSERT INTO `jos_rsform_submission_values` VALUES (1046, 3, 74, 'title', 'Dr.');
INSERT INTO `jos_rsform_submission_values` VALUES (1047, 3, 74, 'name', 'Sergio S.');
INSERT INTO `jos_rsform_submission_values` VALUES (1048, 3, 74, 'familyname', 'Funari');
INSERT INTO `jos_rsform_submission_values` VALUES (1049, 3, 74, 'email', 'Sergio.funari@desy.de');
INSERT INTO `jos_rsform_submission_values` VALUES (1050, 3, 74, 'passport', 'CY769594');
INSERT INTO `jos_rsform_submission_values` VALUES (1051, 3, 74, 'placeandbirth', 'Sao Paulo, 10.Jul.1956');
INSERT INTO `jos_rsform_submission_values` VALUES (1052, 3, 74, 'organization', 'DESY');
INSERT INTO `jos_rsform_submission_values` VALUES (1053, 3, 74, 'department', 'HASYLAB');
INSERT INTO `jos_rsform_submission_values` VALUES (1054, 3, 74, 'position', 'Scientist');
INSERT INTO `jos_rsform_submission_values` VALUES (1055, 3, 74, 'submit', 'Save and Send');
INSERT INTO `jos_rsform_submission_values` VALUES (1056, 3, 74, 'formId', '7');
INSERT INTO `jos_rsform_submission_values` VALUES (1057, 3, 75, 'title', 'Dr.');
INSERT INTO `jos_rsform_submission_values` VALUES (1058, 3, 75, 'name', 'Vivian');
INSERT INTO `jos_rsform_submission_values` VALUES (1059, 3, 75, 'familyname', 'Rebbin');
INSERT INTO `jos_rsform_submission_values` VALUES (1060, 3, 75, 'email', 'Vivian.Rebbin@desy.de');
INSERT INTO `jos_rsform_submission_values` VALUES (1061, 3, 75, 'passport', 'tba');
INSERT INTO `jos_rsform_submission_values` VALUES (1062, 3, 75, 'placeandbirth', 'Hambur,g 26 October 1976');
INSERT INTO `jos_rsform_submission_values` VALUES (1063, 3, 75, 'organization', 'DESY');
INSERT INTO `jos_rsform_submission_values` VALUES (1064, 3, 75, 'department', 'HASYLAB');
INSERT INTO `jos_rsform_submission_values` VALUES (1065, 3, 75, 'position', 'Scientist');
INSERT INTO `jos_rsform_submission_values` VALUES (1066, 3, 75, 'submit', 'Save and Send');
INSERT INTO `jos_rsform_submission_values` VALUES (1067, 3, 75, 'formId', '7');
INSERT INTO `jos_rsform_submission_values` VALUES (1068, 3, 76, 'title', 'Dr.');
INSERT INTO `jos_rsform_submission_values` VALUES (1069, 3, 76, 'name', 'Helena');
INSERT INTO `jos_rsform_submission_values` VALUES (1070, 3, 76, 'familyname', 'Pardo Minetti');
INSERT INTO `jos_rsform_submission_values` VALUES (1071, 3, 76, 'email', 'hpardo@fq.edu.uy');
INSERT INTO `jos_rsform_submission_values` VALUES (1072, 3, 76, 'passport', '1765506-8');
INSERT INTO `jos_rsform_submission_values` VALUES (1073, 3, 76, 'placeandbirth', '19-01-69');
INSERT INTO `jos_rsform_submission_values` VALUES (1074, 3, 76, 'organization', 'Centro NanoMat- Polo Tecnológico de Pando, Facultad de Química, UdelaR');
INSERT INTO `jos_rsform_submission_values` VALUES (1075, 3, 76, 'department', 'Cátedra de Física, DETEMA ');
INSERT INTO `jos_rsform_submission_values` VALUES (1076, 3, 76, 'position', 'Adjunt Professor -Full time, tenured-');
INSERT INTO `jos_rsform_submission_values` VALUES (1077, 3, 76, 'submit', 'Save and Send');
INSERT INTO `jos_rsform_submission_values` VALUES (1078, 3, 76, 'formId', '7');
INSERT INTO `jos_rsform_submission_values` VALUES (1079, 3, 77, 'title', 'Proffesor');
INSERT INTO `jos_rsform_submission_values` VALUES (1080, 3, 77, 'name', 'John');
INSERT INTO `jos_rsform_submission_values` VALUES (1081, 3, 77, 'familyname', 'Kilner');
INSERT INTO `jos_rsform_submission_values` VALUES (1082, 3, 77, 'email', 'j.kilner@imperial.ac.uk');
INSERT INTO `jos_rsform_submission_values` VALUES (1083, 3, 77, 'passport', '540156797');
INSERT INTO `jos_rsform_submission_values` VALUES (1084, 3, 77, 'placeandbirth', '15/12/1946 Huddersfield UK');
INSERT INTO `jos_rsform_submission_values` VALUES (1085, 3, 77, 'organization', 'Imperial College, LOndon');
INSERT INTO `jos_rsform_submission_values` VALUES (1086, 3, 77, 'department', 'Materials');
INSERT INTO `jos_rsform_submission_values` VALUES (1087, 3, 77, 'position', 'BCH steele chair of Energy Materials');
INSERT INTO `jos_rsform_submission_values` VALUES (1088, 3, 77, 'submit', 'Save and Send');
INSERT INTO `jos_rsform_submission_values` VALUES (1089, 3, 77, 'formId', '7');
INSERT INTO `jos_rsform_submission_values` VALUES (1090, 3, 78, 'title', 'Dr.');
INSERT INTO `jos_rsform_submission_values` VALUES (1091, 3, 78, 'name', 'Ricardo');
INSERT INTO `jos_rsform_submission_values` VALUES (1092, 3, 78, 'familyname', 'Faccio');
INSERT INTO `jos_rsform_submission_values` VALUES (1093, 3, 78, 'email', 'rfaccio@fq.edu.uy');
INSERT INTO `jos_rsform_submission_values` VALUES (1094, 3, 78, 'passport', '02779683-2');
INSERT INTO `jos_rsform_submission_values` VALUES (1095, 3, 78, 'placeandbirth', 'Montevideo. Uruguay');
INSERT INTO `jos_rsform_submission_values` VALUES (1096, 3, 78, 'organization', 'UdelaR');
INSERT INTO `jos_rsform_submission_values` VALUES (1097, 3, 78, 'department', 'DETEMA');
INSERT INTO `jos_rsform_submission_values` VALUES (1098, 3, 78, 'position', 'Assistant Professor');
INSERT INTO `jos_rsform_submission_values` VALUES (1099, 3, 78, 'submit', 'Save and Send');
INSERT INTO `jos_rsform_submission_values` VALUES (1100, 3, 78, 'formId', '7');
INSERT INTO `jos_rsform_submission_values` VALUES (1101, 3, 79, 'title', 'Dr.');
INSERT INTO `jos_rsform_submission_values` VALUES (1102, 3, 79, 'name', 'Stephan');
INSERT INTO `jos_rsform_submission_values` VALUES (1103, 3, 79, 'familyname', 'Roth');
INSERT INTO `jos_rsform_submission_values` VALUES (1104, 3, 79, 'email', 'stephan.roth@desy.de');
INSERT INTO `jos_rsform_submission_values` VALUES (1105, 3, 79, 'passport', '132117021');
INSERT INTO `jos_rsform_submission_values` VALUES (1106, 3, 79, 'placeandbirth', '');
INSERT INTO `jos_rsform_submission_values` VALUES (1107, 3, 79, 'organization', 'DESY');
INSERT INTO `jos_rsform_submission_values` VALUES (1108, 3, 79, 'department', 'FS-PE');
INSERT INTO `jos_rsform_submission_values` VALUES (1109, 3, 79, 'position', '');
INSERT INTO `jos_rsform_submission_values` VALUES (1110, 3, 79, 'submit', 'Save and Send');
INSERT INTO `jos_rsform_submission_values` VALUES (1111, 3, 79, 'formId', '7');
INSERT INTO `jos_rsform_submission_values` VALUES (1112, 3, 80, 'title', 'Msc.');
INSERT INTO `jos_rsform_submission_values` VALUES (1113, 3, 80, 'name', 'Bruno');
INSERT INTO `jos_rsform_submission_values` VALUES (1114, 3, 80, 'familyname', 'Barbosa Rodrigues');
INSERT INTO `jos_rsform_submission_values` VALUES (1115, 3, 80, 'email', 'bbrodrigues@gmail.com');
INSERT INTO `jos_rsform_submission_values` VALUES (1116, 3, 80, 'passport', 'CX346435');
INSERT INTO `jos_rsform_submission_values` VALUES (1117, 3, 80, 'placeandbirth', 'Araxá - Brazil, 27/11/1983');
INSERT INTO `jos_rsform_submission_values` VALUES (1118, 3, 80, 'organization', 'UFMG');
INSERT INTO `jos_rsform_submission_values` VALUES (1119, 3, 80, 'department', 'Physics Department');
INSERT INTO `jos_rsform_submission_values` VALUES (1120, 3, 80, 'position', 'PhD Student');
INSERT INTO `jos_rsform_submission_values` VALUES (1121, 3, 80, 'submit', 'Save and Send');
INSERT INTO `jos_rsform_submission_values` VALUES (1122, 3, 80, 'formId', '7');
INSERT INTO `jos_rsform_submission_values` VALUES (1123, 3, 81, 'title', 'Prof. Dr.');
INSERT INTO `jos_rsform_submission_values` VALUES (1124, 3, 81, 'name', 'Maurício');
INSERT INTO `jos_rsform_submission_values` VALUES (1125, 3, 81, 'familyname', 'Veloso Brant Pinheiro');
INSERT INTO `jos_rsform_submission_values` VALUES (1126, 3, 81, 'email', 'pinheiro@gmail.com');
INSERT INTO `jos_rsform_submission_values` VALUES (1127, 3, 81, 'passport', 'm5072516');
INSERT INTO `jos_rsform_submission_values` VALUES (1128, 3, 81, 'placeandbirth', 'BH 19/06/1970');
INSERT INTO `jos_rsform_submission_values` VALUES (1129, 3, 81, 'organization', 'UFMG');
INSERT INTO `jos_rsform_submission_values` VALUES (1130, 3, 81, 'department', 'Physics');
INSERT INTO `jos_rsform_submission_values` VALUES (1131, 3, 81, 'position', 'Prof.');
INSERT INTO `jos_rsform_submission_values` VALUES (1132, 3, 81, 'submit', 'Save and Send');
INSERT INTO `jos_rsform_submission_values` VALUES (1133, 3, 81, 'formId', '7');
INSERT INTO `jos_rsform_submission_values` VALUES (1134, 3, 82, 'title', 'Dr.');
INSERT INTO `jos_rsform_submission_values` VALUES (1135, 3, 82, 'name', 'Alvaro');
INSERT INTO `jos_rsform_submission_values` VALUES (1136, 3, 82, 'familyname', 'Mombrú');
INSERT INTO `jos_rsform_submission_values` VALUES (1137, 3, 82, 'email', 'amombru@fq.edu.uy');
INSERT INTO `jos_rsform_submission_values` VALUES (1138, 3, 82, 'passport', '1848587-6');
INSERT INTO `jos_rsform_submission_values` VALUES (1139, 3, 82, 'placeandbirth', 'Montevideo, Uruguay, Feb 8, 1966');
INSERT INTO `jos_rsform_submission_values` VALUES (1140, 3, 82, 'organization', 'Facultad de Química - Universidad de la República');
INSERT INTO `jos_rsform_submission_values` VALUES (1141, 3, 82, 'department', 'Polo Tecnológico de Pando');
INSERT INTO `jos_rsform_submission_values` VALUES (1142, 3, 82, 'position', 'Professor/Director');
INSERT INTO `jos_rsform_submission_values` VALUES (1143, 3, 82, 'submit', 'Save and Send');
INSERT INTO `jos_rsform_submission_values` VALUES (1144, 3, 82, 'formId', '7');
INSERT INTO `jos_rsform_submission_values` VALUES (1145, 3, 83, 'title', 'Miss');
INSERT INTO `jos_rsform_submission_values` VALUES (1146, 3, 83, 'name', 'Lydia');
INSERT INTO `jos_rsform_submission_values` VALUES (1147, 3, 83, 'familyname', 'Fawcett');
INSERT INTO `jos_rsform_submission_values` VALUES (1148, 3, 83, 'email', 'l.fawcett09@imperial.ac.uk');
INSERT INTO `jos_rsform_submission_values` VALUES (1149, 3, 83, 'passport', '085038022');
INSERT INTO `jos_rsform_submission_values` VALUES (1150, 3, 83, 'placeandbirth', 'Macclesfield, England, 13/septempber/1984');
INSERT INTO `jos_rsform_submission_values` VALUES (1151, 3, 83, 'organization', 'Imperial College London');
INSERT INTO `jos_rsform_submission_values` VALUES (1152, 3, 83, 'department', 'Materials');
INSERT INTO `jos_rsform_submission_values` VALUES (1153, 3, 83, 'position', 'PhD student');
INSERT INTO `jos_rsform_submission_values` VALUES (1154, 3, 83, 'submit', 'Save and Send');
INSERT INTO `jos_rsform_submission_values` VALUES (1155, 3, 83, 'formId', '7');
INSERT INTO `jos_rsform_submission_values` VALUES (1156, 3, 84, 'title', '');
INSERT INTO `jos_rsform_submission_values` VALUES (1157, 3, 84, 'name', 'Tiago');
INSERT INTO `jos_rsform_submission_values` VALUES (1158, 3, 84, 'familyname', 'Campolina Barbosa');
INSERT INTO `jos_rsform_submission_values` VALUES (1159, 3, 84, 'email', 'tiagocampb@yahoo.com.br');
INSERT INTO `jos_rsform_submission_values` VALUES (1160, 3, 84, 'passport', '-');
INSERT INTO `jos_rsform_submission_values` VALUES (1161, 3, 84, 'placeandbirth', 'Belo Horizonte, 01/03/1988');
INSERT INTO `jos_rsform_submission_values` VALUES (1162, 3, 84, 'organization', 'Federal University of Minas Gerais (UFMG)');
INSERT INTO `jos_rsform_submission_values` VALUES (1163, 3, 84, 'department', 'Physics Department');
INSERT INTO `jos_rsform_submission_values` VALUES (1164, 3, 84, 'position', 'Student');
INSERT INTO `jos_rsform_submission_values` VALUES (1165, 3, 84, 'submit', 'Save and Send');
INSERT INTO `jos_rsform_submission_values` VALUES (1166, 3, 84, 'formId', '7');
INSERT INTO `jos_rsform_submission_values` VALUES (1167, 2, 85, 'nombre', 'bbpfdznga');
INSERT INTO `jos_rsform_submission_values` VALUES (1168, 2, 85, 'apellidos', '70302');
INSERT INTO `jos_rsform_submission_values` VALUES (1169, 2, 85, 'seminarios', 'Seminario III [29 de octubre]. âEl talento y las competencias profesionales.â');
INSERT INTO `jos_rsform_submission_values` VALUES (1170, 2, 85, 'institucion', 'http://wvnknjxpsimd.com/');
INSERT INTO `jos_rsform_submission_values` VALUES (1171, 2, 85, 'direccion', 'lQaVxXNlaW');
INSERT INTO `jos_rsform_submission_values` VALUES (1172, 2, 85, 'ciudad', 'NY');
INSERT INTO `jos_rsform_submission_values` VALUES (1173, 2, 85, 'codigo_postal', '64239');
INSERT INTO `jos_rsform_submission_values` VALUES (1174, 2, 85, 'pais', 'USA');
INSERT INTO `jos_rsform_submission_values` VALUES (1175, 2, 85, 'email', 'hicnnc@ttjibx.com');
INSERT INTO `jos_rsform_submission_values` VALUES (1176, 2, 85, 'telefono', '69921594680');
INSERT INTO `jos_rsform_submission_values` VALUES (1177, 2, 85, 'nif', 'puXGlQyqfQ');
INSERT INTO `jos_rsform_submission_values` VALUES (1178, 2, 85, 'registro', 'Registro');
INSERT INTO `jos_rsform_submission_values` VALUES (1179, 2, 85, 'formId', '2');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_rsform_submissions`
-- 

CREATE TABLE `jos_rsform_submissions` (
  `SubmissionId` int(11) NOT NULL auto_increment,
  `FormId` int(11) NOT NULL default '0',
  `DateSubmitted` datetime NOT NULL,
  `UserIp` varchar(15) NOT NULL default '',
  `Username` varchar(255) NOT NULL default '',
  `UserId` text NOT NULL,
  PRIMARY KEY  (`SubmissionId`),
  KEY `FormId` (`FormId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=86 ;

-- 
-- Dumping data for table `jos_rsform_submissions`
-- 

INSERT INTO `jos_rsform_submissions` VALUES (31, 2, '2010-09-07 12:01:58', '158.109.18.196', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (30, 2, '2010-09-06 15:33:41', '158.109.19.136', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (29, 2, '2010-09-06 11:50:42', '158.109.69.149', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (28, 2, '2010-09-06 09:59:21', '193.144.16.49', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (27, 2, '2010-09-03 10:37:47', '158.109.19.136', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (26, 2, '2010-09-03 10:16:12', '161.111.224.120', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (25, 2, '2010-09-02 15:16:41', '158.109.19.242', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (24, 2, '2010-09-02 14:47:47', '158.109.48.154', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (23, 2, '2010-09-02 12:14:01', '193.147.222.244', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (22, 2, '2010-09-02 12:05:39', '158.109.70.65', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (21, 2, '2010-09-01 14:17:08', '161.111.224.226', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (20, 2, '2010-09-01 12:30:26', '158.109.18.145', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (19, 2, '2010-09-01 10:59:40', '161.116.100.64', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (18, 2, '2010-08-27 14:07:36', '158.109.19.152', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (32, 2, '2010-09-07 13:33:37', '158.109.1.15', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (33, 2, '2010-09-07 16:27:01', '158.109.19.215', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (34, 2, '2010-09-07 16:28:14', '158.109.19.215', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (35, 2, '2010-09-08 10:59:47', '158.109.18.205', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (36, 2, '2010-09-08 12:07:04', '158.109.18.138', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (37, 2, '2010-09-08 12:08:41', '158.109.18.138', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (38, 2, '2010-09-08 12:09:33', '158.109.18.249', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (39, 2, '2010-09-08 12:30:59', '85.55.150.17', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (40, 2, '2010-09-08 15:50:45', '158.109.66.217', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (41, 2, '2010-09-09 09:53:57', '158.109.18.253', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (42, 2, '2010-09-09 09:54:55', '158.109.18.97', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (43, 2, '2010-09-09 10:55:06', '158.109.1.15', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (44, 2, '2010-09-09 10:55:08', '158.109.18.134', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (45, 2, '2010-09-09 11:28:49', '158.109.18.39', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (46, 2, '2010-09-09 11:29:41', '158.109.18.39', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (47, 2, '2010-09-09 11:32:37', '158.109.18.247', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (48, 2, '2010-09-09 11:34:10', '158.109.18.247', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (49, 2, '2010-09-09 11:39:47', '158.109.18.207', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (50, 2, '2010-09-09 13:41:13', '213.97.38.254', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (51, 2, '2010-09-09 13:42:55', '213.97.38.254', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (52, 2, '2010-09-09 16:06:11', '158.109.18.199', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (53, 2, '2010-09-13 11:31:09', '158.109.17.43', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (54, 2, '2010-09-13 13:23:50', '95.19.155.108', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (55, 2, '2010-09-14 10:54:37', '84.88.233.2', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (56, 2, '2010-09-14 10:55:38', '84.88.233.2', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (57, 2, '2010-09-14 10:56:15', '84.88.233.2', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (58, 2, '2010-09-22 10:35:16', '84.88.233.2', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (59, 2, '2010-09-22 10:38:52', '84.88.233.2', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (60, 2, '2010-09-22 10:40:05', '84.88.233.2', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (61, 2, '2010-10-01 19:23:29', '88.6.164.216', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (62, 2, '2010-10-08 11:10:48', '158.109.17.187', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (63, 2, '2010-10-13 10:39:51', '161.111.224.218', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (64, 2, '2010-10-20 08:12:09', '195.57.146.173', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (65, 2, '2010-11-11 17:38:01', '83.37.78.104', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (66, 3, '2011-02-07 15:24:32', '186.137.33.235', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (67, 3, '2011-02-09 14:42:01', '130.226.41.9', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (68, 3, '2011-02-10 13:48:01', '158.109.19.99', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (69, 3, '2011-02-10 13:49:54', '158.109.19.99', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (70, 3, '2011-02-10 13:50:47', '158.109.19.99', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (71, 3, '2011-02-10 13:52:35', '158.109.19.99', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (72, 3, '2011-02-10 16:35:22', '130.226.41.9', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (73, 3, '2011-02-10 17:58:04', '62.94.191.54', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (74, 3, '2011-02-16 14:36:27', '131.169.66.60', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (75, 3, '2011-02-16 14:40:46', '131.169.66.60', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (76, 3, '2011-02-17 17:21:09', '164.73.160.122', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (77, 3, '2011-02-17 17:37:02', '155.198.100.146', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (78, 3, '2011-02-17 17:47:11', '200.133.194.73', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (79, 3, '2011-02-18 11:51:37', '131.169.221.165', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (80, 3, '2011-02-18 12:01:02', '189.107.196.58', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (81, 3, '2011-02-18 13:09:45', '150.164.13.195', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (82, 3, '2011-02-22 15:22:37', '164.73.160.122', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (83, 3, '2011-02-24 18:23:40', '155.198.100.187', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (84, 3, '2011-02-25 14:27:32', '189.61.191.131', '', '0');
INSERT INTO `jos_rsform_submissions` VALUES (85, 2, '2011-04-14 08:04:12', '217.172.180.18', '', '0');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_sections`
-- 

CREATE TABLE `jos_sections` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL default '',
  `image_position` varchar(30) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_sections`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_session`
-- 

CREATE TABLE `jos_session` (
  `username` varchar(150) default '',
  `time` varchar(14) default '',
  `session_id` varchar(200) NOT NULL default '0',
  `guest` tinyint(4) default '1',
  `userid` int(11) default '0',
  `usertype` varchar(50) default '',
  `gid` tinyint(3) unsigned NOT NULL default '0',
  `client_id` tinyint(3) unsigned NOT NULL default '0',
  `data` longtext,
  PRIMARY KEY  (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_session`
-- 

INSERT INTO `jos_session` VALUES ('', '1380475396', 'up5d8sj7rfbvo2trspt7pjdav5', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1380475396;s:18:"session.timer.last";i:1380475396;s:17:"session.timer.now";i:1380475396;s:22:"session.client.browser";s:72:"Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:88:"/var/www/congresses/doctoresenlaempresa/registro/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_stats_agents`
-- 

CREATE TABLE `jos_stats_agents` (
  `agent` varchar(255) NOT NULL default '',
  `type` tinyint(1) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_stats_agents`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_templates_menu`
-- 

CREATE TABLE `jos_templates_menu` (
  `template` varchar(255) NOT NULL default '',
  `menuid` int(11) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_templates_menu`
-- 

INSERT INTO `jos_templates_menu` VALUES ('ja_purity', 0, 0);
INSERT INTO `jos_templates_menu` VALUES ('khepri', 0, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_users`
-- 

CREATE TABLE `jos_users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `username` varchar(150) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `password` varchar(100) NOT NULL default '',
  `usertype` varchar(25) NOT NULL default '',
  `block` tinyint(4) NOT NULL default '0',
  `sendEmail` tinyint(4) default '0',
  `gid` tinyint(3) unsigned NOT NULL default '1',
  `registerDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL default '',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

-- 
-- Dumping data for table `jos_users`
-- 

INSERT INTO `jos_users` VALUES (62, 'Administrator', 'admin_enc', 'amoreno@icmab.es', '6e5b31509d6e55a25f3261902f4a9f95:lf11rFWvEWRRkt7ZkefSpbys4qqQSi1S', 'Super Administrator', 0, 1, 25, '2010-07-21 12:59:41', '2010-07-21 13:29:55', '', 'admin_language=\nlanguage=\neditor=\nhelpsite=\ntimezone=0\n\n');
INSERT INTO `jos_users` VALUES (63, 'Albert', 'albert', 'albert.moreno@icmab.es', '159e87abbf58ae7c13d30e19930a4be4:S6xREvWgaqpuaboEMrvWfti84UAoQ2vF', 'Super Administrator', 0, 0, 25, '2010-07-21 13:30:44', '2013-01-09 11:06:41', '', 'admin_language=\nlanguage=\neditor=\nhelpsite=\ntimezone=0\n\n');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_weblinks`
-- 

CREATE TABLE `jos_weblinks` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(250) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `url` varchar(250) NOT NULL default '',
  `description` text NOT NULL,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `archived` tinyint(1) NOT NULL default '0',
  `approved` tinyint(1) NOT NULL default '1',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jos_weblinks`
-- 

