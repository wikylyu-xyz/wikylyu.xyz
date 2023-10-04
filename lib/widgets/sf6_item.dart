import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:wikylyu_xyz/service/colors.dart';

class SF6Item extends StatefulWidget {
  const SF6Item({Key? key}) : super(key: key);

  @override
  createState() => _SF6ItemState();
}

class _SF6ItemState extends State<SF6Item> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Theme(
      data:
          Theme.of(context).copyWith(colorScheme: ColorsService.sf6ColorScheme),
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 5, bottom: 5),
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: SizedBox(
            width: 600,
            child: ListTile(
              onTap: () => launchUrlString("https://sf6.wikylyu.xyz"),
              leading: Hero(
                tag: "sf6-logo",
                child: Image.asset(
                  "assets/images/sf6_logo.png",
                  width: 48,
                  height: 48,
                ),
              ),
              title: const Text(
                "SF6 Moves",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                l10n.sf6Description,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
