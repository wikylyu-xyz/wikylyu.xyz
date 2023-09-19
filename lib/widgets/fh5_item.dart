import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:wikylyu_xyz/service/colors.dart';

class Horizon5CarsItem extends StatefulWidget {
  const Horizon5CarsItem({Key? key}) : super(key: key);

  @override
  createState() => _Horizon5CarsItemState();
}

class _Horizon5CarsItemState extends State<Horizon5CarsItem> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Theme(
      data:
          Theme.of(context).copyWith(colorScheme: ColorsService.fh5ColorScheme),
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 5, bottom: 5),
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Container(
            width: 600,
            child: ListTile(
              onTap: () => launchUrlString("https://fh5.wikylyu.xyz"),
              leading: Hero(
                tag: "totk-logo",
                child: Image.asset(
                  "assets/images/fh5_logo.png",
                  width: 48,
                  height: 48,
                ),
              ),
              title: const Text(
                "Horizon 5 Cars",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: "Share",
                ),
              ),
              subtitle: Text(
                l10n.fh5Description,
                style: const TextStyle(
                  fontFamily: "Share",
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
