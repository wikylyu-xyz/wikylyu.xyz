import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:wikylyu_xyz/service/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AnimalsItem extends StatefulWidget {
  const AnimalsItem({super.key});

  @override
  State<StatefulWidget> createState() => _AnimalsItemState();
}

class _AnimalsItemState extends State<AnimalsItem> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Theme(
      data: Theme.of(context)
          .copyWith(colorScheme: ColorsService.animalsColorScheme),
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 5, bottom: 5),
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: SizedBox(
            width: 600,
            child: ListTile(
              onTap: () => launchUrlString("https://animals.wikylyu.xyz"),
              leading: Hero(
                tag: "animals-logo",
                child: Image.asset(
                  "assets/images/animals_logo.png",
                  width: 48,
                  height: 48,
                ),
              ),
              title: const Text(
                "Animals",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: "MohrRounded",
                ),
              ),
              subtitle: Text(
                l10n.animalsDescription,
                style: const TextStyle(
                  fontFamily: "MohrRounded",
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
