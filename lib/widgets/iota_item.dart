import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:wikylyu_xyz/l10n/app_localizations.dart';

class IotaItem extends StatefulWidget {
  const IotaItem({Key? key}) : super(key: key);

  @override
  createState() => _IotaItemState();
}

class _IotaItemState extends State<IotaItem> {
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
            onTap: () => launchUrlString("https://iota.wikylyu.xyz"),
            leading: Image.asset(
              "assets/images/iota_logo.png",
              width: 48,
              height: 48,
            ),
            title: Text(
              l10n.iotaWebsiteClone,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text(l10n.iotaWebSiteCloneDescription),
          ),
        ),
      ),
    );
  }
}
