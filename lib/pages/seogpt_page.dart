import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:wikylyu_xyz/l10n/app_localizations.dart';
import 'package:wikylyu_xyz/service/colors.dart';
import 'package:wikylyu_xyz/widgets/l10n/switch_language_dialog.dart';

class SeogptPage extends StatefulWidget {
  const SeogptPage({super.key});

  @override
  State<StatefulWidget> createState() => _SeogptPageState();
}

class _SeogptPageState extends State<SeogptPage> {
  ColorScheme colorScheme = ColorsService.seogptColorScheme;
  static const String url = "https://seogpt.work";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Title(
      color: Colors.white,
      title: l10n.seogptName,
      child: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: colorScheme,
        ),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: colorScheme.inversePrimary,
            title: Text(l10n.seogptName),
            actions: const [
              SwitchLanguageButton(),
            ],
          ),
          body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(
                parent: BouncingScrollPhysics(),
              ),
              child: Center(
                child: Container(
                  width: 800,
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 50,
                    bottom: 100,
                  ),
                  child: Column(
                    children: [
                      ...buildHeader(),
                      ...buildIntroduction(),
                      ...buildWorkflow(),
                      ...buildAdvantages(),
                      buildTryButton(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTryButton() {
    final l10n = AppLocalizations.of(context)!;
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: ElevatedButton(
        onPressed: () => launchUrlString(url),
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(200, 42),
          textStyle: const TextStyle(fontSize: 20),
        ),
        child: Text(l10n.haveATry),
      ),
    );
  }

  List<String> tags = [
    "Python",
    "Fastapi",
    "Serpapi",
    "Playwright",
    "Langchain/LlamaIndex",
    "Angular",
    "AIGC"
  ];

  List<Widget> buildHeader() {
    final l10n = AppLocalizations.of(context)!;

    return [
      SizedBox(
        width: 100,
        height: 100,
        child: Hero(
          tag: "seogpt-icon",
          child: Image.asset(
            "assets/images/seogpt_logo.png",
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 20),
        child: Text(
          l10n.seogptName,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      InkWell(
        onTap: () => launchUrlString(url),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.link,
              color: colorScheme.primary,
            ),
            Text(
              'Link',
              style: TextStyle(
                color: colorScheme.primary,
              ),
            ),
          ],
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 10),
        child: Text(
          l10n.seogptDescription,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Container(
        width: 400,
        margin: const EdgeInsets.only(
          top: 20,
        ),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 20,
          runSpacing: 10,
          children: tags
              .map(
                (e) => Badge(
                  padding: const EdgeInsets.only(
                    left: 6,
                    right: 6,
                  ),
                  largeSize: 18,
                  label: Text(e),
                ),
              )
              .toList(),
        ),
      ),
    ];
  }

  List<Widget> buildIntroduction() {
    final l10n = AppLocalizations.of(context)!;

    return [
      buildSubtitle(l10n.introduction),
      Container(
        alignment: AlignmentDirectional.centerStart,
        margin: const EdgeInsets.only(top: 20),
        child: SizedBox(
          width: 640,
          child: Text(
            l10n.gptLimit,
          ),
        ),
      ),
      Container(
        alignment: AlignmentDirectional.centerStart,
        margin: const EdgeInsets.only(top: 10),
        child: ListTile(
          onTap: () => launchUrlString(
              "https://platform.openai.com/docs/models/overview"),
          leading: const Icon(
            Icons.token,
          ),
          title: Text(
            l10n.maxTokenLimit,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(l10n.maxTokenLimitDescription),
        ),
      ),
      Container(
        alignment: AlignmentDirectional.centerStart,
        margin: const EdgeInsets.only(top: 5),
        child: ListTile(
          onTap: () => launchUrlString(
              "https://platform.openai.com/docs/models/overview"),
          leading: const Icon(
            Icons.data_object,
          ),
          title: Text(
            l10n.oldData,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(l10n.oldDataDescription),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 20),
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          l10n.gptTricks,
        ),
      ),
      Container(
        alignment: AlignmentDirectional.centerStart,
        margin: const EdgeInsets.only(top: 10),
        child: ListTile(
          onTap: () => {},
          leading: const Icon(
            Icons.travel_explore,
          ),
          selected: true,
          title: Text(
            l10n.searchEngine,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(l10n.searchEngineDescription),
        ),
      ),
      Container(
        alignment: AlignmentDirectional.centerStart,
        margin: const EdgeInsets.only(top: 5),
        child: ListTile(
          onTap: () => {},
          selected: true,
          leading: const Icon(
            Icons.chat_rounded,
          ),
          title: Text(
            l10n.promptEngineering,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(l10n.promptEngineeringDescription),
        ),
      ),
    ];
  }

  Widget buildSubtitle(String name) {
    return Container(
      alignment: AlignmentDirectional.centerStart,
      margin: const EdgeInsets.only(top: 40),
      child: Text(
        name,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  List<Widget> buildWorkflow() {
    final l10n = AppLocalizations.of(context)!;

    return [
      buildSubtitle(l10n.workflow),
      buildWorkflowItem(
          "1.", l10n.seogptWorkflow1, l10n.seogptWorkflow1Description,
          marginTop: 20),
      buildWorkflowItem(
          "2.", l10n.seogptWorkflow2, l10n.seogptWorkflow2Description),
      buildWorkflowItem(
          "3.", l10n.seogptWorkflow3, l10n.seogptWorkflow3Description),
      buildWorkflowItem(
          "4.", l10n.seogptWorkflow4, l10n.seogptWorkflow4Description),
      Container(
        alignment: AlignmentDirectional.centerStart,
        margin: const EdgeInsets.only(top: 5),
        child: Text(l10n.seogptWorkflow4Hint),
      ),
      buildArticleOutline(),
      buildWorkflowItem(
          "5.", l10n.seogptWorkflow5, l10n.seogptWorkflow5Description),
      Container(
        alignment: AlignmentDirectional.centerStart,
        child: Text(l10n.seogptWorkflow5Hint),
      ),
      buildArticlePrompt(),
      buildWorkflowItem(
          "6.", l10n.seogptWorkflow6, l10n.seogptWorkflow6Description)
    ];
  }

  Widget buildArticlePrompt() {
    return Container(
      decoration: BoxDecoration(
        color: colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
        bottom: 20,
      ),
      child: Column(
        children: [
          buildPromptLine("Below is the outline of an article."),
          buildPromptLine(""),
          buildPromptLine("<OUTLINE>"),
          buildPromptLine(""),
          buildPromptLine("Write a single segment called <SEGMENT NAME>."),
          buildPromptLine("...")
        ],
      ),
    );
  }

  Widget buildPromptLine(String line) {
    return Container(
      alignment: AlignmentDirectional.centerStart,
      child: Text(
        line,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget buildArticleOutline() {
    return Container(
      decoration: BoxDecoration(
        color: colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
        bottom: 20,
      ),
      child: Column(
        children: [
          Container(
            alignment: AlignmentDirectional.centerStart,
            child: const Text(
              "Apple Vision Pro: The Future of Spatial Computing",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          buildArticleSubtitle("Introduction"),
          buildArticleSubtitle("Features and Specifications"),
          buildArticleSubtitle("Applications in Work and Productivity"),
          buildArticleSubtitle("Immersive Entertainment and Gaming"),
          buildArticleSubtitle("Capturing and Reliving Memories in 3D"),
          buildArticleSubtitle("Collaboration and Communication"),
          buildArticleSubtitle("Privacy and Security"),
          buildArticleSubtitle("Conclusion"),
        ],
      ),
    );
  }

  Widget buildArticleSubtitle(String subttitle) {
    return Container(
      alignment: AlignmentDirectional.centerStart,
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.only(
        left: 10,
      ),
      child: Text(
        subttitle,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget buildWorkflowItem(String leading, String title, String subtitle,
      {double marginTop = 5}) {
    return Container(
      margin: EdgeInsets.only(top: marginTop),
      child: ListTile(
        leading: Text(leading),
        leadingAndTrailingTextStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
        ),
      ),
    );
  }

  List<Widget> buildAdvantages() {
    final l10n = AppLocalizations.of(context)!;

    return [
      buildSubtitle(l10n.advantagesAndDisadvantages),
      buildAdvantage(l10n.highQuality, l10n.highQualityDescription,
          marginTop: 20),
      buildAdvantage(l10n.long, l10n.longDescription),
      buildDisadvantage(l10n.time, l10n.timeDescription),
      buildDisadvantage(
        l10n.money,
        l10n.moneyDescription,
      ),
    ];
  }

  Widget buildAdvantage(String title, String subtitle, {double marginTop = 5}) {
    return Container(
      margin: EdgeInsets.only(
        top: marginTop,
      ),
      child: ListTile(
        leading: Icon(
          Icons.check_circle,
          color: colorScheme.primary,
          size: 30,
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
      ),
    );
  }

  Widget buildDisadvantage(String title, String subtitle,
      {double marginTop = 5}) {
    return Container(
      margin: EdgeInsets.only(
        top: marginTop,
      ),
      child: ListTile(
        leading: Icon(
          Icons.error,
          color: colorScheme.error,
          size: 30,
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
      ),
    );
  }
}
