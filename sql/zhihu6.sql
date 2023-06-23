-- MySQL dump 10.13  Distrib 8.0.33, for macos13 (x86_64)
--
-- Host: 127.0.0.1    Database: zhihu
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `answer_ctnt` longtext CHARACTER SET gbk COLLATE gbk_chinese_ci,
  `answer_time` datetime DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `question_id` bigint DEFAULT NULL,
  `good` bigint DEFAULT NULL,
  `answer_comment` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES (1,'算力可以通过分布式系统解决，训练数据可以人工制造，人工智能当前最大的挑战是算法。  简单来说，想要让AI实现复杂的操作，如何设计出一种「高效的学习方法」是核心。  要使机器真正智能化，我们还有很长的路要走。  多说一点，最近十年，为了营销效果，「AI」这个词被各种公司用在各种产品和各种项目申请书上，导致人们现在一看到AI就联想到忽悠。  「AI」这个词已经被玩坏了。  下一个被玩坏的词应该是「量子」？或者是「区块链」？ ----------------------------------- 如果人工智能迎来下一个寒冬，你认为会是卡在什么问题上？ ','2023-06-21 10:26:33',1,1,256,20),(2,'现在的高性能人工智能，主要是深度神经网络，被认为是黑盒模型，它执行大量的浮点数计算来预测 X，或 Y，或其他东西。这些模型可以非常准确，因为它们是通用多项式函数近似器，有成百上千的神经元随着时间的推移抽象出函数。每当你问自己这样的模型是如何得出结论的时候，能够得出模型推理过程的方法非常有限，因为人无法解释通过无数神经元的浮点数流。这就是为什么这些模型在推理和知识表示研究领域没有取得进展的原因。长远来看，这非常令人担忧，因为我们需要模型有理解力，而不仅仅是进行“愚蠢的”模式检测。\n\n\n例如，一个在图像中检测狗的神经网络可能会预测图像中存在一只狗，但它并没有真正理解什么是狗，以及除了视觉模式之外它还能做什么。\n\n\n你可能会认为，一个能够对图像中的狗和猫进行分类的神经网络也能轻易地对图像中的鸟进行分类。但问题是，如果不重新学习它已经学到的所有知识，并在此基础上加入鸟类，人工智能就根本无法对鸟类或其他动物进行分类。这显然可以得出一个结论，推理和知识表示对于发现某种关联非常重要。举例来说，每当人类想到狗的时候，我们的脑子里可能会浮现这个词的拼写，以及狗的样子，还有一些狗的名字，等等。\n\n\n联想记忆之所以重要，是因为需要有多任务模型（这是迈向 AGI 的第一步），它能够做不止一件事。人工智能不只是对图像中的动物进行分类，还可以对句子中的动物进行推理。它应该明白，“狗”这个词和狗的实际形象紧密相关，并且是指同一个东西。','2023-06-21 10:26:33',1,1,130,11),(3,'近年来，很多人都感觉现在很难挣钱，这其实是有很多原因的。以下是一些可能导致这种感觉的因素：\n\n1. 物价上涨太快\n\n随着时间的推移，所有物品的价格都在上涨。这意味着，即使你挣了更多的钱，你也可能购买不到同样数量的商品。生活所需的不得不够买，因此，物价的上涨可能导致人们感到现在很难挣钱。\n\n2. 工资水平停滞\n\n虽然通货膨胀导致物价上涨，但很多人的工资水平并没有相应增长。这意味着他们的购买力实际上下降了。此外，很多公司也没有提供适当的工资涨幅，这使得人们感到更难以维持自己的生活水平。\n\n3. 竞争加剧\n\n现在的市场竞争非常激烈。在某些行业，求职者众多，而职位数量却有限。特别是对于目前毕业的大学生来说，相比于八九十年代的大学毕业生，高薪工作一去不复返。这使得许多人不得不接受低薪的工作，或者在多个工作之间切换以维持生计。这种情况也导致人们感到现在很难挣钱。\n\n4. 消费需求增加\n\n现在人们的消费需求比以往任何时候都高。随着技术的发展和社交媒体的普及，人们能够看到更多的商品和服务，这促使了消费需求的增加。这迫使人们不得不花更多的钱来满足自己的需求，进一步加剧了现在很难挣钱的感觉。\n\n总之，现在很难挣钱的原因有很多。物价上涨、工资水平停滞、竞争加剧和消费需求增加都可能导致人们感到难以维持自己的生计。如果我们想在这样的环境中获得成功，就需要有更高的教育水平、更优秀的技能或者更聪明的财务管理策略。','2023-06-21 10:26:33',3,4,112,35),(4,'越来越多的人在议论钱越来越难挣，而消费却越来越高。很大一部分原因是因为前几十年，国家经济迅速增长，人们的生活水平不断提高，到达一定周期后出现经济缓慢增长，造成的人们还在延用以前的消费水平，却已没有足够的经济收入造成的生活支出压力。\n\n中国用改革开放四十年走过了欧美国家200年的现代化历程。如此密集的时间点，如此快速的时代发展，注定了我们要生活在一个浮躁的时代，正是因为这样一个浮躁的时代，所以我们必须要时刻关注社会的发展，技术的发展。\n\n过去三十年，中国的有钱人都是怎么发财的？\n\n说简单点，主要是靠赌性和投机。\n\n最早一批发财的人大都是做贸易，左手进右手出，用的也许见不得光的走私和见得快的批条，前者是胆子大，后者是背景强。过后，就是做股票做庄，那个时候，国家没什么监管措施，所以基本上就是大户赚的盆满兜满的阶段，用的都是见不得光的手法，然后就是做一级市场，直接做上市公司，买点国企资产，包装包装，然后就是一个劲的送钱送礼过会，股价暴涨。而后就是大量开制造业工厂，用的就是农村剩余劳动力，中国一加入WTO，商品大量倾销式的占领国外的市场，钱也是大把大把的赚。早年的互联网企业，差不多也是这个套路，搜狐为什么没落了？当年的互联网，就是现在的建站，当时根本没有多少网站，后来中国上网人数大爆发，凡是建站的都赚了不少。\n\n既然如此那我们来分析分析，现在为什么赚钱难了？\n\n做贸易都要垫付货款，现在谁垫付谁就先亏损了；做证券做股票，散户一批一批的倒下；\n\n做网站，人家要的都是真正高技术含量；制造业工厂，技术和人力成本都已经够让人头疼的了……这样算来，现在正是产业更新换代的时候，而那些技术密集型、人员密集型、高学历密集型的产业也将是下一个市场风口。','2023-06-21 10:26:33',1,4,4000,76),(5,'《不被裹挟的判断力》「年轻人拥有的是中年人曾经梦寐以求的权利、无限选择的权利、肆意犯错的权利、追求热爱的权利、心无旁骛的权利。不过这些权利，却也伴随着巨大的压力，因为社会一直在加速，从很年轻的时候，你们就得和很强、很可怕的、水准很高的东西相碰撞，所以你们会比前辈更快地接触到『自我』。」@林超 在他给年轻人的回答中，清楚地写出了这一代年轻人的无限可能和巨大焦虑，各种所谓的风口都过去了，要成为不确定的风浪中站得最稳的那个，需要的是不被裹挟的判断力、不可替代的技能，以及永远需要的——和「人」打交道的能力。','2023-06-21 10:26:33',2,2,2333,118),(6,'现在尴尬的事情在于，你史书说有夏，考古甚至把夏之前的东西都挖出来了，唯独夏朝\n\n的东西死活找不到。\n\n二里头时间倒是能对得上，但是人家自己不叫自己“夏”。\n\n或许，夏朝人真的就不叫自己夏，这个字是后人给起的。\n\n目前的考古情况是，挖出来的东西跟山海经越来越能靠得上了，就很尴尬。','2023-06-21 10:26:33',3,3,5454,1233),(7,'在当今的社会，许多人都感到赚钱变得越来越难。以下是一些可能导致这种感觉的原因：\n货币贬值：随着通货膨胀的不断加剧，货币的购买力逐渐减弱。即使你每年的薪资增加了，但如果物价上涨的速度更快，你的实际购买力仍然会下降，因此感觉赚钱变得更难了。\n竞争激烈：随着人口的增长和经济的发展，就业市场变得越来越竞争激烈。这意味着公司要求雇员更加专业化、技术更加先进，或者更加有经验，导致许多人可能难以找到合适的工作，或者需要不断提升自己的技能才能保持竞争力。\n生活成本上升：生活成本包括房价、食品、医疗保健等，也是导致人们感到赚钱越来越难的原因之一。房价、医疗保健费用和学费等日常开支的上升，可能迫使人们在努力工作的同时，还要寻找其他收入来源，这进一步增加了赚钱的难度。\n技术革新：随着技术的不断进步，许多工作变得可以自动化，这可能导致一些工作岗位的减少。例如，在过去，许多公司需要人手来搬运货物，但现在这些工作往往被自动化仓储和物流系统所取代。这可能会导致一些人失去工作，或者需要学习新的技能来适应这种变化。','2023-06-21 10:26:33',3,3,1233,222),(8,'现在尴尬的事情在于，你史书说有夏，考古甚至把夏之前的东西都挖出来了，唯独夏朝\n\n的东西死活找不到。\n\n二里头时间倒是能对得上，但是人家自己不叫自己“夏”。\n\n或许，夏朝人真的就不叫自己夏，这个字是后人给起的。\n\n目前的考古情况是，挖出来的东西跟山海经越来越能靠得上了，就很尴尬。','2023-06-21 10:26:33',1,1,6454,0),(9,'第一，如果不能从理论上解释清楚现在所谓人工智能的泛化性能，并加以掌控和利用，那么现在的所谓的人工智能，只不过是在拟合历史数据，和碰碰运气罢了。\n\n第二，如果出现一个更实在的技术爆发点，资本被吸引，热钱跑出，部分无法落地的人工智能恐怕会遭冷眼相看。\n\n第三，物理学，材料学或者能源等限制了计算机的发展过长的时间，摩尔定律失效，在冯诺伊曼体系上的天然瓶颈越来越明显，显然，这跟计算机本身没有特别强的关系。','2023-06-21 10:26:33',1,1,0,0),(11,'2018年七国集团会议上《连线》记者问Hinton：一些学者警告说，当前的炒作可能会进入“人工智能的寒冬”，就像上世纪80年代那样，当时由于进展没有达到预期，投向AI的兴趣和资金都枯竭了。Hinton答：不，不会有人工智能的寒冬，因为AI驱动着你的手机。在过去的人工智能寒冬，AI并不是人们日常生活的一部分。现在它已经是了。在神经网络的潜力被挖掘殆尽后，深度学习浪潮有可能归于平静，但是AI不会有寒冬了。','2023-06-21 10:26:33',1,1,6565,0),(12,'跟@何钦尧\n才讨论一波，觉得我们需要一个学术论文评分系统，类似电影评分网站。\n\n贴链接，不涉及版权问题。\n\n讲道理电影评分系统还算是可以的，除了有一些粉丝刷榜/意识形态分化。但是Paper这两个问题倒不大，就算两极分化也是好事，讨论越多越清楚嘛。','2023-06-21 10:26:33',2,1,11111,0),(13,'年轻人，跟你说句真话，没有什么书是必读的。\n\n你这么问，国学迷会跟你说四书必读，科学迷会跟你说时间简史\n必读，文学迷会跟你说百年孤独\n\n必读，信教的会跟你说圣经必读...\n\n然而，他们很可能并没有读过彼此口中的“必读书”。\n\n而且，他们这么说不是为了帮助你 —— 他们连你是谁，你的基础怎样都不知道，又怎么知道你真正需要什么？\n\n他们这么说是为了自己爽，秀一把自己心目中的神作，自我陶醉顺便收割一点不明觉厉的崇拜\n\n。\n\n\n在这个世界上，每个人都是自由的，没有什么事是非做不可的。\n\n在这个世界上，每个人都是独一无二的，没有什么法门适用于所有人。\n\n一切取决于你，想要成为什么样的人，这道题是没有标准答案的，你可能还无法适应。\n\n自由和独立，更多的时候，带来的不是热血和激情，而是孤独是迷茫。\n\n你不得不找到自己的道路，制定自己的标准，解决自己的问题，没有人帮你。你越早适应这种感觉越好。\n\n如果你习惯性地依赖别人给你“喂书”，还以为自己“挺好学”的，其实恰恰相反，这是一种精神上的懒惰。\n\n\n至于那些动不动就给你推荐什么十大必读书，百部经典名著的人\n\n要么是书贩子，要么是想让你关注他的公众号，要么是想混几百赞体验教别人做人的感觉，这些人推荐的书，自己读过多少，读得多透，我看都成问题。\n\n对于你来讲，多半习惯性地点一下收藏，也就忘了。\n\n\n真的想读书，麻烦先把大学老师给你开的专业书单和通识书单读完。\n\n你可能觉得书单很长，很老土。\n\n但它真正的意义不是解决你的什么问题，而是启发你自己提出问题。你会提出问题，进而就会自己找书了，这才是让你一生受益的技能。\n\n路在脚下你不走，在知乎上问一群素不相识的人，怪哉。\n\n不要幻想读了哪本奇书，一下子就能三观抖擞，茅塞顿开\n，焕然新生。书没这么神奇的功效。这是爽文里主人公捡到绝世秘笈\n\n的情节，现实世界里是没有的。\n\n不要指望读书有什么确定的好处，除了四六级词汇书，读书带来的好处总是不期而至，或许你将来能够体会。','2023-06-21 10:26:33',1,2,22222,0),(14,'有人怀疑夏朝不存在，其主要原因是，我国有文字可考的历史从商朝时候开始，没有文字记载的夏朝大家自然会怀疑她的存在。但事实上，夏朝是真实存在的。因为，一是《史记·夏本纪》中记载的夏代世系与《殷本纪》中记载的商代世系一样明确，商代世系在安阳殷墟出土的甲骨卜辞中得到证实，因此《史记·夏本纪》中所记的夏代世系被多数学者认为是可信的。二是考古学家已发现了二里头文化遗址，该遗址出土的陶器上，也发现有许多“刻画符号”，这些“刻画符号”，在商代的甲骨文中都可找到相同或相似的字，其时间大约在公元前1900年左右，距今有4000多年的历史，应该在夏朝，这些情况表明，夏朝是存在的，并且夏朝应该有简单的符号文字。','2023-06-21 10:26:33',2,3,33333,0),(15,'GDP总量是 在增加的。如果你觉得钱难赚，那一定有人赚钱更轻松了。记得第一年出来上班的时候，一个月工资3500， 元宵那天老板订了一家年夜饭，其实也主要是招待他自家人， 那顿饭 1800， 我TMD没崩住。我就说我怎么负重前行呢，原来是有人在替我岁月静好。 ','2023-06-21 10:26:33',1,4,55555,0),(31,'《人类简史》 该书从四大部分描述人类大历史：7万年前的大脑认知革命（有能力谈八卦，想象不存在的事物，让陌生人开始合作、建立组织）1.2万年前的农业革命（让我们渴求更多、生产更多，分工分职愈趋细腻）、500年前的科学革命（带来快速进步，让我们拥有上帝的力量，也带来毁灭）全球大一统、人类大融合的关键因素——金钱、帝国、宗教。有人说读过这本书后刷新了他对这个世界的认知，我读了也一样。读完之后你能更加深刻地理解人类，理解这个世界。','2023-06-21 10:26:33',1,2,44444,0),(33,'最主要的原因是，现在大环境不好，经济不景气，导致第③个出现问题，也就是公司业绩下滑；于是公司倒闭的倒闭，裁员的裁员，降薪的降薪，这又导致①出问题，同时②也出问题，因为业绩下滑，收益率降低；第①出问题，劳动者工资下降，或者担心工资下降，就不敢随便消费，尽量储蓄，导致消费意愿降低；又反过来影响③，因为公司生产的产品或服务卖不出去，业绩下滑；第②出问题，投资者不敢投资，有些初创公司要发展但缺钱，导致资金链 断裂。','2023-06-21 10:57:57',2,4,0,0),(34,'夏朝这个命名方法，和古埃及、古希腊之类的命名方式不同古埃及、古希腊人并没有称自己的政权为埃及、希腊，这名字是后世当地的地名反推回去的，命名格式其实和二里头文化、三星堆文化、良渚文化相似而夏朝是古书上就记载的名字，想要证明二里头文化就是夏朝，除非要在二里头遗址发现文字并破译，证明那里的人把自己的政权称为夏朝；或者从其他同时代或稍晚的遗址中发现可以证明二里头遗址属夏朝的确凿证据（通常也需要文字）现在提高中华文明（注意，这个文明是考古学意义上的文明）上限最大的短板还是文字，二里头的陶器上发现了一些刻画符，但国际认证没通过，不承认这是文字。','2023-06-21 11:01:18',3,3,0,0),(35,'如果你承认美元霸权\n\n存在的话。\n\n那么可以告诉你。\n\n自从2015年12月以来，美联储启动加息周期\n\n直到2019年，美联储都是在加息周期。\n\n自2019年7月开始，美联储逐渐开始降息，分别于2019年7月31日跟2019年9月10日下降25点共计50个基点的基础利率\n\n。\n\n从而有了你们心心念念的回不去的2019年。\n\n后因疫情影响，2020年3月3日美联储紧急宣布降息50个基点，而后在2020年3月15日再次降息50个基点。\n\n这也就有了武汉疫情之后20年下半年至21年的短暂经济繁荣。\n\n这段时间全球受疫情影响，全球主要经济体只有国内因防控政策成功抓住本轮降息周期，从而有了各大港口“一柜难求”的景象，当然，也是所谓限电“大棋论”的事情。\n\n拉闸限电\n\n是不是大棋且不论。\n\n但是在这些工厂如果在21年大规模扩充了产能，那么在2022年一定会亏的裤衩子都不剩。\n\n因为2022年3月16日美联储再次进入加息周期，加息25个基点，2022年5月4日加息50个基点，2022年6月15日加息75个基点。\n\n2022年7月27日再次加息75个基点。\n\n2022年9月21日再次加息75个基点。\n\n2022年12月14日加息50个基点。\n\n2023年2月1日加息25个基点。\n\n2023年3月22日加息25个基点，美联储利率达到2007年以来最高水平。\n\n如果你承认美元霸权的存在。\n\n这种剧烈加息之下，全球经济下行可是tm再正常不过了？加息周期这几年你告诉我哪的经济好？\n\n如果你否认美元霸权的存在。\n\n那你可以随便骂了，飘零半生也好，烂尾楼\n\n也好，请随意。\n\n最后说一句。\n阿鲍，继续加息，2015年到现在这才哪到哪啊，千万别怂，继续加息，2023年6月14我的建议是直接加75，7月26再加75，不是我们不相信你，主要是我们大家伙想开开眼。','2023-06-21 11:01:36',3,4,0,0),(36,'感觉不是”寒冬“的到来，而是资本撤走之后回复正常的状态。Low-hanging fruits摘完之后，”寒冬“自然就来了。除了神经网络，这几十年的人工智能和七八十年代的并没有更多的不同。而且还有一个”关注点“的问题：现在说什么都是人工智能，只是因为都想跟它扯上关系。以后可能会着眼在具体的问题上，比如自动驾驶。就像电刚发明的时候，什么东西都会跟电扯上关系。但是现在如果一个人再发明做饭机器人，他不会说这个是用电驱动的。',NULL,2,1,2,44),(37,'夏朝只是周朝和以后的中国人对商朝前面那个朝代的称呼，商朝怎么称呼那个朝代，那个朝代怎么称呼自己，没人知道。现在的考古成果完全可以证明商朝前面是存在中华文明的，但是没办法证明这个文明就是夏朝。换句话说，夏朝肯定是存在的，问题在于它是不是叫夏朝。现在已经发现的甲骨文主要是商朝中后期的，很可能商朝前期及以前根本就没有文字，很多文明也已完全消失在历史长河里被后人彻底遗忘。比如最近很火的良渚文明，年代比传说中的夏朝还要早，发展程度也非常高，但是在现存的历史和传说中，几乎找不到可以对应的记载。 ',NULL,2,3,2,34),(38,'张雪峰和马前卒是观感完全相反的两个网红。\n\n看马前卒视频，感觉好有道理，直到他聊到你了解的领域。\n\n看张雪峰直播，听着这么扯淡，直到他聊到你了解的领域',NULL,1,5,0,0);
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `send_user_id` bigint DEFAULT NULL,
  `receive_user_id` bigint DEFAULT NULL,
  `content` text CHARACTER SET gbk COLLATE gbk_chinese_ci,
  `send_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (1,3,1,'nihao','2023-06-18 19:13:35'),(2,3,2,'你好','2023-06-18 19:14:15'),(3,2,3,'哈哈哈','2023-06-18 19:14:41'),(4,1,3,'嘿嘿嘿','2023-06-18 19:14:56'),(5,1,2,'ggg','2023-06-19 09:06:08'),(6,2,1,'ffff','2023-06-19 09:06:20'),(7,1,2,'hhh','2023-06-19 19:08:36'),(8,1,2,'ghgh','2023-06-19 19:09:13'),(9,1,27,'yyyyyy','2023-06-19 22:13:11'),(10,1,28,'uuuuuu','2023-06-19 22:13:21'),(11,1,27,'y','2023-06-19 22:46:13'),(12,2,1,'你好傻逼','2023-06-20 11:16:22'),(13,3,1,'去你妈的','2023-06-20 11:16:44'),(14,27,1,'迷迷糊糊','2023-06-20 11:17:06'),(15,28,1,'啊实打实的婚纱的贺卡上啥叫看到啥结婚打算哈哈哈哈哈啊大苏打实打实','2023-06-20 11:17:24');
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collect`
--

