import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:my_portfolio/core/widgets/custom_button.dart';
import 'package:url_launcher/url_launcher.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    super.key,
    required this.title,
    required this.content,
    this.isChat = false,
  });
  final String title;
  final String content;
  final bool isChat;

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
      content: Column(
        children: [
          Text(
            content,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
          if (isChat) const SizedBox(height: 8),
          if (isChat)
            CustomButton(
              width: 130,
              height: 30,
              title: "Chat Now",
              onTap: () {
                launchUrl(Uri.parse(
                    "https://tawk.to/chat/679567003a8427326074dda3/1iifpkmd9"));
              },
            )
        ],
      ),
    );
  }
}
