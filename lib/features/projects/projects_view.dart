import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/features/home/ui/widgets/custom_appbar.dart';
import 'package:my_portfolio/features/home/ui/widgets/title_card.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4E3555), Color(0xff161B2F)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 500) {
              // Small Screen
              return Stack(
                children: [
                  ListView(
                    padding: EdgeInsets.symmetric(horizontal: 100.w),
                    children: const [
                      TitleCard(
                          title: "Projects",
                          desc: "Check out my projects below 👇"),
                    ],
                  ),
                  const Positioned(
                      top: 20,
                      left: 0,
                      right: 0,
                      child: CustomAppBar(forMobile: true)),
                ],
              );
            } else {
              // Big Screen
              return ListView(
                padding: EdgeInsets.symmetric(horizontal: 100.w),
                children: [
                  SizedBox(height: 20.h),
                  CustomAppBar(forMobile: constraints.maxWidth < 800),
                  SizedBox(height: 20.h),
                  const TitleCard(
                    title: "Projects",
                    desc: "Check out my projects below 👇",
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      // childAspectRatio: 2/1.2
                    ),
                    itemCount: 9,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        height: 200,
                        width: 200,
                        color: Colors.white,
                      );
                    },
                  )
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