DROP TABLE IF EXISTS `collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collect` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `answer_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collect`
--

LOCK TABLES `collect` WRITE;
/*!40000 ALTER TABLE `collect` DISABLE KEYS */;
INSERT INTO `collect` VALUES (1,3,3),(2,1,1),(3,2,1),(4,4,1),(5,9,1),(7,11,1),(8,12,1),(9,13,1),(10,14,1),(11,15,1),(12,31,1),(13,32,1),(14,35,1),(19,34,1),(20,33,1);
/*!40000 ALTER TABLE `collect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follow`
--

DROP TABLE IF EXISTS `follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `follow` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `follower_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follow`
--

LOCK TABLES `follow` WRITE;
/*!40000 ALTER TABLE `follow` DISABLE KEYS */;
INSERT INTO `follow` VALUES (1,1,2),(2,1,3);
/*!40000 ALTER TABLE `follow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `followque`
--

DROP TABLE IF EXISTS `followque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `followque` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `question_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `followque`
--

LOCK TABLES `followque` WRITE;
/*!40000 ALTER TABLE `followque` DISABLE KEYS */;
INSERT INTO `followque` VALUES (1,1,1),(2,1,2),(7,3,3),(9,1,3),(10,1,4);
/*!40000 ALTER TABLE `followque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `imageurl` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `image_title` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `id` bigint NOT NULL,
  `notice_type` bigint DEFAULT NULL,
  `notice_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question_text` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `comment_num` varchar(45) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'如果人工智能迎来下一个寒冬，你认为会是卡在什么问题上？',2,'2333'),(2,'有哪些书非常有利于年轻人未来发展？',1,'18'),(3,'为什么那么多人不相信夏朝的存在？',3,'433'),(4,'为什么感觉现在挣钱很难？',3,'1'),(5,'怎么评价张雪峰这个人？',1,'118');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user1_id` bigint DEFAULT NULL,
  `user2_id` bigint DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES (1,1,2,NULL),(2,1,3,NULL),(3,2,1,NULL),(4,2,3,NULL),(5,1,27,NULL),(6,1,28,NULL);
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `imageurl` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `describe` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Lelouch','111','111','http://localhost:8080/images/icon4.jpg',NULL),(2,'SilverBullet','222','222','http://localhost:8080/images/icon5.jpg',NULL),(3,'hjc','333','333','https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJDMqDIaicrd54D1Z1Tnf75iaavlf9CTBcPfQibIIxmzUDg8StzZiaicAf8sCQ0Br3lkxdcxuzz3UQnBgA/132',NULL),(27,'asdasd','555','555','https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIO6eRuuA6V33GgQpIqnsAVXOuibYS0ibpQ4ev547iaHthIjFtqK0x2hDnSm5pWhVXicR2ZEYKQ5o9HMQ/132',NULL),(28,'bbbbbb','444','444','https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIO6eRuuA6V33GgQpIqnsAVXOuibYS0ibpQ4ev547iaHthIjFtqK0x2hDnSm5pWhVXicR2ZEYKQ5o9HMQ/132',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-23 16:50:32
