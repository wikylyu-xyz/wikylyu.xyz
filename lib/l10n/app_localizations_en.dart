// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Wiky Lyu - A full-stack developer.';

  @override
  String get home => 'Home';

  @override
  String get switchLanguageTitle => 'Switch Language';

  @override
  String get cancel => 'Cancel';

  @override
  String get ok => 'OK';

  @override
  String get selfBrief =>
      'I\'m a full-stack developer, who can complete the entire process from product design, to UI design, to development, and deliver high-quality results.';

  @override
  String get selfName => 'Wiky Lyu';

  @override
  String get websitesIBuild => 'WEBSITES';

  @override
  String get mobileAppsIBuild => 'MOBILE APPS';

  @override
  String get seogptName => 'SEOGPT';

  @override
  String get seogptDescription =>
      'Based on ChatGPT/Langchain and Search Engine, generates high-quality, long enough articles.';

  @override
  String get dadachatName => 'DadaChat';

  @override
  String get dadachatDescription =>
      'Based on ChatGPT, providing a variety of different AI characters.';

  @override
  String get about => 'About';

  @override
  String get aboutTitle => 'About this website';

  @override
  String get introduction => 'Introduction';

  @override
  String get gptLimit =>
      'ChatGPT has two limitations that limit its application field.';

  @override
  String get maxTokenLimit => 'Max Token Limit';

  @override
  String get maxTokenLimitDescription =>
      'So far, the maximum token limit of GPT-3.5 is 16K, which is not enough in some cases.';

  @override
  String get oldData => 'Old Data';

  @override
  String get oldDataDescription =>
      'GPT\'s training data is up to Sep 2021. We need new data to do some work.';

  @override
  String get gptTricks =>
      'To break through these limitations, some tricks are required.';

  @override
  String get searchEngine => 'Search Engine';

  @override
  String get searchEngineDescription =>
      'Search the internet using Search Engine like Google, ask GPT to generate based on the search result.';

  @override
  String get promptEngineering => 'Prompt Engineering';

  @override
  String get promptEngineeringDescription =>
      'To generate a long article(more than 5000 words), we need to split the task into multiple small ones.';

  @override
  String get workflow => 'Workflow';

  @override
  String get seogptWorkflow1 => 'User submits a keyword';

  @override
  String get seogptWorkflow1Description => 'For example: Apple Vision Pro';

  @override
  String get seogptWorkflow2 => 'Search the internet with the keyword';

  @override
  String get seogptWorkflow2Description =>
      'Get top-ranked 20 websites about Apple Vision Pro';

  @override
  String get seogptWorkflow3 => 'Crawl the 20 websites';

  @override
  String get seogptWorkflow3Description =>
      'Extract all text content from websites, which can be very large. The content should be highly related to Apple Vision Pro, if not, contact Google for more details.';

  @override
  String get seogptWorkflow4 => 'Ask GPT to generate an article outline';

  @override
  String get seogptWorkflow4Description =>
      'Based on the website content fetched in previous step, using Langchain.';

  @override
  String get seogptWorkflow4Hint =>
      'This step only generates an article OUTLINE, it\'s something like below:';

  @override
  String get seogptWorkflow5 => 'Ask GPT to generate each segment separately';

  @override
  String get seogptWorkflow5Description =>
      'Ask GPT many times, and each time for one single segment.';

  @override
  String get seogptWorkflow5Hint => 'The prompt looks like:';

  @override
  String get seogptWorkflow6 =>
      'Combine all segments generated in previous step into one article';

  @override
  String get seogptWorkflow6Description => 'Done';

  @override
  String get advantagesAndDisadvantages => 'Advantages and Disadvantages';

  @override
  String get highQuality => 'High-Quality';

  @override
  String get highQualityDescription =>
      'GPT generates content based on search result, which is new and certified by Google.';

  @override
  String get long => 'Long';

  @override
  String get longDescription => 'Every segment matters';

  @override
  String get time => 'Time';

  @override
  String get timeDescription =>
      'It costs a little long to generate an entire article, about 5-10 minutes.';

  @override
  String get money => 'Money';

  @override
  String get moneyDescription => 'It also costs more chatgpt api credits.';

  @override
  String get haveATry => 'Have a try?';

  @override
  String get availableForRemoteWork => 'Available for remote work';

  @override
  String get tearsMapDescription =>
      'A interactive game map for Tears of the Kingdom.';

  @override
  String get tempediaDescription => 'A Temtem Encyclopedia';

  @override
  String get animalsDescription => 'Unofficial Party Animals app';

  @override
  String get fh5Description =>
      'All Forza Horizon 5 Cars, easy to filter and sort.';

  @override
  String get sf6Description =>
      'Street Fighter 6 movelist and frame data, useful for starters';

  @override
  String get kof15Description => 'King of the Fighters 15 movelist';

  @override
  String get solely =>
      'All the projects listed above are created solely by me.';

  @override
  String get fm2023Description =>
      'Contains all Forza Motorsport 2023 Cars with detailed informations.';

  @override
  String get browserExtensionsIBuild => 'BROWSER EXTENSIONS';

  @override
  String get novelsIWrite => 'NOVELS';

  @override
  String get clickManDescription =>
      'Automatically click YouTube \"Skip Ads\" button';

  @override
  String get rofName => 'Ring of Flame(under development)';

  @override
  String get rofDescription => 'Imaginary fantasy novel';

  @override
  String get commandlineToolsIBuild => 'COMMANDLINE TOOLS';

  @override
  String get mtopDescription => 'A custom network proxy based on QUIC or TLS';

  @override
  String get iotaWebsiteClone => 'IOTA Website Clone';

  @override
  String get iotaWebSiteCloneDescription =>
      'IOTA Website Clone for technical preview';

  @override
  String get feedmusicWebsite => 'Feedmusic Website';

  @override
  String get feedmusicDescription => 'FeedMusic for technical preview';
}
