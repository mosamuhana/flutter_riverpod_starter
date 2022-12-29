part of '../home_content.view.dart';

class _InfoCard extends StatelessWidget {
  final String title;
  final String content;
  final IconData icon;
  final bool isPrimary;

  const _InfoCard({
    required this.title,
    required this.content,
    required this.icon,
    required this.isPrimary,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = isPrimary ? theme.primaryTextTheme : theme.textTheme;

    return CustomCard(
      color: isPrimary ? colorScheme.primary : colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tr(title),
              style: textTheme.titleLarge!.apply(fontWeightDelta: 2),
            ),
            const SizedBox(height: 10),
            Text(
              tr(content),
              style: textTheme.bodyMedium,
            ),
            const Spacer(),
            Icon(
              icon,
              size: 32,
              color: textTheme.bodyMedium!.color,
            ),
          ],
        ),
      ),
    );
  }
}
