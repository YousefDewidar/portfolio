import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/helper/fast_navigate.dart';
import 'package:my_portfolio/features/home/ui/widgets/buttin_hire.dart';
import 'package:my_portfolio/features/projects/projects_view.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class HeroSection extends StatelessWidget {
  const HeroSection(
      {super.key,
      this.alginment = CrossAxisAlignment.start,
      required this.scrollCon});
  final CrossAxisAlignment alginment;
  final ScrollController scrollCon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Color.fromARGB(0, 255, 255, 255),
      ),
      child: Column(
        crossAxisAlignment: alginment,
        children: [
          Text(
            "I'm Yousef Dewidar",
            style: TextStyle(
              fontSize: 28.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white70,
            ),
            textAlign: TextAlign.center,
          ),
          ShaderMask(
            shaderCallback: (bounds) {
              return const LinearGradient(
                colors: [Colors.blue, Colors.red],
                stops: [0.3, 0.7],
              ).createShader(bounds);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3.0),
              child: TextAnimator(
                "Mobile App Developer",
                style: TextStyle(
                  fontSize: 46.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
                atRestEffect: WidgetRestingEffects.wave(),
              ),
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            "Welcome to my website 👋",
            style: TextStyle(
              fontSize: 26.sp,
              color: const Color.fromARGB(203, 255, 255, 255),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: alginment == CrossAxisAlignment.start
                ? MainAxisAlignment.start
                : MainAxisAlignment.center,
            children: [
              ButtonHire(
                title: "Contact me",
                onPressed: () {
                  scrollCon.animateTo(1200,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.linear);
                },
              ),
              SizedBox(width: 16.h),
              ButtonHire(
                title: "View Works",
                onPressed: () {
                  fastNavigate(context, const ProjectsView());
                },
              ),
            ],
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}
