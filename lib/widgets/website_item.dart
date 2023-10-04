import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class WebsiteItem extends StatefulWidget {
  final String name;
  final String description;
  final String icon;
  final String iconTag;
  final String url;
  const WebsiteItem({
    super.key,
    required this.name,
    required this.description,
    required this.icon,
    required this.iconTag,
    required this.url,
  });

  @override
  State<StatefulWidget> createState() => _WebsiteItemState();
}

class _WebsiteItemState extends State<WebsiteItem> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 5, bottom: 5),
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          width: 600,
          child: ListTile(
            onTap: () => widget.url.startsWith("http")
                ? launchUrlString(widget.url)
                : Navigator.pushNamed(
                    context,
                    widget.url,
                  ),
            leading: Hero(
              tag: widget.iconTag,
              child: Image.asset(
                widget.icon,
                width: 48,
                height: 48,
              ),
            ),
            title: Text(
              widget.name,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text(widget.description),
          ),
        ),
      ),
    );
  }
}
