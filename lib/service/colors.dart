import 'package:flutter/material.dart';

class ColorsService {
  static late ColorScheme seogptColorScheme;
  static late ColorScheme dadachatColorScheme;
  static late ColorScheme totkColorSchema;
  static late ColorScheme tempediaColorScheme;
  static late ColorScheme animalsColorScheme;
  static late ColorScheme fh5ColorScheme;

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
    tempediaColorScheme = ColorScheme.fromSwatch(
      primarySwatch: Colors.blue,
    );
    animalsColorScheme = await ColorScheme.fromImageProvider(
      provider: const AssetImage("assets/images/animals_logo.png"),
    );
    fh5ColorScheme = await ColorScheme.fromImageProvider(
      provider: const AssetImage("assets/images/fh5_logo.png"),
    );
  }
}
