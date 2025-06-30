import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:wikylyu_xyz/l10n/app_localizations.dart';
import 'package:wikylyu_xyz/service/colors.dart';

class TempediaItem extends StatefulWidget {
  const TempediaItem({super.key});

  @override
  State<StatefulWidget> createState() => _TempediaItemState();
}

class _TempediaItemState extends State<TempediaItem> {
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
              onTap: () => launchUrlString("https://tempedia.wikylyu.xyz"),
              leading: Hero(
                tag: "tempedia-logo",
                child: Image.asset(
                  "assets/images/tempedia_logo.png",
                  width: 48,
                  height: 48,
                ),
              ),
              title: const Text(
                "Tempedia",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: "Helsinki",
                ),
              ),
              subtitle: Text(
                l10n.tempediaDescription,
                style: const TextStyle(
                  fontFamily: "Helsinki",
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
