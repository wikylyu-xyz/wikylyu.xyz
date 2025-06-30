import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:wikylyu_xyz/l10n/app_localizations.dart';
import 'package:wikylyu_xyz/service/colors.dart';

class KOF15Item extends StatefulWidget {
  const KOF15Item({super.key});

  @override
  State<StatefulWidget> createState() => _KOF15ItemState();
}

class _KOF15ItemState extends State<KOF15Item> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Theme(
      data: Theme.of(context)
          .copyWith(colorScheme: ColorsService.tempediaColorScheme),
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 5, bottom: 5),
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: SizedBox(
            width: 600,
            child: ListTile(
              onTap: () => launchUrlString("https://kof15.wikylyu.xyz"),
              leading: Hero(
                tag: "kof15-logo",
                child: Image.asset(
                  "assets/images/kof15_logo.png",
                  width: 48,
                  height: 48,
                ),
              ),
              title: const Text(
                "KXV Moves",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                l10n.kof15Description,
                style: const TextStyle(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
