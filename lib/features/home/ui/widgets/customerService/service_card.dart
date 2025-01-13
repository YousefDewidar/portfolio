import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    super.key,
    required this.title,
    required this.content,
  });
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    ExpandedTileController tileController = ExpandedTileController();
    return ExpandedTile(
      footerSeparator: 0,
      theme: const ExpandedTileThemeData(
        headerColor: Color.fromARGB(230, 238, 238, 238),
        contentBackgroundColor: Color.fromARGB(230, 197, 197, 197),
      ),
      contentseparator: 0,
      controller: tileController,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
      content: Text(
        content,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
