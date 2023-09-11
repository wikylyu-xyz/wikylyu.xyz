import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';
import 'package:wikylyu_xyz/bloc/language_cubit.dart';
import 'package:wikylyu_xyz/pages/home_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:wikylyu_xyz/service/shared.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SharedPreferencesService.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final languageCode = SharedPreferencesService.prefs
            .getString(SharedPreferencesService.keyLanguage) ??
        "en";
    return BlocProvider(
      create: (context) => LanguageCubit(languageCode),
      child: BlocBuilder<LanguageCubit, String>(
        builder: (context, state) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.blue,
            ),
            useMaterial3: true,
            fontFamily: "NotoSansSC-Regular",
          ),
          locale: Locale(state),
          localizationsDelegates: const [
            LocaleNamesLocalizationsDelegate(),
            ...AppLocalizations.localizationsDelegates
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          routes: {
            "/": (context) => const HomePage(),
          },
        ),
      ),
    );
  }
}
