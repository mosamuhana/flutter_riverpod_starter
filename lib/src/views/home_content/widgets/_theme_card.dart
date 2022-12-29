part of '../home_content.view.dart';

class _ThemeCard extends ConsumerWidget {
  final IconData icon;
  final ThemeMode themeMode;

  const _ThemeCard({
    required this.themeMode,
    required this.icon,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final isSelected = ref.watch(themeProvider.select((x) => x == themeMode));

    return Tooltip(
      message: tr('${themeMode.name}_title'),
      child: CustomCard(
        color: isSelected ? colorScheme.primary : colorScheme.surface,
        child: InkWell(
          onTap: () => ref.read(themeProvider.notifier).value = themeMode,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          child: Icon(
            icon,
            size: 32,
            color: isSelected ? Colors.white : colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
