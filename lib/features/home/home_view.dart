import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/features/home/widgets/custom_appbar.dart';
import 'package:my_portfolio/features/home/widgets/hero_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF4E3555), Color(0xff161B2F)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 100.w),
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth < 500) {
                  // Small Screen
                  return Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 25.h),
                          Image.asset("assets/me.png", height: 300),
                          const HeroSection(
                              alginment: CrossAxisAlignment.center),
                        ],
                      ),
                      const CustomAppBar(forMobile: true),
                    ],
                  );
                } else {
                  // Big Screen
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomAppBar(forMobile: constraints.maxWidth < 800),
                      SizedBox(height: 100.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const HeroSection(),
                          Flexible(
                            child: Image.asset(
                              "assets/me.png",
                              height: 500.h,
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
