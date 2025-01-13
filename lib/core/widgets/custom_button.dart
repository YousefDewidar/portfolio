import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.onTap,
    this.width = 300,
    this.colors = const [Color(0xFFF44336), Color(0xFF2196F3)],
  });
  final String title;
  final void Function() onTap;
  final double width;
  final List<Color> colors;
  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool _hoverd = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (value) {
        _hoverd = value;
        setState(() {});
      },
      child: AnimatedContainer(
        width: widget.width.w,
        height: 40.w,
        duration: const Duration(milliseconds: 600),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: _hoverd ? widget.colors : widget.colors.reversed.toList(),
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Text(
            widget.title.toUpperCase(),
            style: TextStyle(
              fontSize: 15.sp,
              color: const Color.fromARGB(217, 255, 255, 255),
            ),
          ),
        ),
      ),
    );
  }
}
