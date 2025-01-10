import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key, required this.title, required this.onTap});
  final String title;
  final void Function() onTap;
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
        width: 300.w,
        height: 40.w,
        duration: const Duration(milliseconds: 600),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors:
                _hoverd ? [Colors.red, Colors.blue] : [Colors.blue, Colors.red],
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
