import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
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
  double opacity = 0.5;
  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((_) {
      setState(() {
        opacity = 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 5, bottom: 5),
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 1000),
        curve: Curves.easeInOut,
        opacity: opacity,
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: SizedBox(
            width: 600,
            child: ListTile(
              onTap: () => Navigator.pushNamed(
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
      ),
    );
  }
}
