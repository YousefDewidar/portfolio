import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/widgets/app%20bar/custom_appbar_mobile.dart';
import 'package:my_portfolio/core/widgets/app%20bar/links_web.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.forMobile = false,
    required this.activeNum,
  });
  final bool forMobile;
  final int activeNum;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        clipBehavior: Clip.none,
        constraints: const BoxConstraints(minHeight: 50),
        padding: const EdgeInsets.all(3),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: Color.fromARGB(27, 255, 255, 255)),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: 500.w,
          clipBehavior: Clip.none,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            gradient: LinearGradient(
              colors: [Color(0xFF4E3555), Color(0xff161B2F)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/logo.png', height: 35),
              if (forMobile)
                CustomAppbarForMobile(
                  activeNum: activeNum,
                )
              else
                LinksForWeb(
                  activeNum: activeNum,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
