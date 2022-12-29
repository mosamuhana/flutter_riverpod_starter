part of '../info_content.view.dart';

class _LinkItem extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final String? url;

  const _LinkItem({
    required this.title,
    required this.icon,
    this.url,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return CustomCard(
      child: _ListTile(
        url: url,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            if (icon != null) Icon(icon!, color: theme.colorScheme.primary),
            if (title != null)
              Text(
                tr(title!),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleMedium!
                    .apply(fontWeightDelta: 2, fontSizeDelta: -2),
              ),
          ],
        ),
      ),
    );
  }
}
