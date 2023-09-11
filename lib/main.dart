import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';
import 'package:wikylyu_xyz/bloc/language_cubit.dart';
import 'package:wikylyu_xyz/pages/home_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LanguageCubit("en"),
      child: BlocBuilder<LanguageCubit, String>(
        builder: (context, state) => MaterialApp(
          title: "Magikarp",
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.blue,
            ),
            useMaterial3: true,
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
