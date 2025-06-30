import 'package:flutter/material.dart';
import 'package:wikylyu_xyz/l10n/app_localizations.dart';
import 'package:wikylyu_xyz/service/colors.dart';
import 'package:wikylyu_xyz/widgets/l10n/switch_language_dialog.dart';

class TearsMapPage extends StatefulWidget {
  const TearsMapPage({super.key});

  @override
  State<StatefulWidget> createState() => _TearsMapPageState();
}

class _TearsMapPageState extends State<TearsMapPage> {
  final ColorScheme colorScheme = ColorsService.totkColorSchema;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Title(
      color: Colors.white,
      title: "Tears Map",
      child: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: colorScheme,
        ),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: colorScheme.inversePrimary,
            title: const Text("Tears Map"),
            actions: const [
              SwitchLanguageButton(),
            ],
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/totk_background.jpg"),
                repeat: ImageRepeat.repeat,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
