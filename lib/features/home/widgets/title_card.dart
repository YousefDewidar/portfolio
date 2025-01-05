import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({
    super.key,
    required this.title,
    required this.desc,
  });
  final String title;
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextAnimator(
          incomingEffect: WidgetTransitionEffects.incomingScaleDown(),
          title,
          style: TextStyle(
            fontSize: 30.sp,
            fontStyle: FontStyle.italic,
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 8.w),
        Container(
          width: 50.w,
          height: 4.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: const LinearGradient(colors: [Colors.blue, Colors.red]),
          ),
        ),
        SizedBox(height: 8.w),
        Text(
          desc,
          style: TextStyle(
            fontSize: 15.sp,
            color: const Color.fromARGB(215, 255, 255, 255),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
