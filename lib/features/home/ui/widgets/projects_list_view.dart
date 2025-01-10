import 'package:flutter/material.dart';
import 'package:my_portfolio/core/widgets/custom_button.dart';
import 'package:my_portfolio/dummy_projects.dart';
import 'package:my_portfolio/features/home/ui/widgets/project_card.dart';
import 'package:my_portfolio/features/projects/projects_view.dart';

class ProjectsListView extends StatelessWidget {
  const ProjectsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FutureBuilder(
          // future: SupabaseService.getTopProjects(),
          future: getDummyProjectAsync(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return ProjectCard(
                    project: snapshot.data![index],
                  );
                },
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return const Center(child: Text("Error"));
            }
          },
        ),
        const SizedBox(height: 12),
        CustomButton(
          title: "View All Projects",
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const ProjectsView();
                },
              ),
            );
          },
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
