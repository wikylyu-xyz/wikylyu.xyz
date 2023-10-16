import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:wikylyu_xyz/service/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FM2023Item extends StatefulWidget {
  const FM2023Item({super.key});

  @override
  State<StatefulWidget> createState() => _FM2023ItemState();
}

class _FM2023ItemState extends State<FM2023Item> {
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
              onTap: () => launchUrlString("https://fm2023.wikylyu.xyz"),
              leading: Hero(
                tag: "fm2023-logo",
                child: Image.asset(
                  "assets/images/fm2023_logo.png",
                  width: 48,
                  height: 48,
                ),
              ),
              title: const Text(
                "FM2023 Cars",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: "Acumin Pro Condensed"),
              ),
              subtitle: Text(
                l10n.fm2023Description,
                style: const TextStyle(fontFamily: "Acumin Pro Condensed"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
