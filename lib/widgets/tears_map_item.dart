import 'package:flutter/material.dart';
import 'package:wikylyu_xyz/service/colors.dart';

class TearsMapItem extends StatefulWidget {
  const TearsMapItem({super.key});

  @override
  State<StatefulWidget> createState() => _TearsMapItemState();
}

class _TearsMapItemState extends State<TearsMapItem> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context)
          .copyWith(colorScheme: ColorsService.totkColorSchema),
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 5, bottom: 5),
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Container(
            width: 600,
            // decoration: const BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage("assets/images/totk_background.jpg"),
            //     repeat: ImageRepeat.repeat,
            //   ),
            // ),
            child: ListTile(
              onTap: () => Navigator.pushNamed(context, "/totk"),
              leading: Hero(
                tag: "totk-logo",
                child: Image.asset(
                  "assets/images/totk_logo.png",
                  width: 48,
                  height: 48,
                ),
              ),
              title: const Text(
                "Tears Map",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: "Hylia",
                ),
              ),
              subtitle: Text(
                "A interactive game map for Tears of the Kingdom.",
                style: const TextStyle(
                  fontFamily: "Hylia",
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
