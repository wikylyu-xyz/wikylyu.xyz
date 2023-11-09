import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lifecycle/lifecycle.dart';
import 'package:wikylyu_xyz/widgets/animals_item.dart';
import 'package:wikylyu_xyz/widgets/fh5_item.dart';
import 'package:wikylyu_xyz/widgets/fm2023_item.dart';
import 'package:wikylyu_xyz/widgets/kof15_item.dart';
import 'package:wikylyu_xyz/widgets/l10n/switch_language_dialog.dart';
import 'package:wikylyu_xyz/widgets/magikarp_icon.dart';
import 'package:wikylyu_xyz/widgets/rof_item.dart';
import 'package:wikylyu_xyz/widgets/sf6_item.dart';
import 'package:wikylyu_xyz/widgets/tears_map_item.dart';
import 'package:wikylyu_xyz/widgets/tempedia_item.dart';
import 'package:wikylyu_xyz/widgets/website_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with TickerProviderStateMixin, LifecycleAware, LifecycleMixin {
  final List<String> labels = [
    "Golang",
    "Python",
    "Scrapy",
    "PostgreSQL",
    "Django",
    "Fastapi",
    "Flutter",
    "Angular",
    "LangChain/LlamaIndex",
    "Nginx",
    "Google Play",
    "App Store"
  ];

  @override
  void onLifecycleEvent(LifecycleEvent event) {
    if (event == LifecycleEvent.active) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Title(
      color: Colors.white,
      title: l10n.appTitle,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(l10n.home),
          actions: [
            TextButton(
              onPressed: () => Navigator.pushNamed(context, "/about"),
              child: Text(l10n.about),
            ),
            const SwitchLanguageButton(),
          ],
        ),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(
              parent: BouncingScrollPhysics(),
            ),
            children: [
              buildHeader(),
              const Divider(),
              buildTitle(l10n.websitesIBuild),
              WebsiteItem(
                name: l10n.seogptName,
                description: l10n.seogptDescription,
                icon: "assets/images/seogpt_logo64x64.png",
                iconTag: "seogpt-icon",
                url: "/seogpt",
              ),
              WebsiteItem(
                name: l10n.dadachatName,
                description: l10n.dadachatDescription,
                icon: "assets/images/dadachat_logo64x64.png",
                iconTag: "dadachat-icon",
                url: "https://dadachat.cn",
              ),
              const SizedBox(height: 20),
              buildTitle(l10n.mobileAppsIBuild),
              const TearsMapItem(),
              const TempediaItem(),
              const Horizon5CarsItem(),
              const FM2023Item(),
              const SF6Item(),
              const KOF15Item(),
              const AnimalsItem(),
              buildTitle(l10n.browserExtensionsIBuild),
              WebsiteItem(
                name: "ClickMan",
                description: l10n.clickManDescription,
                icon: "assets/images/clickman_logo.png",
                iconTag: "clickman-icon",
                url: "https://clickman.wikylyu.xyz",
              ),
              buildTitle(l10n.commandlineToolsIBuild),
              WebsiteItem(
                name: "MTop",
                description: l10n.mtopDescription,
                icon: "assets/images/github-mark.png",
                iconTag: "clickman-icon",
                url: "https://github.com/wikylyu/mtop",
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                alignment: Alignment.center,
                child: Text(l10n.solely),
              ),
              const Divider(),
              const SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTitle(String name) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      child: Container(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        width: 800,
        child: Text(
          name,
          style: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget buildHeader() {
    final l10n = AppLocalizations.of(context)!;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        top: 40,
        left: 10,
        right: 10,
      ),
      height: 480,
      child: AnimatedBackground(
        vsync: this,
        behaviour: RandomParticleBehaviour(
          options: ParticleOptions(
            spawnMaxSpeed: 50,
            spawnMinSpeed: 10,
            baseColor: Theme.of(context).colorScheme.primary,
            particleCount: 50,
          ),
        ),
        child: Column(
          children: [
            const MagikarpIcon(),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Text(
                l10n.selfName,
                style: const TextStyle(fontSize: 24),
              ),
            ),
            Container(
              width: 400,
              margin: const EdgeInsets.only(
                top: 20,
              ),
              child: Text(
                l10n.selfBrief,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              width: 400,
              margin: const EdgeInsets.only(
                top: 20,
              ),
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Wrap(
                spacing: 20,
                runSpacing: 10,
                alignment: WrapAlignment.center,
                children: labels
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
          ],
        ),
      ),
    );
  }
}
