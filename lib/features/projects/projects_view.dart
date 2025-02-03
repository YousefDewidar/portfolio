import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/supabase/supabase.dart';
import 'package:my_portfolio/core/widgets/app%20bar/custom_appbar.dart';
import 'package:my_portfolio/features/home/ui/widgets/customerService/customer_services.dart';
import 'package:my_portfolio/features/home/ui/widgets/project_card.dart';
import 'package:my_portfolio/features/home/ui/widgets/title_card.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

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
        child: LayoutBuilder(builder: (context, constraints) {
          // Big Screen
          return ListView(
            padding: EdgeInsets.symmetric(horizontal: 100.w),
            children: [
              SizedBox(height: 20.h),
              CustomAppBar(activeNum: 2, forMobile: constraints.maxWidth < 800),
              SizedBox(height: 20.h),
              const TitleCard(
                title: "Projects",
                desc: "",
              ),
              FutureBuilder(
                  future: SupabaseService.getAllProjects(),
                  // future: getDummyProjectAsync(),
                  builder: (context, snap) {
                    if (snap.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (snap.hasError) {
                      return  Center(child: Text(snap.error.toString()));
                    } else {
                      return GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: constraints.maxWidth < 800 ? 2 : 3,
                            childAspectRatio: 1),
                        itemCount: 9,
                        itemBuilder: (context, index) {
                          return ProjectCard(project: snap.data![index]);
                        },
                      );
                    }
                  })
            ],
          );
        }),
      ),
    );
  }
}
