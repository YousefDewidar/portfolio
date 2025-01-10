import 'package:flutter/material.dart';
import 'package:my_portfolio/core/widgets/app%20bar/link_card.dart';

class LinksForWeb extends StatelessWidget {
  const LinksForWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        LinksCard(title: 'Home'),
        LinksCard(title: 'About'),
        LinksCard(title: 'Projects'),
        LinksCard(title: 'Contact'),
      ],
    );
  }
}
