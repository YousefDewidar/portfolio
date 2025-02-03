import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkButtonCard extends StatefulWidget {
  const LinkButtonCard({
    super.key,
    required this.title,
    required this.img,
    required this.url,
    this.width = 300,
    this.height = 40,
    this.colors = const [Color(0xFFF44336), Color(0xFF2196F3)],
  });
  final String title;
  final String? url;
  final String img;
  final List<Color> colors;
  final double width;
  final double height;
  @override
  State<LinkButtonCard> createState() => _LinkButtonCardState();
}

class _LinkButtonCardState extends State<LinkButtonCard> {
  bool _hoverd = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.url != null) {
          launchUrl(Uri.parse(widget.url!));
        }
      },
      onHover: (value) {
        _hoverd = value;
        setState(() {});
      },
      child: AnimatedContainer(
        padding: const EdgeInsets.all(8),
        width: widget.width.w,
        height: widget.height,
        duration: const Duration(milliseconds: 400),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          gradient: LinearGradient(
            colors: _hoverd ? widget.colors : widget.colors.reversed.toList(),
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Stack(
          children: [
            Image.asset(widget.img, height: 60),
            Center(
              child: Text(
                widget.title.toUpperCase(),
                style: const TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(243, 255, 255, 255),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
