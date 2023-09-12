import 'package:flutter/material.dart';

class ColorsService {
  static late ColorScheme seogptColorScheme;
  static late ColorScheme dadachatColorScheme;
  static late ColorScheme totkColorSchema;

  static initilize() async {
    seogptColorScheme = await ColorScheme.fromImageProvider(
      provider: const AssetImage("assets/images/seogpt_logo.png"),
    );
    dadachatColorScheme = await ColorScheme.fromImageProvider(
      provider: const AssetImage("assets/images/dadachat_logo.png"),
    );
    totkColorSchema = ColorScheme.fromSeed(
      seedColor: const Color(0xff2b2525),
      brightness: Brightness.dark,
    );
  }
}
