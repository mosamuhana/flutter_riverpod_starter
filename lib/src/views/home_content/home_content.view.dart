import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers.dart';
import '../../widgets.dart';

part 'widgets/_info_card.dart';
part 'widgets/_divider.dart';
part 'widgets/_theme_card.dart';
part 'widgets/_language_card.dart';

class HomeContentView extends StatelessWidget {
  const HomeContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.background,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        physics: const BouncingScrollPhysics(),
        children: const [
          Header(text: 'app_name'),
          _LanguageCard(),
          SizedBox(height: 8),

          // Theme mode selection
          CustomGridView(
            crossAxisCount: 3,
            childAspectRatio: 1.75 / 1,
            children: [
              _ThemeCard(
                themeMode: ThemeMode.system,
                icon: Ionicons.contrast_outline,
              ),
              _ThemeCard(
                themeMode: ThemeMode.light,
                icon: Ionicons.sunny_outline,
              ),
              _ThemeCard(
                themeMode: ThemeMode.dark,
                icon: Ionicons.moon_outline,
              ),
            ],
          ),

          _Divider(),

          CustomGridView(
            crossAxisCount: 2,
            childAspectRatio: 4 / 5.5,
            children: [
              _InfoCard(
                title: 'localization_title',
                content: 'localization_content',
                icon: Ionicons.language_outline,
                isPrimary: true,
              ),
              _InfoCard(
                title: 'linting_title',
                content: 'linting_content',
                icon: Ionicons.code_slash_outline,
                isPrimary: false,
              ),
              _InfoCard(
                title: 'storage_title',
                content: 'storage_content',
                icon: Ionicons.folder_open_outline,
                isPrimary: false,
              ),
              _InfoCard(
                title: 'dark_mode_title',
                content: 'dark_mode_content',
                icon: Ionicons.moon_outline,
                isPrimary: true,
              ),
              _InfoCard(
                title: 'state_title',
                content: 'state_content',
                icon: Ionicons.leaf_outline,
                isPrimary: true,
              ),
              _InfoCard(
                title: 'display_title',
                content: 'display_content',
                icon: Ionicons.speedometer_outline,
                isPrimary: false,
              ),
            ],
          ),

          SizedBox(height: 36),
        ],
      ),
    );
  }
}
