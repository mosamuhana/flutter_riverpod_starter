part of '../home.page.dart';

class _NavBar extends ConsumerWidget {
  const _NavBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navIndex = ref.watch(bottomNavProvider);

    return Card(
      margin: const EdgeInsets.only(top: 1, right: 4, left: 4),
      elevation: 4,
      shadowColor: Theme.of(context).colorScheme.shadow,
      color: Theme.of(context).colorScheme.surfaceVariant,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: BottomNavigationBar(
        currentIndex: navIndex,
        onTap: (index) => ref.read(bottomNavProvider.notifier).value = index,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        backgroundColor: Colors.transparent,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Theme.of(context).textTheme.bodySmall!.color,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Ionicons.home_outline),
            label: tr('bottom_nav_first'),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Ionicons.information_circle_outline),
            label: tr('bottom_nav_second'),
          ),
        ],
      ),
    );
  }
}
