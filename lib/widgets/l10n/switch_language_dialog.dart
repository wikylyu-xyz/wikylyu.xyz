import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';
import 'package:wikylyu_xyz/bloc/language_cubit.dart';
import 'package:wikylyu_xyz/service/shared.dart';

class SwitchLanguageDialog extends StatefulWidget {
  final String languageCode;
  const SwitchLanguageDialog({super.key, required this.languageCode});

  @override
  State<StatefulWidget> createState() => _SwitchLanguageDialogState();
}

class _SwitchLanguageDialogState extends State<SwitchLanguageDialog> {
  List<String> languages = [];
  List<bool> isSelected = [];

  @override
  void initState() {
    super.initState();

    for (var locale in AppLocalizations.supportedLocales) {
      languages.add(LocaleNamesLocalizationsDelegate
          .nativeLocaleNames[locale.languageCode]!);
      isSelected.add(widget.languageCode == locale.languageCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return AlertDialog(
      title: Text(l10n.switchLanguageTitle),
      content: ToggleButtons(
        direction: Axis.vertical,
        isSelected: isSelected,
        borderRadius: BorderRadius.circular(10.0),
        onPressed: onLanguageSelected,
        children: languages
            .map(
              (e) => Text(
                e,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            )
            .toList(),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            l10n.cancel,
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
        TextButton(
          onPressed: onOk,
          child: Text(l10n.ok),
        )
      ],
    );
  }

  onLanguageSelected(int v) {
    if (isSelected[v]) {
      return;
    }
    setState(() {
      isSelected.fillRange(0, isSelected.length, false);
      isSelected[v] = true;
    });
  }

  onOk() {
    int i = isSelected.indexOf(true);

    String code = AppLocalizations.supportedLocales[i].languageCode;
    Navigator.pop(context, code);
  }
}

void showSwitchLanguageDialog(BuildContext context) async {
  final l10n = AppLocalizations.of(context)!;

  final code = await showDialog<String>(
    context: context,
    builder: (context) => SwitchLanguageDialog(
      languageCode: l10n.localeName,
    ),
  );

  if (code != null && code.isNotEmpty && context.mounted) {
    context.read<LanguageCubit>().set(code);
    SharedPreferencesService.prefs
        .setString(SharedPreferencesService.keyLanguage, code);
  }
}

class SwitchLanguageButton extends StatelessWidget {
  const SwitchLanguageButton({super.key});
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => showSwitchLanguageDialog(context),
      icon: const Icon(Icons.language),
    );
  }
}
