part of '../info_content.view.dart';

class _TextDivider extends StatelessWidget {
  final String text;

  const _TextDivider({required this.text});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final divider = Expanded(
        child: Divider(color: theme.colorScheme.onBackground.withOpacity(.4)));

    return Padding(
      padding: const EdgeInsets.only(left: 24, top: 24, right: 24, bottom: 10),
      child: Row(
        children: [
          divider,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              tr(text),
              style: theme.textTheme.bodyMedium,
            ),
          ),
          divider,
        ],
      ),
    );
  }
}
