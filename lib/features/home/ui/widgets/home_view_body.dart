import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/widgets/app%20bar/custom_appbar.dart';
import 'package:my_portfolio/features/contact/data/me.dart';
import 'package:my_portfolio/features/home/ui/about_me.dart';
import 'package:my_portfolio/features/contact/ui/contactme/contact_me.dart';
import 'package:my_portfolio/features/home/ui/widgets/github_stats.dart';
import 'package:my_portfolio/features/home/ui/widgets/hero_section.dart';
import 'package:my_portfolio/features/home/ui/widgets/projects_list_view.dart';
import 'package:my_portfolio/features/home/ui/widgets/title_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key, required this.myInfo});
  final Me myInfo;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          // Small Screen
          return Stack(
            children: [
              ListView(
                padding: EdgeInsets.symmetric(horizontal: 100.w),
                children: [
                  SizedBox(height: 50.h),
                  Image.asset("assets/megamenu.png", height: 300),
                  const HeroSection(alginment: CrossAxisAlignment.center),
                  SizedBox(height: 25.h),
                  const TitleCard(
                      title: "Projects",
                      desc: "Check out my projects below 👇"),
                  const ProjectsListView()
                ],
              ),
              const Positioned(
                  top: 20,
                  left: 0,
                  right: 0,
                  child: CustomAppBar(forMobile: true, activeNum: 0)),
            ],
          );
        } else {
          // Big Screen
          return ListView(
            padding: EdgeInsets.symmetric(horizontal: 100.w),
            children: [
              SizedBox(height: 20.h),
              CustomAppBar(
                forMobile: constraints.maxWidth < 800,
                activeNum: 0,
              ),
              SizedBox(height: 100.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const HeroSection(),
                  Flexible(
                    child: Image.asset("assets/megamenu.png", height: 500.h),
                  ),
                ],
              ),
              SizedBox(height: 150.h),
              const TitleCard(title: "About Me", desc: ""),
              AboutMe(myinfo: myInfo),
              ContactMe(myinfo: myInfo),
              SizedBox(height: 50.h),
              const ProjectsListView(),
              const GitHubStats(),
            ],
          );
        }
      },
    );
  }
}
