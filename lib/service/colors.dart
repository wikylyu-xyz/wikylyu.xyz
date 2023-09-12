import 'package:flutter/material.dart';

class ColorsService {
  static late ColorScheme seogptColorScheme;

  static initilize() async {
    seogptColorScheme = await ColorScheme.fromImageProvider(
        provider: const AssetImage("assets/images/seogpt_logo.png"));
  }
}
