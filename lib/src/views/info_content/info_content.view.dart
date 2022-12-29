import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../widgets.dart';
import '../../constants.dart';
import '../../utils.dart';

part 'widgets/_github_link.dart';
part 'widgets/_link_item.dart';
part 'widgets/_list_tile.dart';
part 'widgets/_package_item.dart';
part 'widgets/_text_divider.dart';

class InfoContentView extends StatelessWidget {
  const InfoContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.background,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        physics: const BouncingScrollPhysics(),
        children: const [
          Header(text: 'bottom_nav_second'),
          _GithubLink(),
          _TextDivider(text: 'author_divider_title'),
          CustomGridView(
            crossAxisCount: 2,
            childAspectRatio: 2 / 1.15,
            children: [
              _LinkItem(
                title: 'instagram_card_title',
                icon: Ionicons.logo_instagram,
                url: autherInstagramUrl,
              ),
              _LinkItem(
                title: 'twitter_card_title',
                icon: Ionicons.logo_twitter,
                url: autherTwitterUrl,
              ),
              _LinkItem(
                title: 'donate_card_title',
                icon: Ionicons.heart_outline,
                url: autherDonationUrl,
              ),
              _LinkItem(
                title: 'website_card_title',
                icon: Ionicons.desktop_outline,
                url: autherWebsiteUrl,
              ),
            ],
          ),
          _TextDivider(text: 'packages_divider_title'),
          CustomGridView(
            crossAxisCount: 2,
            childAspectRatio: 2 / 1.15,
            children: [
              _PackageItem(
                name: 'flutter_riverpod',
                icon: Ionicons.leaf_outline,
                version: '2.1.3',
              ),
              _PackageItem(
                name: 'flutter_lints',
                icon: Ionicons.code_slash_outline,
                version: '2.0.1',
              ),
              _PackageItem(
                name: 'path_provider',
                icon: Ionicons.extension_puzzle_outline,
                version: '2.0.11',
              ),
              _PackageItem(
                name: 'flutter_displaymode',
                icon: Ionicons.speedometer_outline,
                version: '0.5.0',
              ),
              _PackageItem(
                name: 'easy_localization',
                icon: Ionicons.language_outline,
                version: '3.0.1',
              ),
              _PackageItem(
                name: 'hive',
                icon: Ionicons.folder_open_outline,
                version: '2.2.3',
              ),
              _PackageItem(
                name: 'url_launcher',
                icon: Ionicons.share_outline,
                version: '6.1.7',
              ),
              _PackageItem(
                name: 'ionicons',
                icon: Ionicons.logo_ionic,
                version: '0.2.1',
              ),
            ],
          ),
          SizedBox(height: 36),
        ],
      ),
    );
  }
}
