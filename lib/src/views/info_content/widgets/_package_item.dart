part of '../info_content.view.dart';

class _PackageItem extends StatelessWidget {
  final String name;
  final IconData icon;
  final String version;

  String get url => 'https://pub.dev/packages/$name/versions/$version';

  const _PackageItem({
    required this.name,
    required this.icon,
    required this.version,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return CustomCard(
      child: _ListTile(
        url: url,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(icon, color: colorScheme.primary),
            Text(
              tr(name),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: textTheme.titleMedium!
                  .apply(fontWeightDelta: 2, fontSizeDelta: -2),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Text(
                version,
                style: textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
