import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:wikylyu_xyz/widgets/l10n/switch_language_dialog.dart';
import 'package:wikylyu_xyz/widgets/magikarp_icon.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<StatefulWidget> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Title(
      color: Colors.white,
      title: l10n.aboutTitle,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(l10n.about),
            actions: const [
              SwitchLanguageButton(),
            ],
          ),
          body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(
                  parent: BouncingScrollPhysics()),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 40,
                  bottom: 20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
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
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: InkWell(
                        onTap: () =>
                            launchUrlString("https://github.com/wikylyu"),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              "assets/images/github-mark.png",
                              width: 20,
                              height: 20,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: const Text("Github"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Text(
                        l10n.availableForRemoteWork,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: InkWell(
                        onTap: () =>
                            launchUrlString("mailto:wiky.lyu.dev@gmail.com"),
                        child: Text(
                          "Contact",
                          style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('This site is built with'),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () =>
                                  launchUrlString("https://flutter.dev"),
                              child: const FlutterLogo(
                                style: FlutterLogoStyle.horizontal,
                                size: 80,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
