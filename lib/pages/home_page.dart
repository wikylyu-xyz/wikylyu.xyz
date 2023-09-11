import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:wikylyu_xyz/widgets/l10n/switch_language_dialog.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            IconButton(
              onPressed: () => showSwitchLanguageDialog(context),
              icon: const Icon(Icons.language),
            ),
          ],
        ),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(
              parent: BouncingScrollPhysics(),
            ),
            child: Container(
              padding: const EdgeInsets.only(
                top: 40,
                bottom: 50,
                left: 20,
                right: 20,
              ),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    width: 140,
                    height: 140,
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
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
