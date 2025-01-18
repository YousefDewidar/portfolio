import 'package:flutter/material.dart';

class ContactCard extends StatefulWidget {
  const ContactCard({
    super.key,
    required this.img,
    required this.title,
    required this.onTap,
  });
  final String img;
  final String title;
  final void Function() onTap;

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
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: hovered
                ? const Color.fromARGB(46, 211, 211, 212)
                : const Color.fromARGB(47, 184, 184, 185),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            Image.asset(widget.img, width: 50, height: 30),
            const SizedBox(width: 10),
            Text(widget.title, style: const TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
