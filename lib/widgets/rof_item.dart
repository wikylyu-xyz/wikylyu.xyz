import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:wikylyu_xyz/service/colors.dart';

class ROFItem extends StatefulWidget {
  const ROFItem({Key? key}) : super(key: key);

  @override
  createState() => _ROFItemState();
}

class _ROFItemState extends State<ROFItem> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Theme(
      data:
          Theme.of(context).copyWith(colorScheme: ColorsService.rofColorScheme),
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 5, bottom: 5),
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: SizedBox(
            width: 600,
            child: ListTile(
              onTap: () => launchUrlString("https://rof.wikylyu.xyz"),
              leading: Hero(
                tag: "rof-logo",
                child: Image.asset(
                  "assets/images/rof_logo.png",
                  width: 48,
                  height: 48,
                ),
              ),
              title: Text(
                l10n.rofName,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                l10n.rofDescription,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
