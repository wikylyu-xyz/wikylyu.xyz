// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => '吕伟彬 - 全栈开发者';

  @override
  String get home => '主页';

  @override
  String get switchLanguageTitle => '切换语言';

  @override
  String get cancel => '取消';

  @override
  String get ok => '确认';

  @override
  String get selfBrief => '我是一名全栈开发，能完成从产品设计，到UI设计，到开发上线的全过程．并交付高质量的结果．';

  @override
  String get selfName => '吕伟彬';

  @override
  String get websitesIBuild => '网站';

  @override
  String get mobileAppsIBuild => '移动APP';

  @override
  String get seogptName => 'SEOGPT';

  @override
  String get seogptDescription => '基于ChatGPT/Langchain和搜索引擎, 生成高质量，且长度足够的文章.';

  @override
  String get dadachatName => '答答好友';

  @override
  String get dadachatDescription => '基于ChatGPT,提供各种各样不同的AI角色。';

  @override
  String get about => '关于';

  @override
  String get aboutTitle => '关于此网站';

  @override
  String get introduction => '介绍';

  @override
  String get gptLimit => 'ChatGPT有两个限制,使其应用领域受限.';

  @override
  String get maxTokenLimit => '最大字符数限制';

  @override
  String get maxTokenLimitDescription => '到目前未知,GPT3.5的最大字符数限制是16K,在一些场景中并不足够.';

  @override
  String get oldData => '数据陈旧';

  @override
  String get oldDataDescription => 'GPT的训练数据截至到21年9月份,我们需要新数据来完成一些工作.';

  @override
  String get gptTricks => '要突破上述限制，需要使用一些小技巧．';

  @override
  String get searchEngine => '搜索引擎';

  @override
  String get searchEngineDescription =>
      '使用搜索引擎(如Google)搜索互联网数据,然后让GPT基于搜索结果生成内容.';

  @override
  String get promptEngineering => '提示词工程';

  @override
  String get promptEngineeringDescription => '要生成超过五千字的长文，需要将任务拆解成多个小任务.';

  @override
  String get workflow => '工作流程';

  @override
  String get seogptWorkflow1 => '用户提交关键词';

  @override
  String get seogptWorkflow1Description => '以 Apple Vision Pro 为例';

  @override
  String get seogptWorkflow2 => '使用该关键词搜索互联网';

  @override
  String get seogptWorkflow2Description => '获取与 Apple Vision Pro 相关的排名前20的网站';

  @override
  String get seogptWorkflow3 => '抓取该20个网站';

  @override
  String get seogptWorkflow3Description =>
      '提取所有网站的文本内容，这些内容应该会与 Apple Vision Pro 高度相关，如果没有，则是搜索引擎的问题.';

  @override
  String get seogptWorkflow4 => '让GPT生成一篇文章的大纲';

  @override
  String get seogptWorkflow4Description => '基于上一步骤中抓取到的数据,使用Langchain.';

  @override
  String get seogptWorkflow4Hint => '此步骤只会生成一篇文章大纲，大致如下:';

  @override
  String get seogptWorkflow5 => '让GPT分别生成每一个章节';

  @override
  String get seogptWorkflow5Description => '执行多次,每次生成一个章节内容';

  @override
  String get seogptWorkflow5Hint => '提示词如下:';

  @override
  String get seogptWorkflow6 => '将上一步骤中生成的所有章节拼接成一篇完整的文章';

  @override
  String get seogptWorkflow6Description => '完成';

  @override
  String get advantagesAndDisadvantages => '优势与缺陷';

  @override
  String get highQuality => '质量高';

  @override
  String get highQualityDescription => 'GPT基于搜索结果生成内容，搜索结果得到Google认证.';

  @override
  String get long => '长度';

  @override
  String get longDescription => '多个章节组成一篇长文';

  @override
  String get time => '时间';

  @override
  String get timeDescription => '生成一篇完整文章大概需要5-10分钟.';

  @override
  String get money => '费用';

  @override
  String get moneyDescription => '同样也需要花费跟多的接口费用．';

  @override
  String get haveATry => '尝试一下?';

  @override
  String get availableForRemoteWork => '可以远程工作';

  @override
  String get tearsMapDescription => '游戏王国之泪的交互式地图APP';

  @override
  String get tempediaDescription => 'Temtem游戏百科全书';

  @override
  String get animalsDescription => '猛兽派对的非官方APP';

  @override
  String get fh5Description => '包含所有地平线5的汽车数据，支持筛选与排序';

  @override
  String get sf6Description => '街霸6的招式列表以及帧数据，对初学者非常有用';

  @override
  String get kof15Description => '拳皇15的招式列表';

  @override
  String get solely => '上述所有项目都是我一个人独自开发完成的.';

  @override
  String get fm2023Description => '包含所有 Forza Motorsport 2023 赛车及详细信息。';

  @override
  String get browserExtensionsIBuild => '浏览器扩展';

  @override
  String get novelsIWrite => '小说';

  @override
  String get clickManDescription => '自动点击YouTube的\"跳过广告\"按钮';

  @override
  String get rofName => '火焰之轮(开发中)';

  @override
  String get rofDescription => '架空魔幻长篇小说';

  @override
  String get commandlineToolsIBuild => '命令行工具';

  @override
  String get mtopDescription => '基于 QUIC 或 TLS 的自定义网络代理';

  @override
  String get iotaWebsiteClone => 'IOTA 网站复制';

  @override
  String get iotaWebSiteCloneDescription => 'IOTA网站复制，用于技术展示';

  @override
  String get feedmusicWebsite => 'Feedmusic 网站';

  @override
  String get feedmusicDescription => 'FeedMusic 用于技术展示';
}
