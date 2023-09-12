import 'package:flutter/material.dart';
import 'package:wikylyu_xyz/widgets/l10n/switch_language_dialog.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DadachatPage extends StatefulWidget {
  const DadachatPage({super.key});

  @override
  State<StatefulWidget> createState() => _DadachatPageState();
}

class _DadachatPageState extends State<DadachatPage> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Title(
      color: Colors.white,
      title: l10n.dadachatName,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(l10n.dadachatName),
          actions: const [
            SwitchLanguageButton(),
          ],
        ),
      ),
    );
  }
}
