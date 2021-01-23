-- MySQL dump 10.13  Distrib 5.5.22, for Win32 (x86)
--
-- Host: localhost    Database: news
-- ------------------------------------------------------
-- Server version	5.5.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL COMMENT '文章标题',
  `content` text NOT NULL COMMENT '内容',
  `author_id` int(11) NOT NULL COMMENT '作者用户id',
  `publish_date` datetime NOT NULL COMMENT '发布时间',
  `visible` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可见',
  `cover_url` varchar(2048) DEFAULT NULL COMMENT '封面链接',
  PRIMARY KEY (`id`),
  KEY `article_user_id_fk` (`author_id`),
  CONSTRAINT `article_user_id_fk` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COMMENT='文章表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (4,'小伙花32万网恋，见面崩溃：“白富美”体重200斤','重要的事说三遍，\r\n\r\n![img1](http://pics0.baidu.com/feed/0ff41bd5ad6eddc42396477835ba25fa536633ac.jpeg?token=338ec73b1b51b7a1d6b4058959de8e15 \"img1\")\r\n网恋需谨慎！\r\n\r\n湖南省株洲市小伙小刘去年11月在网上玩游戏时结交了一名女性好友，日复一日的交流之下双方很快发展成了恋人关系，之后女友提出的任何要求小刘都尽量满足，从11月至今年3月，总共向女友转账了32万元，可令小刘万万没有想到的是，女友的身份、照片居然都是假的，这场甜蜜的恋爱竟是一场“网恋骗局” 。\r\n\r\n近日，荷塘警方将这名涉嫌诈骗的女子抓获。\r\n\r\n\r\n张某在朋友圈中发的“自拍照”\r\n\r\n“自拍照”身材纤细\r\n\r\n实际体重接近200斤\r\n\r\n今年29岁的刘先生一直单身，家人催促他找对象。去年11月，他在网游中结识女网友张某，两人在游戏中结为“夫妻”，随后还在微信中互加好友。\r\n\r\n刘先生说，张某在朋友圈发的“自拍”，无一不是皮肤白净、身材纤细、打扮时髦的靓照，还说自己正在准备出国留学的相关事宜。随着聊天的推进，两人陷入了热恋。\r\n\r\n交往中，张某多次以生病、没生活费、没钱交房租等理由，向刘先生索要钱财。可刘先生多次提出视频聊天和见面请求，都被拒绝了。\r\n\r\n今年2月，张某向刘先生求助，称父母出车祸了，急需一笔救命钱。刘先生二话没说，就在网贷平台借款20余万元，转账给了对方。“她说这算彩礼钱。”可当刘先生再次提出见面时，还是遭到了拒绝，这让他起了疑心。\r\n\r\n通过多方打探，今年3月，刘先生找到了张某在江苏的家。眼前的这名女子让刘先生觉得难以接受，“她体重接近200斤，比我还要‘魁梧’，好崩溃……”\r\n\r\n更让刘先生气愤的是，张某所说的个人情况、家庭情况全部都是假的。\r\n\r\n据统计，刘先生前后为张某花了32万元。因张某一直不愿退还费用，刘先生才决定报警。\r\n\r\n\r\n张某本人（通讯员 供图）\r\n\r\n同时与3名男子“网恋”\r\n\r\n诈骗金额超40万元\r\n![img2](http://pics3.baidu.com/feed/4b90f603738da977a1027c49bd306b1e8618e308.jpeg?token=1dd981db8bb72ffb375c8e5483e69e5b \"img2\")\r\n接到报案后，荷塘警方近日将张某传唤到案。\r\n\r\n经查，张某今年22岁，没有固定工作。为了筹集生活费和房租，从去年开始，她就在网上盗用“美照”，发布在自己的朋友圈，并以出国留学、父母出车祸等理由骗取钱财。“刚开始我只是想试试，没想到他对我的身份深信不疑，还动了真感情……”张某说。\r\n\r\n办案民警张文检介绍，张某在和刘先生“谈恋爱”的同时，还与其他两名男子保持“恋爱关系”，累计涉案金额超40万元。\r\n\r\n目前，张某因涉嫌诈骗罪已被警方依法刑事拘留。警方也想提醒广大市民，网络交友需谨慎，不要轻易发生经济往来。',1,'2020-11-12 04:53:17',1,'http://pics0.baidu.com/feed/0ff41bd5ad6eddc42396477835ba25fa536633ac.jpeg?token=338ec73b1b51b7a1d6b4058959de8e15'),(5,'小伙','重要的事说三遍，\r\n\r\n![img1](http://pics0.baidu.com/feed/0ff41bd5ad6eddc42396477835ba25fa536633ac.jpeg?token=338ec73b1b51b7a1d6b4058959de8e15 \"img1\")\r\n网恋需谨慎！\r\n\r\n湖南省株洲市小伙小刘去年11月在网上玩游戏时结交了一名女性好友，日复一日的交流之下双方很快发展成了恋人关系，之后女友提出的任何要求小刘都尽量满足，从11月至今年3月，总共向女友转账了32万元，可令小刘万万没有想到的是，女友的身份、照片居然都是假的，这场甜蜜的恋爱竟是一场“网恋骗局” 。\r\n\r\n近日，荷塘警方将这名涉嫌诈骗的女子抓获。\r\n\r\n\r\n张某在朋友圈中发的“自拍照”\r\n\r\n“自拍照”身材纤细\r\n\r\n实际体重接近200斤\r\n\r\n今年29岁的刘先生一直单身，家人催促他找对象。去年11月，他在网游中结识女网友张某，两人在游戏中结为“夫妻”，随后还在微信中互加好友。\r\n\r\n刘先生说，张某在朋友圈发的“自拍”，无一不是皮肤白净、身材纤细、打扮时髦的靓照，还说自己正在准备出国留学的相关事宜。随着聊天的推进，两人陷入了热恋。\r\n\r\n交往中，张某多次以生病、没生活费、没钱交房租等理由，向刘先生索要钱财。可刘先生多次提出视频聊天和见面请求，都被拒绝了。\r\n\r\n今年2月，张某向刘先生求助，称父母出车祸了，急需一笔救命钱。刘先生二话没说，就在网贷平台借款20余万元，转账给了对方。“她说这算彩礼钱。”可当刘先生再次提出见面时，还是遭到了拒绝，这让他起了疑心。\r\n\r\n通过多方打探，今年3月，刘先生找到了张某在江苏的家。眼前的这名女子让刘先生觉得难以接受，“她体重接近200斤，比我还要‘魁梧’，好崩溃……”\r\n\r\n更让刘先生气愤的是，张某所说的个人情况、家庭情况全部都是假的。\r\n\r\n据统计，刘先生前后为张某花了32万元。因张某一直不愿退还费用，刘先生才决定报警。\r\n\r\n\r\n张某本人（通讯员 供图）\r\n\r\n同时与3名男子“网恋”\r\n\r\n诈骗金额超40万元\r\n![img2](http://pics3.baidu.com/feed/4b90f603738da977a1027c49bd306b1e8618e308.jpeg?token=1dd981db8bb72ffb375c8e5483e69e5b \"img2\")\r\n接到报案后，荷塘警方近日将张某传唤到案。\r\n\r\n经查，张某今年22岁，没有固定工作。为了筹集生活费和房租，从去年开始，她就在网上盗用“美照”，发布在自己的朋友圈，并以出国留学、父母出车祸等理由骗取钱财。“刚开始我只是想试试，没想到他对我的身份深信不疑，还动了真感情……”张某说。\r\n\r\n办案民警张文检介绍，张某在和刘先生“谈恋爱”的同时，还与其他两名男子保持“恋爱关系”，累计涉案金额超40万元。\r\n\r\n目前，张某因涉嫌诈骗罪已被警方依法刑事拘留。警方也想提醒广大市民，网络交友需谨慎，不要轻易发生经济往来。',1,'2020-11-12 04:53:17',1,'http://pics0.baidu.com/feed/0ff41bd5ad6eddc42396477835ba25fa536633ac.jpeg?token=338ec73b1b51b7a1d6b4058959de8e15'),(6,'网恋','重要的事说三遍，\r\n\r\n![img1](http://pics0.baidu.com/feed/0ff41bd5ad6eddc42396477835ba25fa536633ac.jpeg?token=338ec73b1b51b7a1d6b4058959de8e15 \"img1\")\r\n网恋需谨慎！\r\n\r\n湖南省株洲市小伙小刘去年11月在网上玩游戏时结交了一名女性好友，日复一日的交流之下双方很快发展成了恋人关系，之后女友提出的任何要求小刘都尽量满足，从11月至今年3月，总共向女友转账了32万元，可令小刘万万没有想到的是，女友的身份、照片居然都是假的，这场甜蜜的恋爱竟是一场“网恋骗局” 。\r\n\r\n近日，荷塘警方将这名涉嫌诈骗的女子抓获。\r\n\r\n\r\n张某在朋友圈中发的“自拍照”\r\n\r\n“自拍照”身材纤细\r\n\r\n实际体重接近200斤\r\n\r\n今年29岁的刘先生一直单身，家人催促他找对象。去年11月，他在网游中结识女网友张某，两人在游戏中结为“夫妻”，随后还在微信中互加好友。\r\n\r\n刘先生说，张某在朋友圈发的“自拍”，无一不是皮肤白净、身材纤细、打扮时髦的靓照，还说自己正在准备出国留学的相关事宜。随着聊天的推进，两人陷入了热恋。\r\n\r\n交往中，张某多次以生病、没生活费、没钱交房租等理由，向刘先生索要钱财。可刘先生多次提出视频聊天和见面请求，都被拒绝了。\r\n\r\n今年2月，张某向刘先生求助，称父母出车祸了，急需一笔救命钱。刘先生二话没说，就在网贷平台借款20余万元，转账给了对方。“她说这算彩礼钱。”可当刘先生再次提出见面时，还是遭到了拒绝，这让他起了疑心。\r\n\r\n通过多方打探，今年3月，刘先生找到了张某在江苏的家。眼前的这名女子让刘先生觉得难以接受，“她体重接近200斤，比我还要‘魁梧’，好崩溃……”\r\n\r\n更让刘先生气愤的是，张某所说的个人情况、家庭情况全部都是假的。\r\n\r\n据统计，刘先生前后为张某花了32万元。因张某一直不愿退还费用，刘先生才决定报警。\r\n\r\n\r\n张某本人（通讯员 供图）\r\n\r\n同时与3名男子“网恋”\r\n\r\n诈骗金额超40万元\r\n![img2](http://pics3.baidu.com/feed/4b90f603738da977a1027c49bd306b1e8618e308.jpeg?token=1dd981db8bb72ffb375c8e5483e69e5b \"img2\")\r\n接到报案后，荷塘警方近日将张某传唤到案。\r\n\r\n经查，张某今年22岁，没有固定工作。为了筹集生活费和房租，从去年开始，她就在网上盗用“美照”，发布在自己的朋友圈，并以出国留学、父母出车祸等理由骗取钱财。“刚开始我只是想试试，没想到他对我的身份深信不疑，还动了真感情……”张某说。\r\n\r\n办案民警张文检介绍，张某在和刘先生“谈恋爱”的同时，还与其他两名男子保持“恋爱关系”，累计涉案金额超40万元。\r\n\r\n目前，张某因涉嫌诈骗罪已被警方依法刑事拘留。警方也想提醒广大市民，网络交友需谨慎，不要轻易发生经济往来。',1,'2020-11-12 04:53:17',1,'http://pics0.baidu.com/feed/0ff41bd5ad6eddc42396477835ba25fa536633ac.jpeg?token=338ec73b1b51b7a1d6b4058959de8e15'),(7,'1','重要的事说三遍，\r\n\r\n![img1](http://pics0.baidu.com/feed/0ff41bd5ad6eddc42396477835ba25fa536633ac.jpeg?token=338ec73b1b51b7a1d6b4058959de8e15 \"img1\")\r\n网恋需谨慎！\r\n\r\n湖南省株洲市小伙小刘去年11月在网上玩游戏时结交了一名女性好友，日复一日的交流之下双方很快发展成了恋人关系，之后女友提出的任何要求小刘都尽量满足，从11月至今年3月，总共向女友转账了32万元，可令小刘万万没有想到的是，女友的身份、照片居然都是假的，这场甜蜜的恋爱竟是一场“网恋骗局” 。\r\n\r\n近日，荷塘警方将这名涉嫌诈骗的女子抓获。\r\n\r\n\r\n张某在朋友圈中发的“自拍照”\r\n\r\n“自拍照”身材纤细\r\n\r\n实际体重接近200斤\r\n\r\n今年29岁的刘先生一直单身，家人催促他找对象。去年11月，他在网游中结识女网友张某，两人在游戏中结为“夫妻”，随后还在微信中互加好友。\r\n\r\n刘先生说，张某在朋友圈发的“自拍”，无一不是皮肤白净、身材纤细、打扮时髦的靓照，还说自己正在准备出国留学的相关事宜。随着聊天的推进，两人陷入了热恋。\r\n\r\n交往中，张某多次以生病、没生活费、没钱交房租等理由，向刘先生索要钱财。可刘先生多次提出视频聊天和见面请求，都被拒绝了。\r\n\r\n今年2月，张某向刘先生求助，称父母出车祸了，急需一笔救命钱。刘先生二话没说，就在网贷平台借款20余万元，转账给了对方。“她说这算彩礼钱。”可当刘先生再次提出见面时，还是遭到了拒绝，这让他起了疑心。\r\n\r\n通过多方打探，今年3月，刘先生找到了张某在江苏的家。眼前的这名女子让刘先生觉得难以接受，“她体重接近200斤，比我还要‘魁梧’，好崩溃……”\r\n\r\n更让刘先生气愤的是，张某所说的个人情况、家庭情况全部都是假的。\r\n\r\n据统计，刘先生前后为张某花了32万元。因张某一直不愿退还费用，刘先生才决定报警。\r\n\r\n\r\n张某本人（通讯员 供图）\r\n\r\n同时与3名男子“网恋”\r\n\r\n诈骗金额超40万元\r\n![img2](http://pics3.baidu.com/feed/4b90f603738da977a1027c49bd306b1e8618e308.jpeg?token=1dd981db8bb72ffb375c8e5483e69e5b \"img2\")\r\n接到报案后，荷塘警方近日将张某传唤到案。\r\n\r\n经查，张某今年22岁，没有固定工作。为了筹集生活费和房租，从去年开始，她就在网上盗用“美照”，发布在自己的朋友圈，并以出国留学、父母出车祸等理由骗取钱财。“刚开始我只是想试试，没想到他对我的身份深信不疑，还动了真感情……”张某说。\r\n\r\n办案民警张文检介绍，张某在和刘先生“谈恋爱”的同时，还与其他两名男子保持“恋爱关系”，累计涉案金额超40万元。\r\n\r\n目前，张某因涉嫌诈骗罪已被警方依法刑事拘留。警方也想提醒广大市民，网络交友需谨慎，不要轻易发生经济往来。',1,'2020-11-12 04:53:17',1,'http://pics0.baidu.com/feed/0ff41bd5ad6eddc42396477835ba25fa536633ac.jpeg?token=338ec73b1b51b7a1d6b4058959de8e15'),(8,'2','重要的事说三遍，\r\n\r\n![img1](http://pics0.baidu.com/feed/0ff41bd5ad6eddc42396477835ba25fa536633ac.jpeg?token=338ec73b1b51b7a1d6b4058959de8e15 \"img1\")\r\n网恋需谨慎！\r\n\r\n湖南省株洲市小伙小刘去年11月在网上玩游戏时结交了一名女性好友，日复一日的交流之下双方很快发展成了恋人关系，之后女友提出的任何要求小刘都尽量满足，从11月至今年3月，总共向女友转账了32万元，可令小刘万万没有想到的是，女友的身份、照片居然都是假的，这场甜蜜的恋爱竟是一场“网恋骗局” 。\r\n\r\n近日，荷塘警方将这名涉嫌诈骗的女子抓获。\r\n\r\n\r\n张某在朋友圈中发的“自拍照”\r\n\r\n“自拍照”身材纤细\r\n\r\n实际体重接近200斤\r\n\r\n今年29岁的刘先生一直单身，家人催促他找对象。去年11月，他在网游中结识女网友张某，两人在游戏中结为“夫妻”，随后还在微信中互加好友。\r\n\r\n刘先生说，张某在朋友圈发的“自拍”，无一不是皮肤白净、身材纤细、打扮时髦的靓照，还说自己正在准备出国留学的相关事宜。随着聊天的推进，两人陷入了热恋。\r\n\r\n交往中，张某多次以生病、没生活费、没钱交房租等理由，向刘先生索要钱财。可刘先生多次提出视频聊天和见面请求，都被拒绝了。\r\n\r\n今年2月，张某向刘先生求助，称父母出车祸了，急需一笔救命钱。刘先生二话没说，就在网贷平台借款20余万元，转账给了对方。“她说这算彩礼钱。”可当刘先生再次提出见面时，还是遭到了拒绝，这让他起了疑心。\r\n\r\n通过多方打探，今年3月，刘先生找到了张某在江苏的家。眼前的这名女子让刘先生觉得难以接受，“她体重接近200斤，比我还要‘魁梧’，好崩溃……”\r\n\r\n更让刘先生气愤的是，张某所说的个人情况、家庭情况全部都是假的。\r\n\r\n据统计，刘先生前后为张某花了32万元。因张某一直不愿退还费用，刘先生才决定报警。\r\n\r\n\r\n张某本人（通讯员 供图）\r\n\r\n同时与3名男子“网恋”\r\n\r\n诈骗金额超40万元\r\n![img2](http://pics3.baidu.com/feed/4b90f603738da977a1027c49bd306b1e8618e308.jpeg?token=1dd981db8bb72ffb375c8e5483e69e5b \"img2\")\r\n接到报案后，荷塘警方近日将张某传唤到案。\r\n\r\n经查，张某今年22岁，没有固定工作。为了筹集生活费和房租，从去年开始，她就在网上盗用“美照”，发布在自己的朋友圈，并以出国留学、父母出车祸等理由骗取钱财。“刚开始我只是想试试，没想到他对我的身份深信不疑，还动了真感情……”张某说。\r\n\r\n办案民警张文检介绍，张某在和刘先生“谈恋爱”的同时，还与其他两名男子保持“恋爱关系”，累计涉案金额超40万元。\r\n\r\n目前，张某因涉嫌诈骗罪已被警方依法刑事拘留。警方也想提醒广大市民，网络交友需谨慎，不要轻易发生经济往来。',1,'2020-11-12 04:53:17',1,'http://pics0.baidu.com/feed/0ff41bd5ad6eddc42396477835ba25fa536633ac.jpeg?token=338ec73b1b51b7a1d6b4058959de8e15'),(9,'3','重要的事说三遍，\r\n\r\n![img1](http://pics0.baidu.com/feed/0ff41bd5ad6eddc42396477835ba25fa536633ac.jpeg?token=338ec73b1b51b7a1d6b4058959de8e15 \"img1\")\r\n网恋需谨慎！\r\n\r\n湖南省株洲市小伙小刘去年11月在网上玩游戏时结交了一名女性好友，日复一日的交流之下双方很快发展成了恋人关系，之后女友提出的任何要求小刘都尽量满足，从11月至今年3月，总共向女友转账了32万元，可令小刘万万没有想到的是，女友的身份、照片居然都是假的，这场甜蜜的恋爱竟是一场“网恋骗局” 。\r\n\r\n近日，荷塘警方将这名涉嫌诈骗的女子抓获。\r\n\r\n\r\n张某在朋友圈中发的“自拍照”\r\n\r\n“自拍照”身材纤细\r\n\r\n实际体重接近200斤\r\n\r\n今年29岁的刘先生一直单身，家人催促他找对象。去年11月，他在网游中结识女网友张某，两人在游戏中结为“夫妻”，随后还在微信中互加好友。\r\n\r\n刘先生说，张某在朋友圈发的“自拍”，无一不是皮肤白净、身材纤细、打扮时髦的靓照，还说自己正在准备出国留学的相关事宜。随着聊天的推进，两人陷入了热恋。\r\n\r\n交往中，张某多次以生病、没生活费、没钱交房租等理由，向刘先生索要钱财。可刘先生多次提出视频聊天和见面请求，都被拒绝了。\r\n\r\n今年2月，张某向刘先生求助，称父母出车祸了，急需一笔救命钱。刘先生二话没说，就在网贷平台借款20余万元，转账给了对方。“她说这算彩礼钱。”可当刘先生再次提出见面时，还是遭到了拒绝，这让他起了疑心。\r\n\r\n通过多方打探，今年3月，刘先生找到了张某在江苏的家。眼前的这名女子让刘先生觉得难以接受，“她体重接近200斤，比我还要‘魁梧’，好崩溃……”\r\n\r\n更让刘先生气愤的是，张某所说的个人情况、家庭情况全部都是假的。\r\n\r\n据统计，刘先生前后为张某花了32万元。因张某一直不愿退还费用，刘先生才决定报警。\r\n\r\n\r\n张某本人（通讯员 供图）\r\n\r\n同时与3名男子“网恋”\r\n\r\n诈骗金额超40万元\r\n![img2](http://pics3.baidu.com/feed/4b90f603738da977a1027c49bd306b1e8618e308.jpeg?token=1dd981db8bb72ffb375c8e5483e69e5b \"img2\")\r\n接到报案后，荷塘警方近日将张某传唤到案。\r\n\r\n经查，张某今年22岁，没有固定工作。为了筹集生活费和房租，从去年开始，她就在网上盗用“美照”，发布在自己的朋友圈，并以出国留学、父母出车祸等理由骗取钱财。“刚开始我只是想试试，没想到他对我的身份深信不疑，还动了真感情……”张某说。\r\n\r\n办案民警张文检介绍，张某在和刘先生“谈恋爱”的同时，还与其他两名男子保持“恋爱关系”，累计涉案金额超40万元。\r\n\r\n目前，张某因涉嫌诈骗罪已被警方依法刑事拘留。警方也想提醒广大市民，网络交友需谨慎，不要轻易发生经济往来。',1,'2020-11-12 04:53:17',1,'http://pics0.baidu.com/feed/0ff41bd5ad6eddc42396477835ba25fa536633ac.jpeg?token=338ec73b1b51b7a1d6b4058959de8e15'),(10,'4','重要的事说三遍，\r\n\r\n![img1](http://pics0.baidu.com/feed/0ff41bd5ad6eddc42396477835ba25fa536633ac.jpeg?token=338ec73b1b51b7a1d6b4058959de8e15 \"img1\")\r\n网恋需谨慎！\r\n\r\n湖南省株洲市小伙小刘去年11月在网上玩游戏时结交了一名女性好友，日复一日的交流之下双方很快发展成了恋人关系，之后女友提出的任何要求小刘都尽量满足，从11月至今年3月，总共向女友转账了32万元，可令小刘万万没有想到的是，女友的身份、照片居然都是假的，这场甜蜜的恋爱竟是一场“网恋骗局” 。\r\n\r\n近日，荷塘警方将这名涉嫌诈骗的女子抓获。\r\n\r\n\r\n张某在朋友圈中发的“自拍照”\r\n\r\n“自拍照”身材纤细\r\n\r\n实际体重接近200斤\r\n\r\n今年29岁的刘先生一直单身，家人催促他找对象。去年11月，他在网游中结识女网友张某，两人在游戏中结为“夫妻”，随后还在微信中互加好友。\r\n\r\n刘先生说，张某在朋友圈发的“自拍”，无一不是皮肤白净、身材纤细、打扮时髦的靓照，还说自己正在准备出国留学的相关事宜。随着聊天的推进，两人陷入了热恋。\r\n\r\n交往中，张某多次以生病、没生活费、没钱交房租等理由，向刘先生索要钱财。可刘先生多次提出视频聊天和见面请求，都被拒绝了。\r\n\r\n今年2月，张某向刘先生求助，称父母出车祸了，急需一笔救命钱。刘先生二话没说，就在网贷平台借款20余万元，转账给了对方。“她说这算彩礼钱。”可当刘先生再次提出见面时，还是遭到了拒绝，这让他起了疑心。\r\n\r\n通过多方打探，今年3月，刘先生找到了张某在江苏的家。眼前的这名女子让刘先生觉得难以接受，“她体重接近200斤，比我还要‘魁梧’，好崩溃……”\r\n\r\n更让刘先生气愤的是，张某所说的个人情况、家庭情况全部都是假的。\r\n\r\n据统计，刘先生前后为张某花了32万元。因张某一直不愿退还费用，刘先生才决定报警。\r\n\r\n\r\n张某本人（通讯员 供图）\r\n\r\n同时与3名男子“网恋”\r\n\r\n诈骗金额超40万元\r\n![img2](http://pics3.baidu.com/feed/4b90f603738da977a1027c49bd306b1e8618e308.jpeg?token=1dd981db8bb72ffb375c8e5483e69e5b \"img2\")\r\n接到报案后，荷塘警方近日将张某传唤到案。\r\n\r\n经查，张某今年22岁，没有固定工作。为了筹集生活费和房租，从去年开始，她就在网上盗用“美照”，发布在自己的朋友圈，并以出国留学、父母出车祸等理由骗取钱财。“刚开始我只是想试试，没想到他对我的身份深信不疑，还动了真感情……”张某说。\r\n\r\n办案民警张文检介绍，张某在和刘先生“谈恋爱”的同时，还与其他两名男子保持“恋爱关系”，累计涉案金额超40万元。\r\n\r\n目前，张某因涉嫌诈骗罪已被警方依法刑事拘留。警方也想提醒广大市民，网络交友需谨慎，不要轻易发生经济往来。',1,'2020-11-12 04:53:17',1,'http://pics0.baidu.com/feed/0ff41bd5ad6eddc42396477835ba25fa536633ac.jpeg?token=338ec73b1b51b7a1d6b4058959de8e15'),(11,'5','重要的事说三遍，\r\n\r\n![img1](http://pics0.baidu.com/feed/0ff41bd5ad6eddc42396477835ba25fa536633ac.jpeg?token=338ec73b1b51b7a1d6b4058959de8e15 \"img1\")\r\n网恋需谨慎！\r\n\r\n湖南省株洲市小伙小刘去年11月在网上玩游戏时结交了一名女性好友，日复一日的交流之下双方很快发展成了恋人关系，之后女友提出的任何要求小刘都尽量满足，从11月至今年3月，总共向女友转账了32万元，可令小刘万万没有想到的是，女友的身份、照片居然都是假的，这场甜蜜的恋爱竟是一场“网恋骗局” 。\r\n\r\n近日，荷塘警方将这名涉嫌诈骗的女子抓获。\r\n\r\n\r\n张某在朋友圈中发的“自拍照”\r\n\r\n“自拍照”身材纤细\r\n\r\n实际体重接近200斤\r\n\r\n今年29岁的刘先生一直单身，家人催促他找对象。去年11月，他在网游中结识女网友张某，两人在游戏中结为“夫妻”，随后还在微信中互加好友。\r\n\r\n刘先生说，张某在朋友圈发的“自拍”，无一不是皮肤白净、身材纤细、打扮时髦的靓照，还说自己正在准备出国留学的相关事宜。随着聊天的推进，两人陷入了热恋。\r\n\r\n交往中，张某多次以生病、没生活费、没钱交房租等理由，向刘先生索要钱财。可刘先生多次提出视频聊天和见面请求，都被拒绝了。\r\n\r\n今年2月，张某向刘先生求助，称父母出车祸了，急需一笔救命钱。刘先生二话没说，就在网贷平台借款20余万元，转账给了对方。“她说这算彩礼钱。”可当刘先生再次提出见面时，还是遭到了拒绝，这让他起了疑心。\r\n\r\n通过多方打探，今年3月，刘先生找到了张某在江苏的家。眼前的这名女子让刘先生觉得难以接受，“她体重接近200斤，比我还要‘魁梧’，好崩溃……”\r\n\r\n更让刘先生气愤的是，张某所说的个人情况、家庭情况全部都是假的。\r\n\r\n据统计，刘先生前后为张某花了32万元。因张某一直不愿退还费用，刘先生才决定报警。\r\n\r\n\r\n张某本人（通讯员 供图）\r\n\r\n同时与3名男子“网恋”\r\n\r\n诈骗金额超40万元\r\n![img2](http://pics3.baidu.com/feed/4b90f603738da977a1027c49bd306b1e8618e308.jpeg?token=1dd981db8bb72ffb375c8e5483e69e5b \"img2\")\r\n接到报案后，荷塘警方近日将张某传唤到案。\r\n\r\n经查，张某今年22岁，没有固定工作。为了筹集生活费和房租，从去年开始，她就在网上盗用“美照”，发布在自己的朋友圈，并以出国留学、父母出车祸等理由骗取钱财。“刚开始我只是想试试，没想到他对我的身份深信不疑，还动了真感情……”张某说。\r\n\r\n办案民警张文检介绍，张某在和刘先生“谈恋爱”的同时，还与其他两名男子保持“恋爱关系”，累计涉案金额超40万元。\r\n\r\n目前，张某因涉嫌诈骗罪已被警方依法刑事拘留。警方也想提醒广大市民，网络交友需谨慎，不要轻易发生经济往来。',1,'2020-11-12 04:53:17',1,'http://pics0.baidu.com/feed/0ff41bd5ad6eddc42396477835ba25fa536633ac.jpeg?token=338ec73b1b51b7a1d6b4058959de8e15'),(12,'6','重要的事说三遍，\r\n\r\n![img1](http://pics0.baidu.com/feed/0ff41bd5ad6eddc42396477835ba25fa536633ac.jpeg?token=338ec73b1b51b7a1d6b4058959de8e15 \"img1\")\r\n网恋需谨慎！\r\n\r\n湖南省株洲市小伙小刘去年11月在网上玩游戏时结交了一名女性好友，日复一日的交流之下双方很快发展成了恋人关系，之后女友提出的任何要求小刘都尽量满足，从11月至今年3月，总共向女友转账了32万元，可令小刘万万没有想到的是，女友的身份、照片居然都是假的，这场甜蜜的恋爱竟是一场“网恋骗局” 。\r\n\r\n近日，荷塘警方将这名涉嫌诈骗的女子抓获。\r\n\r\n\r\n张某在朋友圈中发的“自拍照”\r\n\r\n“自拍照”身材纤细\r\n\r\n实际体重接近200斤\r\n\r\n今年29岁的刘先生一直单身，家人催促他找对象。去年11月，他在网游中结识女网友张某，两人在游戏中结为“夫妻”，随后还在微信中互加好友。\r\n\r\n刘先生说，张某在朋友圈发的“自拍”，无一不是皮肤白净、身材纤细、打扮时髦的靓照，还说自己正在准备出国留学的相关事宜。随着聊天的推进，两人陷入了热恋。\r\n\r\n交往中，张某多次以生病、没生活费、没钱交房租等理由，向刘先生索要钱财。可刘先生多次提出视频聊天和见面请求，都被拒绝了。\r\n\r\n今年2月，张某向刘先生求助，称父母出车祸了，急需一笔救命钱。刘先生二话没说，就在网贷平台借款20余万元，转账给了对方。“她说这算彩礼钱。”可当刘先生再次提出见面时，还是遭到了拒绝，这让他起了疑心。\r\n\r\n通过多方打探，今年3月，刘先生找到了张某在江苏的家。眼前的这名女子让刘先生觉得难以接受，“她体重接近200斤，比我还要‘魁梧’，好崩溃……”\r\n\r\n更让刘先生气愤的是，张某所说的个人情况、家庭情况全部都是假的。\r\n\r\n据统计，刘先生前后为张某花了32万元。因张某一直不愿退还费用，刘先生才决定报警。\r\n\r\n\r\n张某本人（通讯员 供图）\r\n\r\n同时与3名男子“网恋”\r\n\r\n诈骗金额超40万元\r\n![img2](http://pics3.baidu.com/feed/4b90f603738da977a1027c49bd306b1e8618e308.jpeg?token=1dd981db8bb72ffb375c8e5483e69e5b \"img2\")\r\n接到报案后，荷塘警方近日将张某传唤到案。\r\n\r\n经查，张某今年22岁，没有固定工作。为了筹集生活费和房租，从去年开始，她就在网上盗用“美照”，发布在自己的朋友圈，并以出国留学、父母出车祸等理由骗取钱财。“刚开始我只是想试试，没想到他对我的身份深信不疑，还动了真感情……”张某说。\r\n\r\n办案民警张文检介绍，张某在和刘先生“谈恋爱”的同时，还与其他两名男子保持“恋爱关系”，累计涉案金额超40万元。\r\n\r\n目前，张某因涉嫌诈骗罪已被警方依法刑事拘留。警方也想提醒广大市民，网络交友需谨慎，不要轻易发生经济往来。',1,'2020-11-12 04:53:17',1,'http://pics0.baidu.com/feed/0ff41bd5ad6eddc42396477835ba25fa536633ac.jpeg?token=338ec73b1b51b7a1d6b4058959de8e15'),(13,'7','重要的事说三遍，\r\n\r\n![img1](http://pics0.baidu.com/feed/0ff41bd5ad6eddc42396477835ba25fa536633ac.jpeg?token=338ec73b1b51b7a1d6b4058959de8e15 \"img1\")\r\n网恋需谨慎！\r\n\r\n湖南省株洲市小伙小刘去年11月在网上玩游戏时结交了一名女性好友，日复一日的交流之下双方很快发展成了恋人关系，之后女友提出的任何要求小刘都尽量满足，从11月至今年3月，总共向女友转账了32万元，可令小刘万万没有想到的是，女友的身份、照片居然都是假的，这场甜蜜的恋爱竟是一场“网恋骗局” 。\r\n\r\n近日，荷塘警方将这名涉嫌诈骗的女子抓获。\r\n\r\n\r\n张某在朋友圈中发的“自拍照”\r\n\r\n“自拍照”身材纤细\r\n\r\n实际体重接近200斤\r\n\r\n今年29岁的刘先生一直单身，家人催促他找对象。去年11月，他在网游中结识女网友张某，两人在游戏中结为“夫妻”，随后还在微信中互加好友。\r\n\r\n刘先生说，张某在朋友圈发的“自拍”，无一不是皮肤白净、身材纤细、打扮时髦的靓照，还说自己正在准备出国留学的相关事宜。随着聊天的推进，两人陷入了热恋。\r\n\r\n交往中，张某多次以生病、没生活费、没钱交房租等理由，向刘先生索要钱财。可刘先生多次提出视频聊天和见面请求，都被拒绝了。\r\n\r\n今年2月，张某向刘先生求助，称父母出车祸了，急需一笔救命钱。刘先生二话没说，就在网贷平台借款20余万元，转账给了对方。“她说这算彩礼钱。”可当刘先生再次提出见面时，还是遭到了拒绝，这让他起了疑心。\r\n\r\n通过多方打探，今年3月，刘先生找到了张某在江苏的家。眼前的这名女子让刘先生觉得难以接受，“她体重接近200斤，比我还要‘魁梧’，好崩溃……”\r\n\r\n更让刘先生气愤的是，张某所说的个人情况、家庭情况全部都是假的。\r\n\r\n据统计，刘先生前后为张某花了32万元。因张某一直不愿退还费用，刘先生才决定报警。\r\n\r\n\r\n张某本人（通讯员 供图）\r\n\r\n同时与3名男子“网恋”\r\n\r\n诈骗金额超40万元\r\n![img2](http://pics3.baidu.com/feed/4b90f603738da977a1027c49bd306b1e8618e308.jpeg?token=1dd981db8bb72ffb375c8e5483e69e5b \"img2\")\r\n接到报案后，荷塘警方近日将张某传唤到案。\r\n\r\n经查，张某今年22岁，没有固定工作。为了筹集生活费和房租，从去年开始，她就在网上盗用“美照”，发布在自己的朋友圈，并以出国留学、父母出车祸等理由骗取钱财。“刚开始我只是想试试，没想到他对我的身份深信不疑，还动了真感情……”张某说。\r\n\r\n办案民警张文检介绍，张某在和刘先生“谈恋爱”的同时，还与其他两名男子保持“恋爱关系”，累计涉案金额超40万元。\r\n\r\n目前，张某因涉嫌诈骗罪已被警方依法刑事拘留。警方也想提醒广大市民，网络交友需谨慎，不要轻易发生经济往来。',1,'2020-11-12 04:53:17',1,'http://pics0.baidu.com/feed/0ff41bd5ad6eddc42396477835ba25fa536633ac.jpeg?token=338ec73b1b51b7a1d6b4058959de8e15'),(14,'8','重要的事说三遍，\r\n\r\n![img1](http://pics0.baidu.com/feed/0ff41bd5ad6eddc42396477835ba25fa536633ac.jpeg?token=338ec73b1b51b7a1d6b4058959de8e15 \"img1\")\r\n网恋需谨慎！\r\n\r\n湖南省株洲市小伙小刘去年11月在网上玩游戏时结交了一名女性好友，日复一日的交流之下双方很快发展成了恋人关系，之后女友提出的任何要求小刘都尽量满足，从11月至今年3月，总共向女友转账了32万元，可令小刘万万没有想到的是，女友的身份、照片居然都是假的，这场甜蜜的恋爱竟是一场“网恋骗局” 。\r\n\r\n近日，荷塘警方将这名涉嫌诈骗的女子抓获。\r\n\r\n\r\n张某在朋友圈中发的“自拍照”\r\n\r\n“自拍照”身材纤细\r\n\r\n实际体重接近200斤\r\n\r\n今年29岁的刘先生一直单身，家人催促他找对象。去年11月，他在网游中结识女网友张某，两人在游戏中结为“夫妻”，随后还在微信中互加好友。\r\n\r\n刘先生说，张某在朋友圈发的“自拍”，无一不是皮肤白净、身材纤细、打扮时髦的靓照，还说自己正在准备出国留学的相关事宜。随着聊天的推进，两人陷入了热恋。\r\n\r\n交往中，张某多次以生病、没生活费、没钱交房租等理由，向刘先生索要钱财。可刘先生多次提出视频聊天和见面请求，都被拒绝了。\r\n\r\n今年2月，张某向刘先生求助，称父母出车祸了，急需一笔救命钱。刘先生二话没说，就在网贷平台借款20余万元，转账给了对方。“她说这算彩礼钱。”可当刘先生再次提出见面时，还是遭到了拒绝，这让他起了疑心。\r\n\r\n通过多方打探，今年3月，刘先生找到了张某在江苏的家。眼前的这名女子让刘先生觉得难以接受，“她体重接近200斤，比我还要‘魁梧’，好崩溃……”\r\n\r\n更让刘先生气愤的是，张某所说的个人情况、家庭情况全部都是假的。\r\n\r\n据统计，刘先生前后为张某花了32万元。因张某一直不愿退还费用，刘先生才决定报警。\r\n\r\n\r\n张某本人（通讯员 供图）\r\n\r\n同时与3名男子“网恋”\r\n\r\n诈骗金额超40万元\r\n![img2](http://pics3.baidu.com/feed/4b90f603738da977a1027c49bd306b1e8618e308.jpeg?token=1dd981db8bb72ffb375c8e5483e69e5b \"img2\")\r\n接到报案后，荷塘警方近日将张某传唤到案。\r\n\r\n经查，张某今年22岁，没有固定工作。为了筹集生活费和房租，从去年开始，她就在网上盗用“美照”，发布在自己的朋友圈，并以出国留学、父母出车祸等理由骗取钱财。“刚开始我只是想试试，没想到他对我的身份深信不疑，还动了真感情……”张某说。\r\n\r\n办案民警张文检介绍，张某在和刘先生“谈恋爱”的同时，还与其他两名男子保持“恋爱关系”，累计涉案金额超40万元。\r\n\r\n目前，张某因涉嫌诈骗罪已被警方依法刑事拘留。警方也想提醒广大市民，网络交友需谨慎，不要轻易发生经济往来。',1,'2020-11-12 04:53:17',1,'http://pics0.baidu.com/feed/0ff41bd5ad6eddc42396477835ba25fa536633ac.jpeg?token=338ec73b1b51b7a1d6b4058959de8e15'),(15,'9','重要的事说三遍，\r\n\r\n![img1](http://pics0.baidu.com/feed/0ff41bd5ad6eddc42396477835ba25fa536633ac.jpeg?token=338ec73b1b51b7a1d6b4058959de8e15 \"img1\")\r\n网恋需谨慎！\r\n\r\n湖南省株洲市小伙小刘去年11月在网上玩游戏时结交了一名女性好友，日复一日的交流之下双方很快发展成了恋人关系，之后女友提出的任何要求小刘都尽量满足，从11月至今年3月，总共向女友转账了32万元，可令小刘万万没有想到的是，女友的身份、照片居然都是假的，这场甜蜜的恋爱竟是一场“网恋骗局” 。\r\n\r\n近日，荷塘警方将这名涉嫌诈骗的女子抓获。\r\n\r\n\r\n张某在朋友圈中发的“自拍照”\r\n\r\n“自拍照”身材纤细\r\n\r\n实际体重接近200斤\r\n\r\n今年29岁的刘先生一直单身，家人催促他找对象。去年11月，他在网游中结识女网友张某，两人在游戏中结为“夫妻”，随后还在微信中互加好友。\r\n\r\n刘先生说，张某在朋友圈发的“自拍”，无一不是皮肤白净、身材纤细、打扮时髦的靓照，还说自己正在准备出国留学的相关事宜。随着聊天的推进，两人陷入了热恋。\r\n\r\n交往中，张某多次以生病、没生活费、没钱交房租等理由，向刘先生索要钱财。可刘先生多次提出视频聊天和见面请求，都被拒绝了。\r\n\r\n今年2月，张某向刘先生求助，称父母出车祸了，急需一笔救命钱。刘先生二话没说，就在网贷平台借款20余万元，转账给了对方。“她说这算彩礼钱。”可当刘先生再次提出见面时，还是遭到了拒绝，这让他起了疑心。\r\n\r\n通过多方打探，今年3月，刘先生找到了张某在江苏的家。眼前的这名女子让刘先生觉得难以接受，“她体重接近200斤，比我还要‘魁梧’，好崩溃……”\r\n\r\n更让刘先生气愤的是，张某所说的个人情况、家庭情况全部都是假的。\r\n\r\n据统计，刘先生前后为张某花了32万元。因张某一直不愿退还费用，刘先生才决定报警。\r\n\r\n\r\n张某本人（通讯员 供图）\r\n\r\n同时与3名男子“网恋”\r\n\r\n诈骗金额超40万元\r\n![img2](http://pics3.baidu.com/feed/4b90f603738da977a1027c49bd306b1e8618e308.jpeg?token=1dd981db8bb72ffb375c8e5483e69e5b \"img2\")\r\n接到报案后，荷塘警方近日将张某传唤到案。\r\n\r\n经查，张某今年22岁，没有固定工作。为了筹集生活费和房租，从去年开始，她就在网上盗用“美照”，发布在自己的朋友圈，并以出国留学、父母出车祸等理由骗取钱财。“刚开始我只是想试试，没想到他对我的身份深信不疑，还动了真感情……”张某说。\r\n\r\n办案民警张文检介绍，张某在和刘先生“谈恋爱”的同时，还与其他两名男子保持“恋爱关系”，累计涉案金额超40万元。\r\n\r\n目前，张某因涉嫌诈骗罪已被警方依法刑事拘留。警方也想提醒广大市民，网络交友需谨慎，不要轻易发生经济往来。',1,'2020-11-12 04:53:17',1,'http://pics0.baidu.com/feed/0ff41bd5ad6eddc42396477835ba25fa536633ac.jpeg?token=338ec73b1b51b7a1d6b4058959de8e15');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_section`
--

DROP TABLE IF EXISTS `article_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `article_section_article_id_fk` (`article_id`),
  KEY `article_section_section_id_fk` (`section_id`),
  CONSTRAINT `article_section_article_id_fk` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  CONSTRAINT `article_section_section_id_fk` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='板块与文章关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_section`
--

LOCK TABLES `article_section` WRITE;
/*!40000 ALTER TABLE `article_section` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL COMMENT '被评论的文章',
  `author_id` int(11) NOT NULL COMMENT ' 评论者',
  `content` text NOT NULL COMMENT '评论内容',
  `publish_date` datetime NOT NULL COMMENT '发布时间',
  `is_visible` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可见',
  PRIMARY KEY (`id`),
  KEY `comment_article_id_fk` (`article_id`),
  KEY `comment_user_id_fk` (`author_id`),
  CONSTRAINT `comment_article_id_fk` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  CONSTRAINT `comment_user_id_fk` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folder`
--

DROP TABLE IF EXISTS `folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creator_id` int(11) NOT NULL COMMENT '创建者ID',
  `title` int(11) NOT NULL COMMENT '收藏夹标题',
  `intro` varchar(100) DEFAULT NULL COMMENT '收藏夹描述',
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `favorites_creator_id_index` (`creator_id`),
  CONSTRAINT `favorites_user_id_fk` FOREIGN KEY (`creator_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='收藏夹';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folder`
--

LOCK TABLES `folder` WRITE;
/*!40000 ALTER TABLE `folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folder_article`
--

DROP TABLE IF EXISTS `folder_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folder_article` (
  `folder_id` int(11) NOT NULL COMMENT '收藏夹id',
  `article_id` int(11) NOT NULL COMMENT '文章id',
  PRIMARY KEY (`folder_id`,`article_id`),
  KEY `folder_article_folder_id_index` (`folder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='文件夹与文章关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folder_article`
--

LOCK TABLES `folder_article` WRITE;
/*!40000 ALTER TABLE `folder_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `folder_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `img`
--

DROP TABLE IF EXISTS `img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uploader_id` int(11) NOT NULL,
  `upload_date` datetime NOT NULL,
  `oos_path` varchar(2048) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `img_user_id_fk` (`uploader_id`),
  CONSTRAINT `img_user_id_fk` FOREIGN KEY (`uploader_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='图片表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `img`
--

LOCK TABLES `img` WRITE;
/*!40000 ALTER TABLE `img` DISABLE KEYS */;
/*!40000 ALTER TABLE `img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL COMMENT '板块名称',
  `is_visible` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否可见',
  PRIMARY KEY (`id`),
  UNIQUE KEY `section_name_uindex` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='板块';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(10) NOT NULL,
  `role` tinyint(1) NOT NULL COMMENT '用户角色',
  `is_ban` tinyint(1) NOT NULL,
  `password` varchar(1024) DEFAULT NULL,
  `mail` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'lyl',0,0,'$2a$10$M/TG.AKblIRMMQdZQ6YDx.em08fInug6e2KvOeA/vqpkTK4qaUM3W','mail'),(2,'nhb',1,0,'$2a$10$nnRfc6vsoVAm6YnuG/t/jOzx/DEKUxpCQ1Ij7HSfnEpN/YS8Ts75q','mail'),(3,'1',4,0,'$2a$10$nnRfc6vsoVAm6YnuG/t/jOzx/DEKUxpCQ1Ij7HSfnEpN/YS8Ts75q','mail'),(4,'2',4,0,'$2a$10$nnRfc6vsoVAm6YnuG/t/jOzx/DEKUxpCQ1Ij7HSfnEpN/YS8Ts75q','mail'),(5,'3',4,0,'$2a$10$nnRfc6vsoVAm6YnuG/t/jOzx/DEKUxpCQ1Ij7HSfnEpN/YS8Ts75q','mail'),(6,'4',4,0,'$2a$10$nnRfc6vsoVAm6YnuG/t/jOzx/DEKUxpCQ1Ij7HSfnEpN/YS8Ts75q','mail'),(7,'5',4,0,'$2a$10$nnRfc6vsoVAm6YnuG/t/jOzx/DEKUxpCQ1Ij7HSfnEpN/YS8Ts75q','mail'),(8,'6',4,0,'$2a$10$nnRfc6vsoVAm6YnuG/t/jOzx/DEKUxpCQ1Ij7HSfnEpN/YS8Ts75q','mail'),(10,'new1',4,0,'$2a$10$Fy5XX5xgCoHvrC6xVR4dHugZ7v58oL1P5zr7GphFYCgcVxc7IqU22','xxx@example.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_like`
--

DROP TABLE IF EXISTS `user_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_like` (
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`user_id`),
  KEY `user_like_user_id_fk` (`user_id`),
  CONSTRAINT `user_like_article_id_fk` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  CONSTRAINT `user_like_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_like`
--

LOCK TABLES `user_like` WRITE;
/*!40000 ALTER TABLE `user_like` DISABLE KEYS */;
INSERT INTO `user_like` VALUES (6,2),(6,4),(10,4),(6,5),(8,5),(8,6),(6,8),(8,8);
/*!40000 ALTER TABLE `user_like` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-02 17:14:15
