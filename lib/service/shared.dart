import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static late SharedPreferences prefs;

  static const String keyLanguage = "language";

  static initialize() async {
    prefs = await SharedPreferences.getInstance();
  }
}
