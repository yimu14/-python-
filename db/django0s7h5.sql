-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: django0s7h5
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `django0s7h5`
--

/*!40000 DROP DATABASE IF EXISTS `django0s7h5`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `django0s7h5` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `django0s7h5`;

--
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aboutus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus`
--

LOCK TABLES `aboutus` WRITE;
/*!40000 ALTER TABLE `aboutus` DISABLE KEYS */;
INSERT INTO `aboutus` VALUES (1,'2023-02-28 13:33:16','关于我们','ABOUT US','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?\n你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。','upload/aboutus_picture1.jpg','upload/aboutus_picture2.jpg','upload/aboutus_picture3.jpg');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='论坛交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (91,'2023-02-28 13:33:16','帖子标题1','帖子内容1',0,1,'用户名1','upload/forum_avatarurl1.jpg,upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg','开放'),(92,'2023-02-28 13:33:16','帖子标题2','帖子内容2',0,2,'用户名2','upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg','开放'),(93,'2023-02-28 13:33:16','帖子标题3','帖子内容3',0,3,'用户名3','upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg','开放'),(94,'2023-02-28 13:33:16','帖子标题4','帖子内容4',0,4,'用户名4','upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg','开放'),(95,'2023-02-28 13:33:16','帖子标题5','帖子内容5',0,5,'用户名5','upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg','开放'),(96,'2023-02-28 13:33:16','帖子标题6','帖子内容6',0,6,'用户名6','upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg','开放'),(97,'2023-02-28 13:33:16','帖子标题7','帖子内容7',0,7,'用户名7','upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg','开放'),(98,'2023-02-28 13:33:16','帖子标题8','帖子内容8',0,8,'用户名8','upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg,upload/forum_avatarurl10.jpg','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2023-02-28 13:33:16','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(102,'2023-02-28 13:33:16','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(103,'2023-02-28 13:33:16','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(104,'2023-02-28 13:33:16','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(105,'2023-02-28 13:33:16','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(106,'2023-02-28 13:33:16','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(107,'2023-02-28 13:33:16','Leave未必是一种痛苦','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture7.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(108,'2023-02-28 13:33:16','坚持才会成功','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture8.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qinshixinxi`
--

DROP TABLE IF EXISTS `qinshixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qinshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sushehao` varchar(200) NOT NULL COMMENT '宿舍号',
  `susheleixing` varchar(200) NOT NULL COMMENT '宿舍类型',
  `fengmian` longtext COMMENT '封面',
  `loudong` varchar(200) DEFAULT NULL COMMENT '楼栋',
  `louceng` varchar(200) DEFAULT NULL COMMENT '楼层',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `kezhurenshu` int(11) DEFAULT NULL COMMENT '可住人数',
  `susherenyuan` longtext COMMENT '宿舍人员',
  `sushexiangqing` longtext COMMENT '宿舍详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='寝室信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qinshixinxi`
--

LOCK TABLES `qinshixinxi` WRITE;
/*!40000 ALTER TABLE `qinshixinxi` DISABLE KEYS */;
INSERT INTO `qinshixinxi` VALUES (21,'2023-02-28 13:33:15','宿舍号1','男生','upload/qinshixinxi_fengmian1.jpg,upload/qinshixinxi_fengmian2.jpg,upload/qinshixinxi_fengmian3.jpg','楼栋1','楼层1','位置1',1,'宿舍人员1','宿舍详情1'),(22,'2023-02-28 13:33:15','宿舍号2','男生','upload/qinshixinxi_fengmian2.jpg,upload/qinshixinxi_fengmian3.jpg,upload/qinshixinxi_fengmian4.jpg','楼栋2','楼层2','位置2',2,'宿舍人员2','宿舍详情2'),(23,'2023-02-28 13:33:15','宿舍号3','男生','upload/qinshixinxi_fengmian3.jpg,upload/qinshixinxi_fengmian4.jpg,upload/qinshixinxi_fengmian5.jpg','楼栋3','楼层3','位置3',3,'宿舍人员3','宿舍详情3'),(24,'2023-02-28 13:33:15','宿舍号4','男生','upload/qinshixinxi_fengmian4.jpg,upload/qinshixinxi_fengmian5.jpg,upload/qinshixinxi_fengmian6.jpg','楼栋4','楼层4','位置4',4,'宿舍人员4','宿舍详情4'),(25,'2023-02-28 13:33:15','宿舍号5','男生','upload/qinshixinxi_fengmian5.jpg,upload/qinshixinxi_fengmian6.jpg,upload/qinshixinxi_fengmian7.jpg','楼栋5','楼层5','位置5',5,'宿舍人员5','宿舍详情5'),(26,'2023-02-28 13:33:15','宿舍号6','男生','upload/qinshixinxi_fengmian6.jpg,upload/qinshixinxi_fengmian7.jpg,upload/qinshixinxi_fengmian8.jpg','楼栋6','楼层6','位置6',6,'宿舍人员6','宿舍详情6'),(27,'2023-02-28 13:33:15','宿舍号7','男生','upload/qinshixinxi_fengmian7.jpg,upload/qinshixinxi_fengmian8.jpg,upload/qinshixinxi_fengmian9.jpg','楼栋7','楼层7','位置7',7,'宿舍人员7','宿舍详情7'),(28,'2023-02-28 13:33:15','宿舍号8','男生','upload/qinshixinxi_fengmian8.jpg,upload/qinshixinxi_fengmian9.jpg,upload/qinshixinxi_fengmian10.jpg','楼栋8','楼层8','位置8',8,'宿舍人员8','宿舍详情8');
/*!40000 ALTER TABLE `qinshixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruzhudengji`
--

DROP TABLE IF EXISTS `ruzhudengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ruzhudengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sushehao` varchar(200) NOT NULL COMMENT '宿舍号',
  `loudong` varchar(200) DEFAULT NULL COMMENT '楼栋',
  `louceng` varchar(200) DEFAULT NULL COMMENT '楼层',
  `chuangweihao` varchar(200) NOT NULL COMMENT '床位号',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='入住登记';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruzhudengji`
--

LOCK TABLES `ruzhudengji` WRITE;
/*!40000 ALTER TABLE `ruzhudengji` DISABLE KEYS */;
INSERT INTO `ruzhudengji` VALUES (31,'2023-02-28 13:33:15','宿舍号1','楼栋1','楼层1','床位号1','学号1','姓名1','班级1','院系1','性别1','专业1','已入住','2023-02-28','备注1'),(32,'2023-02-28 13:33:15','宿舍号2','楼栋2','楼层2','床位号2','学号2','姓名2','班级2','院系2','性别2','专业2','已入住','2023-02-28','备注2'),(33,'2023-02-28 13:33:15','宿舍号3','楼栋3','楼层3','床位号3','学号3','姓名3','班级3','院系3','性别3','专业3','已入住','2023-02-28','备注3'),(34,'2023-02-28 13:33:15','宿舍号4','楼栋4','楼层4','床位号4','学号4','姓名4','班级4','院系4','性别4','专业4','已入住','2023-02-28','备注4'),(35,'2023-02-28 13:33:15','宿舍号5','楼栋5','楼层5','床位号5','学号5','姓名5','班级5','院系5','性别5','专业5','已入住','2023-02-28','备注5'),(36,'2023-02-28 13:33:15','宿舍号6','楼栋6','楼层6','床位号6','学号6','姓名6','班级6','院系6','性别6','专业6','已入住','2023-02-28','备注6'),(37,'2023-02-28 13:33:15','宿舍号7','楼栋7','楼层7','床位号7','学号7','姓名7','班级7','院系7','性别7','专业7','已入住','2023-02-28','备注7'),(38,'2023-02-28 13:33:15','宿舍号8','楼栋8','楼层8','床位号8','学号8','姓名8','班级8','院系8','性别8','专业8','已入住','2023-02-28','备注8');
/*!40000 ALTER TABLE `ruzhudengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuidianfei`
--

DROP TABLE IF EXISTS `shuidianfei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuidianfei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuefen` varchar(200) DEFAULT NULL COMMENT '月份',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `jiaofeixiangmu` varchar(200) NOT NULL COMMENT '缴费项目',
  `jine` float DEFAULT NULL COMMENT '金额',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='水电费';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuidianfei`
--

LOCK TABLES `shuidianfei` WRITE;
/*!40000 ALTER TABLE `shuidianfei` DISABLE KEYS */;
INSERT INTO `shuidianfei` VALUES (61,'2023-02-28 13:33:16','一月','2023-02-28','学号1','姓名1','宿舍号1','水费',1,'备注1','未支付'),(62,'2023-02-28 13:33:16','一月','2023-02-28','学号2','姓名2','宿舍号2','水费',2,'备注2','未支付'),(63,'2023-02-28 13:33:16','一月','2023-02-28','学号3','姓名3','宿舍号3','水费',3,'备注3','未支付'),(64,'2023-02-28 13:33:16','一月','2023-02-28','学号4','姓名4','宿舍号4','水费',4,'备注4','未支付'),(65,'2023-02-28 13:33:16','一月','2023-02-28','学号5','姓名5','宿舍号5','水费',5,'备注5','未支付'),(66,'2023-02-28 13:33:16','一月','2023-02-28','学号6','姓名6','宿舍号6','水费',6,'备注6','未支付'),(67,'2023-02-28 13:33:16','一月','2023-02-28','学号7','姓名7','宿舍号7','水费',7,'备注7','未支付'),(68,'2023-02-28 13:33:16','一月','2023-02-28','学号8','姓名8','宿舍号8','水费',8,'备注8','未支付');
/*!40000 ALTER TABLE `shuidianfei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sushebaoxiu`
--

DROP TABLE IF EXISTS `sushebaoxiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sushebaoxiu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baoxiumingcheng` varchar(200) NOT NULL COMMENT '报修名称',
  `guzhangtupian` longtext COMMENT '故障图片',
  `baoxiuneirong` longtext COMMENT '报修内容',
  `baoxiuriqi` date DEFAULT NULL COMMENT '报修日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='宿舍报修';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sushebaoxiu`
--

LOCK TABLES `sushebaoxiu` WRITE;
/*!40000 ALTER TABLE `sushebaoxiu` DISABLE KEYS */;
INSERT INTO `sushebaoxiu` VALUES (81,'2023-02-28 13:33:16','报修名称1','upload/sushebaoxiu_guzhangtupian1.jpg,upload/sushebaoxiu_guzhangtupian2.jpg,upload/sushebaoxiu_guzhangtupian3.jpg','报修内容1','2023-02-28','学号1','姓名1','手机1','宿舍号1','是',''),(82,'2023-02-28 13:33:16','报修名称2','upload/sushebaoxiu_guzhangtupian2.jpg,upload/sushebaoxiu_guzhangtupian3.jpg,upload/sushebaoxiu_guzhangtupian4.jpg','报修内容2','2023-02-28','学号2','姓名2','手机2','宿舍号2','是',''),(83,'2023-02-28 13:33:16','报修名称3','upload/sushebaoxiu_guzhangtupian3.jpg,upload/sushebaoxiu_guzhangtupian4.jpg,upload/sushebaoxiu_guzhangtupian5.jpg','报修内容3','2023-02-28','学号3','姓名3','手机3','宿舍号3','是',''),(84,'2023-02-28 13:33:16','报修名称4','upload/sushebaoxiu_guzhangtupian4.jpg,upload/sushebaoxiu_guzhangtupian5.jpg,upload/sushebaoxiu_guzhangtupian6.jpg','报修内容4','2023-02-28','学号4','姓名4','手机4','宿舍号4','是',''),(85,'2023-02-28 13:33:16','报修名称5','upload/sushebaoxiu_guzhangtupian5.jpg,upload/sushebaoxiu_guzhangtupian6.jpg,upload/sushebaoxiu_guzhangtupian7.jpg','报修内容5','2023-02-28','学号5','姓名5','手机5','宿舍号5','是',''),(86,'2023-02-28 13:33:16','报修名称6','upload/sushebaoxiu_guzhangtupian6.jpg,upload/sushebaoxiu_guzhangtupian7.jpg,upload/sushebaoxiu_guzhangtupian8.jpg','报修内容6','2023-02-28','学号6','姓名6','手机6','宿舍号6','是',''),(87,'2023-02-28 13:33:16','报修名称7','upload/sushebaoxiu_guzhangtupian7.jpg,upload/sushebaoxiu_guzhangtupian8.jpg,upload/sushebaoxiu_guzhangtupian9.jpg','报修内容7','2023-02-28','学号7','姓名7','手机7','宿舍号7','是',''),(88,'2023-02-28 13:33:16','报修名称8','upload/sushebaoxiu_guzhangtupian8.jpg,upload/sushebaoxiu_guzhangtupian9.jpg,upload/sushebaoxiu_guzhangtupian10.jpg','报修内容8','2023-02-28','学号8','姓名8','手机8','宿舍号8','是','');
/*!40000 ALTER TABLE `sushebaoxiu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `susheweisheng`
--

DROP TABLE IF EXISTS `susheweisheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `susheweisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sushehao` varchar(200) NOT NULL COMMENT '宿舍号',
  `susheleixing` varchar(200) DEFAULT NULL COMMENT '宿舍类型',
  `fengmian` longtext COMMENT '封面',
  `weishengqingkuang` varchar(200) NOT NULL COMMENT '卫生情况',
  `weishengpingfen` float NOT NULL COMMENT '卫生评分',
  `jianchariqi` date DEFAULT NULL COMMENT '检查日期',
  `jiancharen` varchar(200) NOT NULL COMMENT '检查人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='宿舍卫生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `susheweisheng`
--

LOCK TABLES `susheweisheng` WRITE;
/*!40000 ALTER TABLE `susheweisheng` DISABLE KEYS */;
INSERT INTO `susheweisheng` VALUES (71,'2023-02-28 13:33:16','宿舍号1','宿舍类型1','upload/susheweisheng_fengmian1.jpg,upload/susheweisheng_fengmian2.jpg,upload/susheweisheng_fengmian3.jpg','已打扫',1,'2023-02-28','检查人1'),(72,'2023-02-28 13:33:16','宿舍号2','宿舍类型2','upload/susheweisheng_fengmian2.jpg,upload/susheweisheng_fengmian3.jpg,upload/susheweisheng_fengmian4.jpg','已打扫',2,'2023-02-28','检查人2'),(73,'2023-02-28 13:33:16','宿舍号3','宿舍类型3','upload/susheweisheng_fengmian3.jpg,upload/susheweisheng_fengmian4.jpg,upload/susheweisheng_fengmian5.jpg','已打扫',3,'2023-02-28','检查人3'),(74,'2023-02-28 13:33:16','宿舍号4','宿舍类型4','upload/susheweisheng_fengmian4.jpg,upload/susheweisheng_fengmian5.jpg,upload/susheweisheng_fengmian6.jpg','已打扫',4,'2023-02-28','检查人4'),(75,'2023-02-28 13:33:16','宿舍号5','宿舍类型5','upload/susheweisheng_fengmian5.jpg,upload/susheweisheng_fengmian6.jpg,upload/susheweisheng_fengmian7.jpg','已打扫',5,'2023-02-28','检查人5'),(76,'2023-02-28 13:33:16','宿舍号6','宿舍类型6','upload/susheweisheng_fengmian6.jpg,upload/susheweisheng_fengmian7.jpg,upload/susheweisheng_fengmian8.jpg','已打扫',6,'2023-02-28','检查人6'),(77,'2023-02-28 13:33:16','宿舍号7','宿舍类型7','upload/susheweisheng_fengmian7.jpg,upload/susheweisheng_fengmian8.jpg,upload/susheweisheng_fengmian9.jpg','已打扫',7,'2023-02-28','检查人7'),(78,'2023-02-28 13:33:16','宿舍号8','宿舍类型8','upload/susheweisheng_fengmian8.jpg,upload/susheweisheng_fengmian9.jpg,upload/susheweisheng_fengmian10.jpg','已打扫',8,'2023-02-28','检查人8');
/*!40000 ALTER TABLE `susheweisheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemintro`
--

DROP TABLE IF EXISTS `systemintro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemintro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemintro`
--

LOCK TABLES `systemintro` WRITE;
/*!40000 ALTER TABLE `systemintro` DISABLE KEYS */;
INSERT INTO `systemintro` VALUES (1,'2023-02-28 13:33:16','系统简介','SYSTEM INTRODUCTION','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。','upload/systemintro_picture1.jpg','upload/systemintro_picture2.jpg','upload/systemintro_picture3.jpg');
/*!40000 ALTER TABLE `systemintro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-02-28 13:33:16');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wanguidengji`
--

DROP TABLE IF EXISTS `wanguidengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wanguidengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `chuangweihao` varchar(200) DEFAULT NULL COMMENT '床位号',
  `wanguiyuanyin` longtext COMMENT '晚归原因',
  `wanguishijian` datetime DEFAULT NULL COMMENT '晚归时间',
  `chulicuoshi` longtext COMMENT '处理措施',
  `dengjiren` varchar(200) NOT NULL COMMENT '登记人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='晚归登记';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wanguidengji`
--

LOCK TABLES `wanguidengji` WRITE;
/*!40000 ALTER TABLE `wanguidengji` DISABLE KEYS */;
INSERT INTO `wanguidengji` VALUES (41,'2023-02-28 13:33:15','学号1','姓名1','院系1','班级1','宿舍号1','床位号1','晚归原因1','2023-02-28 21:33:15','处理措施1','登记人1'),(42,'2023-02-28 13:33:15','学号2','姓名2','院系2','班级2','宿舍号2','床位号2','晚归原因2','2023-02-28 21:33:15','处理措施2','登记人2'),(43,'2023-02-28 13:33:15','学号3','姓名3','院系3','班级3','宿舍号3','床位号3','晚归原因3','2023-02-28 21:33:15','处理措施3','登记人3'),(44,'2023-02-28 13:33:15','学号4','姓名4','院系4','班级4','宿舍号4','床位号4','晚归原因4','2023-02-28 21:33:15','处理措施4','登记人4'),(45,'2023-02-28 13:33:15','学号5','姓名5','院系5','班级5','宿舍号5','床位号5','晚归原因5','2023-02-28 21:33:15','处理措施5','登记人5'),(46,'2023-02-28 13:33:15','学号6','姓名6','院系6','班级6','宿舍号6','床位号6','晚归原因6','2023-02-28 21:33:15','处理措施6','登记人6'),(47,'2023-02-28 13:33:15','学号7','姓名7','院系7','班级7','宿舍号7','床位号7','晚归原因7','2023-02-28 21:33:15','处理措施7','登记人7'),(48,'2023-02-28 13:33:16','学号8','姓名8','院系8','班级8','宿舍号8','床位号8','晚归原因8','2023-02-28 21:33:16','处理措施8','登记人8');
/*!40000 ALTER TABLE `wanguidengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wupinjinchudengji`
--

DROP TABLE IF EXISTS `wupinjinchudengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wupinjinchudengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinmingcheng` varchar(200) NOT NULL COMMENT '物品名称',
  `wupinshuliang` int(11) DEFAULT NULL COMMENT '物品数量',
  `chiyouzhe` varchar(200) DEFAULT NULL COMMENT '持有者',
  `wupinjianshu` varchar(200) DEFAULT NULL COMMENT '物品简述',
  `churuloudong` varchar(200) NOT NULL COMMENT '出入楼栋',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `dengjiren` varchar(200) DEFAULT NULL COMMENT '登记人',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='物品进出登记';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wupinjinchudengji`
--

LOCK TABLES `wupinjinchudengji` WRITE;
/*!40000 ALTER TABLE `wupinjinchudengji` DISABLE KEYS */;
INSERT INTO `wupinjinchudengji` VALUES (51,'2023-02-28 13:33:16','物品名称1',1,'持有者1','物品简述1','出入楼栋1','进入','2023-02-28 21:33:16','备注1','登记人1',1),(52,'2023-02-28 13:33:16','物品名称2',2,'持有者2','物品简述2','出入楼栋2','进入','2023-02-28 21:33:16','备注2','登记人2',2),(53,'2023-02-28 13:33:16','物品名称3',3,'持有者3','物品简述3','出入楼栋3','进入','2023-02-28 21:33:16','备注3','登记人3',3),(54,'2023-02-28 13:33:16','物品名称4',4,'持有者4','物品简述4','出入楼栋4','进入','2023-02-28 21:33:16','备注4','登记人4',4),(55,'2023-02-28 13:33:16','物品名称5',5,'持有者5','物品简述5','出入楼栋5','进入','2023-02-28 21:33:16','备注5','登记人5',5),(56,'2023-02-28 13:33:16','物品名称6',6,'持有者6','物品简述6','出入楼栋6','进入','2023-02-28 21:33:16','备注6','登记人6',6),(57,'2023-02-28 13:33:16','物品名称7',7,'持有者7','物品简述7','出入楼栋7','进入','2023-02-28 21:33:16','备注7','登记人7',7),(58,'2023-02-28 13:33:16','物品名称8',8,'持有者8','物品简述8','出入楼栋8','进入','2023-02-28 21:33:16','备注8','登记人8',8);
/*!40000 ALTER TABLE `wupinjinchudengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `touxiang` longtext COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2023-02-28 13:33:15','学号1','123456','姓名1',1,'男','13823888881','宿舍号1','专业1','院系1','班级1','upload/xuesheng_touxiang1.jpg'),(12,'2023-02-28 13:33:15','学号2','123456','姓名2',2,'男','13823888882','宿舍号2','专业2','院系2','班级2','upload/xuesheng_touxiang2.jpg'),(13,'2023-02-28 13:33:15','学号3','123456','姓名3',3,'男','13823888883','宿舍号3','专业3','院系3','班级3','upload/xuesheng_touxiang3.jpg'),(14,'2023-02-28 13:33:15','学号4','123456','姓名4',4,'男','13823888884','宿舍号4','专业4','院系4','班级4','upload/xuesheng_touxiang4.jpg'),(15,'2023-02-28 13:33:15','学号5','123456','姓名5',5,'男','13823888885','宿舍号5','专业5','院系5','班级5','upload/xuesheng_touxiang5.jpg'),(16,'2023-02-28 13:33:15','学号6','123456','姓名6',6,'男','13823888886','宿舍号6','专业6','院系6','班级6','upload/xuesheng_touxiang6.jpg'),(17,'2023-02-28 13:33:15','学号7','123456','姓名7',7,'男','13823888887','宿舍号7','专业7','院系7','班级7','upload/xuesheng_touxiang7.jpg'),(18,'2023-02-28 13:33:15','学号8','123456','姓名8',8,'男','13823888888','宿舍号8','专业8','院系8','班级8','upload/xuesheng_touxiang8.jpg');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-10  9:51:44
