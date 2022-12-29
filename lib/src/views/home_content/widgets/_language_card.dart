part of '../home_content.view.dart';

class _LanguageCard extends ConsumerWidget {
  const _LanguageCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return CustomCard(
      child: SwitchListTile(
        value: context.locale == const Locale('de'),
        onChanged: (value) =>
            context.setLocale(value ? const Locale('de') : const Locale('en')),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        title: Row(
          children: [
            Icon(Ionicons.language_outline, color: colorScheme.primary),
            const SizedBox(width: 16),
            Text(
              tr('language_switch_title'),
              style: theme.textTheme.titleMedium!.apply(fontWeightDelta: 2),
            ),
          ],
        ),
      ),
    );
  }
}
