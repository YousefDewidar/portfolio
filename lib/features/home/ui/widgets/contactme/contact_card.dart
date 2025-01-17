import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ContactCard extends StatefulWidget {
  const ContactCard({
    super.key,
    required this.icon,
    required this.title,
  });
  final IconData icon;
  final String title;

  @override
  State<ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  bool hovered = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        hovered = value;
        setState(() {});
      },
      onTap: () {
        Clipboard.setData(ClipboardData(text: widget.title));
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: const Color.fromARGB(216, 42, 23, 62),
            content:
                Center(child: Text("Copied to clipboard: ${widget.title}")),
            duration: const Duration(seconds: 2),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: hovered
                ? const Color.fromARGB(46, 211, 211, 212)
                : const Color.fromARGB(47, 184, 184, 185),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            Icon(widget.icon, color: Colors.white),
            const SizedBox(width: 10),
            Text(widget.title, style: const TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
