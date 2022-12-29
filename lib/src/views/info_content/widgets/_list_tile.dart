part of '../info_content.view.dart';

class _ListTile extends StatelessWidget {
  final String? url;
  final Widget? trailing;
  final Widget? title;

  const _ListTile({
    this.url,
    this.trailing,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      onTap: url == null
          ? null
          : () => launchUrl(Uri.parse(url!), context: context),
      title: title,
      trailing: trailing,
    );
  }
}
