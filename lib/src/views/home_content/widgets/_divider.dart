part of '../home_content.view.dart';

class _Divider extends StatelessWidget {
  const _Divider();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Divider(
        color: Theme.of(context).colorScheme.onBackground.withOpacity(.4),
      ),
    );
  }
}
