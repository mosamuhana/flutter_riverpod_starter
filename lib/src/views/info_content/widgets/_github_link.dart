part of '../info_content.view.dart';

class _GithubLink extends StatelessWidget {
  const _GithubLink();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return CustomCard(
      child: _ListTile(
        url: githubRepositoryUrl,
        trailing: Icon(
          Ionicons.open_outline,
          color: textTheme.titleMedium!.color,
        ),
        title: Row(
          children: [
            Icon(Ionicons.logo_github, color: theme.colorScheme.primary),
            const SizedBox(width: 16),
            Text(
              tr('github_card_title'),
              style: textTheme.titleMedium!.apply(fontWeightDelta: 2),
            ),
          ],
        ),
      ),
    );
  }
}
