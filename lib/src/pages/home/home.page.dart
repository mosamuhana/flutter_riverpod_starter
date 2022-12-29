import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ionicons/ionicons.dart';

import '../../providers.dart';
import '../../views/home_content/home_content.view.dart';
import '../../views/info_content/info_content.view.dart';

part 'widgets/_app_bar.dart';
part 'widgets/_nav_bar.dart';
part 'widgets/_nav_content.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const _AppBar(),
      body: const _NavContent(),
      bottomNavigationBar: const _NavBar(),
      backgroundColor: Theme.of(context).colorScheme.background,
    );
  }
}
