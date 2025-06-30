import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('zh')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Wiky Lyu - A full-stack developer.'**
  String get appTitle;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @switchLanguageTitle.
  ///
  /// In en, this message translates to:
  /// **'Switch Language'**
  String get switchLanguageTitle;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @selfBrief.
  ///
  /// In en, this message translates to:
  /// **'I\'m a full-stack developer, who can complete the entire process from product design, to UI design, to development, and deliver high-quality results.'**
  String get selfBrief;

  /// No description provided for @selfName.
  ///
  /// In en, this message translates to:
  /// **'Wiky Lyu'**
  String get selfName;

  /// No description provided for @websitesIBuild.
  ///
  /// In en, this message translates to:
  /// **'WEBSITES'**
  String get websitesIBuild;

  /// No description provided for @mobileAppsIBuild.
  ///
  /// In en, this message translates to:
  /// **'MOBILE APPS'**
  String get mobileAppsIBuild;

  /// No description provided for @seogptName.
  ///
  /// In en, this message translates to:
  /// **'SEOGPT'**
  String get seogptName;

  /// No description provided for @seogptDescription.
  ///
  /// In en, this message translates to:
  /// **'Based on ChatGPT/Langchain and Search Engine, generates high-quality, long enough articles.'**
  String get seogptDescription;

  /// No description provided for @dadachatName.
  ///
  /// In en, this message translates to:
  /// **'DadaChat'**
  String get dadachatName;

  /// No description provided for @dadachatDescription.
  ///
  /// In en, this message translates to:
  /// **'Based on ChatGPT, providing a variety of different AI characters.'**
  String get dadachatDescription;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @aboutTitle.
  ///
  /// In en, this message translates to:
  /// **'About this website'**
  String get aboutTitle;

  /// No description provided for @introduction.
  ///
  /// In en, this message translates to:
  /// **'Introduction'**
  String get introduction;

  /// No description provided for @gptLimit.
  ///
  /// In en, this message translates to:
  /// **'ChatGPT has two limitations that limit its application field.'**
  String get gptLimit;

  /// No description provided for @maxTokenLimit.
  ///
  /// In en, this message translates to:
  /// **'Max Token Limit'**
  String get maxTokenLimit;

  /// No description provided for @maxTokenLimitDescription.
  ///
  /// In en, this message translates to:
  /// **'So far, the maximum token limit of GPT-3.5 is 16K, which is not enough in some cases.'**
  String get maxTokenLimitDescription;

  /// No description provided for @oldData.
  ///
  /// In en, this message translates to:
  /// **'Old Data'**
  String get oldData;

  /// No description provided for @oldDataDescription.
  ///
  /// In en, this message translates to:
  /// **'GPT\'s training data is up to Sep 2021. We need new data to do some work.'**
  String get oldDataDescription;

  /// No description provided for @gptTricks.
  ///
  /// In en, this message translates to:
  /// **'To break through these limitations, some tricks are required.'**
  String get gptTricks;

  /// No description provided for @searchEngine.
  ///
  /// In en, this message translates to:
  /// **'Search Engine'**
  String get searchEngine;

  /// No description provided for @searchEngineDescription.
  ///
  /// In en, this message translates to:
  /// **'Search the internet using Search Engine like Google, ask GPT to generate based on the search result.'**
  String get searchEngineDescription;

  /// No description provided for @promptEngineering.
  ///
  /// In en, this message translates to:
  /// **'Prompt Engineering'**
  String get promptEngineering;

  /// No description provided for @promptEngineeringDescription.
  ///
  /// In en, this message translates to:
  /// **'To generate a long article(more than 5000 words), we need to split the task into multiple small ones.'**
  String get promptEngineeringDescription;

  /// No description provided for @workflow.
  ///
  /// In en, this message translates to:
  /// **'Workflow'**
  String get workflow;

  /// No description provided for @seogptWorkflow1.
  ///
  /// In en, this message translates to:
  /// **'User submits a keyword'**
  String get seogptWorkflow1;

  /// No description provided for @seogptWorkflow1Description.
  ///
  /// In en, this message translates to:
  /// **'For example: Apple Vision Pro'**
  String get seogptWorkflow1Description;

  /// No description provided for @seogptWorkflow2.
  ///
  /// In en, this message translates to:
  /// **'Search the internet with the keyword'**
  String get seogptWorkflow2;

  /// No description provided for @seogptWorkflow2Description.
  ///
  /// In en, this message translates to:
  /// **'Get top-ranked 20 websites about Apple Vision Pro'**
  String get seogptWorkflow2Description;

  /// No description provided for @seogptWorkflow3.
  ///
  /// In en, this message translates to:
  /// **'Crawl the 20 websites'**
  String get seogptWorkflow3;

  /// No description provided for @seogptWorkflow3Description.
  ///
  /// In en, this message translates to:
  /// **'Extract all text content from websites, which can be very large. The content should be highly related to Apple Vision Pro, if not, contact Google for more details.'**
  String get seogptWorkflow3Description;

  /// No description provided for @seogptWorkflow4.
  ///
  /// In en, this message translates to:
  /// **'Ask GPT to generate an article outline'**
  String get seogptWorkflow4;

  /// No description provided for @seogptWorkflow4Description.
  ///
  /// In en, this message translates to:
  /// **'Based on the website content fetched in previous step, using Langchain.'**
  String get seogptWorkflow4Description;

  /// No description provided for @seogptWorkflow4Hint.
  ///
  /// In en, this message translates to:
  /// **'This step only generates an article OUTLINE, it\'s something like below:'**
  String get seogptWorkflow4Hint;

  /// No description provided for @seogptWorkflow5.
  ///
  /// In en, this message translates to:
  /// **'Ask GPT to generate each segment separately'**
  String get seogptWorkflow5;

  /// No description provided for @seogptWorkflow5Description.
  ///
  /// In en, this message translates to:
  /// **'Ask GPT many times, and each time for one single segment.'**
  String get seogptWorkflow5Description;

  /// No description provided for @seogptWorkflow5Hint.
  ///
  /// In en, this message translates to:
  /// **'The prompt looks like:'**
  String get seogptWorkflow5Hint;

  /// No description provided for @seogptWorkflow6.
  ///
  /// In en, this message translates to:
  /// **'Combine all segments generated in previous step into one article'**
  String get seogptWorkflow6;

  /// No description provided for @seogptWorkflow6Description.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get seogptWorkflow6Description;

  /// No description provided for @advantagesAndDisadvantages.
  ///
  /// In en, this message translates to:
  /// **'Advantages and Disadvantages'**
  String get advantagesAndDisadvantages;

  /// No description provided for @highQuality.
  ///
  /// In en, this message translates to:
  /// **'High-Quality'**
  String get highQuality;

  /// No description provided for @highQualityDescription.
  ///
  /// In en, this message translates to:
  /// **'GPT generates content based on search result, which is new and certified by Google.'**
  String get highQualityDescription;

  /// No description provided for @long.
  ///
  /// In en, this message translates to:
  /// **'Long'**
  String get long;

  /// No description provided for @longDescription.
  ///
  /// In en, this message translates to:
  /// **'Every segment matters'**
  String get longDescription;

  /// No description provided for @time.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get time;

  /// No description provided for @timeDescription.
  ///
  /// In en, this message translates to:
  /// **'It costs a little long to generate an entire article, about 5-10 minutes.'**
  String get timeDescription;

  /// No description provided for @money.
  ///
  /// In en, this message translates to:
  /// **'Money'**
  String get money;

  /// No description provided for @moneyDescription.
  ///
  /// In en, this message translates to:
  /// **'It also costs more chatgpt api credits.'**
  String get moneyDescription;

  /// No description provided for @haveATry.
  ///
  /// In en, this message translates to:
  /// **'Have a try?'**
  String get haveATry;

  /// No description provided for @availableForRemoteWork.
  ///
  /// In en, this message translates to:
  /// **'Available for remote work'**
  String get availableForRemoteWork;

  /// No description provided for @tearsMapDescription.
  ///
  /// In en, this message translates to:
  /// **'A interactive game map for Tears of the Kingdom.'**
  String get tearsMapDescription;

  /// No description provided for @tempediaDescription.
  ///
  /// In en, this message translates to:
  /// **'A Temtem Encyclopedia'**
  String get tempediaDescription;

  /// No description provided for @animalsDescription.
  ///
  /// In en, this message translates to:
  /// **'Unofficial Party Animals app'**
  String get animalsDescription;

  /// No description provided for @fh5Description.
  ///
  /// In en, this message translates to:
  /// **'All Forza Horizon 5 Cars, easy to filter and sort.'**
  String get fh5Description;

  /// No description provided for @sf6Description.
  ///
  /// In en, this message translates to:
  /// **'Street Fighter 6 movelist and frame data, useful for starters'**
  String get sf6Description;

  /// No description provided for @kof15Description.
  ///
  /// In en, this message translates to:
  /// **'King of the Fighters 15 movelist'**
  String get kof15Description;

  /// No description provided for @solely.
  ///
  /// In en, this message translates to:
  /// **'All the projects listed above are created solely by me.'**
  String get solely;

  /// No description provided for @fm2023Description.
  ///
  /// In en, this message translates to:
  /// **'Contains all Forza Motorsport 2023 Cars with detailed informations.'**
  String get fm2023Description;

  /// No description provided for @browserExtensionsIBuild.
  ///
  /// In en, this message translates to:
  /// **'BROWSER EXTENSIONS'**
  String get browserExtensionsIBuild;

  /// No description provided for @novelsIWrite.
  ///
  /// In en, this message translates to:
  /// **'NOVELS'**
  String get novelsIWrite;

  /// No description provided for @clickManDescription.
  ///
  /// In en, this message translates to:
  /// **'Automatically click YouTube \"Skip Ads\" button'**
  String get clickManDescription;

  /// No description provided for @rofName.
  ///
  /// In en, this message translates to:
  /// **'Ring of Flame(under development)'**
  String get rofName;

  /// No description provided for @rofDescription.
  ///
  /// In en, this message translates to:
  /// **'Imaginary fantasy novel'**
  String get rofDescription;

  /// No description provided for @commandlineToolsIBuild.
  ///
  /// In en, this message translates to:
  /// **'COMMANDLINE TOOLS'**
  String get commandlineToolsIBuild;

  /// No description provided for @mtopDescription.
  ///
  /// In en, this message translates to:
  /// **'A custom network proxy based on QUIC or TLS'**
  String get mtopDescription;

  /// No description provided for @iotaWebsiteClone.
  ///
  /// In en, this message translates to:
  /// **'IOTA Website Clone'**
  String get iotaWebsiteClone;

  /// No description provided for @iotaWebSiteCloneDescription.
  ///
  /// In en, this message translates to:
  /// **'IOTA Website Clone for technical preview'**
  String get iotaWebSiteCloneDescription;

  /// No description provided for @feedmusicWebsite.
  ///
  /// In en, this message translates to:
  /// **'Feedmusic Website'**
  String get feedmusicWebsite;

  /// No description provided for @feedmusicDescription.
  ///
  /// In en, this message translates to:
  /// **'FeedMusic for technical preview'**
  String get feedmusicDescription;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
