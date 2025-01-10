import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/widgets/app%20bar/custom_appbar.dart';
import 'package:my_portfolio/features/home/ui/widgets/customer_services.dart';
import 'package:my_portfolio/features/home/ui/widgets/github_stats.dart';
import 'package:my_portfolio/features/home/ui/widgets/hero_section.dart';
import 'package:my_portfolio/features/home/ui/widgets/projects_list_view.dart';
import 'package:my_portfolio/features/home/ui/widgets/title_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const CustomerService(),
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
                  const TitleCard(
                    title: "Projects",
                    desc: "Check out my projects below 👇",
                  ),
                  const ProjectsListView(),
                  const GitHubStats(),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
