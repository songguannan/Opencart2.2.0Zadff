-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2016 年 11 月 20 日 13:10
-- 服务器版本: 5.5.53
-- PHP 版本: 5.4.45

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `opencart`
--

-- --------------------------------------------------------

--
-- 表的结构 `oc_information_description`
--

CREATE TABLE IF NOT EXISTS `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `parent_id`, `createtime`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 2, 0, '0000-00-00 00:00:00', 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 2, 0, '0000-00-00 00:00:00', 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 2, 0, '0000-00-00 00:00:00', 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 2, 0, '0000-00-00 00:00:00', 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', ''),
(8, 2, 0, '2016-11-14 08:51:17', 'test-test', '&lt;p&gt;test-test&lt;br&gt;&lt;/p&gt;', 'test-test', '', ''),
(7, 2, 0, '2016-11-16 02:12:33', '1234qwer1234qwer1234qwer1234qwer1234qwer1234qwer1234qwer1234qwe', '&lt;p style=&quot;margin-bottom: 0px; padding: 0px 0px 24px; text-indent: 2em; color: rgb(56, 56, 56); font-family: simsun; font-size: 16px;&quot;&gt;【观察者网综合】据台湾媒体报道，为了巩固“台日关系”&lt;/p&gt;&lt;p class=&quot;f_center pcenter&quot; style=&quot;margin-bottom: 0px; padding: 0px 0px 24px; text-align: center; color: rgb(56, 56, 56); font-family: simsun; font-size: 16px;&quot;&gt;&lt;img id=&quot;currentImg&quot; src=&quot;http://img01.imgcdc.com/grab/img/20161114/92941479085349.jpg&quot; border=&quot;0&quot; alt=&quot;蔡英文急解禁日核灾区食品入台 民众情绪失控&quot; title=&quot;蔡英文急解禁日核灾区食品入台 民众情绪失控&quot;&gt;&lt;/p&gt;&lt;p class=&quot;pcenter&quot; style=&quot;margin-bottom: 0px; padding: 0px 0px 24px; text-align: center; color: rgb(56, 56, 56); font-family: simsun; font-size: 16px;&quot;&gt;12日在台南公听会上，台南市议员卢昆福（右）咆哮“农委会副主委”陈吉仲（左）公听会是黑箱作业。&lt;/p&gt;&lt;p class=&quot;pcenter&quot; style=&quot;margin-bottom: 0px; padding: 0px 0px 24px; text-align: center; color: rgb(56, 56, 56); font-family: simsun; font-size: 16px;&quot;&gt;12日在台南公听会上，台南市议员卢昆福（右）咆哮“农委会副主委”陈吉仲（左）公听会是黑箱作业。&lt;/p&gt;&lt;p class=&quot;pcenter&quot; style=&quot;margin-bottom: 0px; padding: 0px 0px 24px; text-align: center; color: rgb(56, 56, 56); font-family: simsun; font-size: 16px;&quot;&gt;12日在台南公听会上，台南市议员卢昆福（右）咆哮“农委会副主委”陈吉仲（左）公听会是黑箱作业。&lt;/p&gt;&lt;p class=&quot;pcenter&quot; style=&quot;margin-bottom: 0px; padding: 0px 0px 24px; text-align: center; color: rgb(56, 56, 56); font-family: simsun; font-size: 16px;&quot;&gt;12日在台南公听会上，台南市议员卢昆福（右）咆哮“农委会副主委”陈吉仲（左）公听会是黑箱作业。&lt;/p&gt;&lt;p class=&quot;pcenter&quot; style=&quot;margin-bottom: 0px; padding: 0px 0px 24px; text-align: center; color: rgb(56, 56, 56); font-family: simsun; font-size: 16px;&quot;&gt;12日在台南公听会上，台南市议员卢昆福（右）咆哮“农委会副主委”陈吉仲（左）公听会是黑箱作业。&lt;/p&gt;&lt;hr&gt;&lt;p class=&quot;pcenter&quot; style=&quot;margin-bottom: 0px; padding: 0px 0px 24px; text-align: center; color: rgb(56, 56, 56); font-family: simsun; font-size: 16px;&quot;&gt;12日在台南公听会上，台南市议员卢昆福（右）咆哮“农委会副主委”陈吉仲（左）公听会是黑箱作业。&lt;/p&gt;&lt;hr&gt;&lt;p class=&quot;pcenter&quot; style=&quot;margin-bottom: 0px; padding: 0px 0px 24px; text-align: center; color: rgb(56, 56, 56); font-family: simsun; font-size: 16px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'efefef', '我是meta标签说明', '我是关键字'),
(9, 2, 0, '2016-11-16 06:20:19', 'css overflow测试', '&lt;p class=&quot;detailPic&quot; style=&quot;margin-right: auto; margin-bottom: 10px; margin-left: auto; padding: 0px; text-indent: 28px; font-size: 14px; text-align: center; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif;&quot;&gt;&lt;img src=&quot;http://p1.ifengimg.com/a/2016_47/d521144aa7be52e_size16_w406_h220.jpg&quot; alt=&quot;&quot; title=&quot;老赖图&quot;&gt;&lt;/p&gt;&lt;p class=&quot;picIntro&quot; style=&quot;margin-bottom: 25px; padding: 0px; font-size: 14px; text-align: center; word-wrap: break-word; word-break: normal; font-family: 楷体_gb2312, 楷体; color: rgb(43, 43, 43);&quot;&gt;&lt;span style=&quot;font-family: 楷体_GB2312, 楷体;&quot;&gt;&lt;span style=&quot;font-family: 楷体_gb2312, 楷体;&quot;&gt;老赖（资料图）&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif;&quot;&gt;原标题：河南“执行风暴”追回“老赖”欠款280亿&lt;/p&gt;&lt;p style=&quot;margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif;&quot;&gt;本报讯 （记者赵文静）截至10月底，今年全省法院共新收执行案件26.9万件，同比增长50%，实际执结案件14.6万件执行到位280亿元，基本解决执行难取得突破性进展。昨日，省法院召开全省法院执行工作会议，通报攻克执行难战况。&lt;/p&gt;&lt;p style=&quot;margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif;&quot;&gt;今年以来，特别是5月16日全省法院向执行难宣战动员誓师大会以来，全省法院坚持“应录尽录、凡赖必录”，对有能力履行而拒不履行的，一律录入失信“黑名单”，今年来共录入失信名单21.6万例，3.6万名被执行人主动履行义务，失信名单发布率位居全国第五。截至10月底，全省法院共受理打击拒执公诉案件387件，自诉案件550件，已结684件，451人被判处刑罚，判刑人数超去年全年40%。&lt;/p&gt;&lt;p style=&quot;margin-bottom: 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif;&quot;&gt;营造打击“老赖”高压态势，强力推进执行攻坚。从9月1日起，全省三级法院集中开展了声势浩大的“百日执行风暴”专项活动，短短两个月，共对900案罚款2017万余元，对42&lt;/p&gt;', 'css', '', ''),
(10, 2, 0, '2016-11-20 12:52:32', 'efwefwefwef', '&lt;p&gt;wefwefwefwefwefwefwef&lt;/p&gt;', 'wefwefwefwefwefwef', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
