import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  final List<Widget> children;
  final int crossAxisCount;
  final double childAspectRatio;

  const CustomGridView({
    super.key,
    required this.crossAxisCount,
    required this.childAspectRatio,
    this.children = const <Widget>[],
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      crossAxisCount: crossAxisCount,
      childAspectRatio: childAspectRatio,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      children: children,
    );
  }
}
