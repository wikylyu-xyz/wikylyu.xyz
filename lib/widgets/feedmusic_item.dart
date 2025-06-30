import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:wikylyu_xyz/l10n/app_localizations.dart';

class FeedmusicItem extends StatefulWidget {
  const FeedmusicItem({Key? key}) : super(key: key);

  @override
  createState() => _FeedmusicItemState();
}

class _FeedmusicItemState extends State<FeedmusicItem> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 5, bottom: 5),
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          width: 600,
          child: ListTile(
            onTap: () => launchUrlString("https://feedmusic.wikylyu.xyz"),
            leading: Image.asset(
              "assets/images/angular_logo.png",
              width: 48,
              height: 48,
            ),
            title: Text(
              l10n.feedmusicWebsite,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text(l10n.feedmusicDescription),
          ),
        ),
      ),
    );
  }
}
