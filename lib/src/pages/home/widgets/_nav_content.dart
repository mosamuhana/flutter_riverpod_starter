part of '../home.page.dart';

class _NavContent extends ConsumerWidget {
  const _NavContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(bottomNavProvider);

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: _getPage(index),
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 1:
        return const InfoContentView();
      case 0:
      default:
        return const HomeContentView();
    }
  }
}
