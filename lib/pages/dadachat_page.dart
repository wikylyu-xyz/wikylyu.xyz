import 'package:flutter/material.dart';
import 'package:wikylyu_xyz/l10n/app_localizations.dart';
import 'package:wikylyu_xyz/service/colors.dart';
import 'package:wikylyu_xyz/widgets/l10n/switch_language_dialog.dart';

class DadachatPage extends StatefulWidget {
  const DadachatPage({super.key});

  @override
  State<StatefulWidget> createState() => _DadachatPageState();
}

class _DadachatPageState extends State<DadachatPage> {
  final ColorScheme colorScheme = ColorsService.dadachatColorScheme;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Title(
      color: Colors.white,
      title: l10n.dadachatName,
      child: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: colorScheme,
        ),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: colorScheme.inversePrimary,
            title: Text(l10n.dadachatName),
            actions: const [
              SwitchLanguageButton(),
            ],
          ),
        ),
      ),
    );
  }
}
