import 'package:flutter/material.dart';
import 'package:my_portfolio/core/supabase/supabase.dart';
import 'package:my_portfolio/features/home/ui/widgets/project_card.dart';

class ProjectsListView extends StatelessWidget {
  const ProjectsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: SupabaseService.getData('projects'),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SizedBox(
              height: 400,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return ProjectCard(
                    project: snapshot.data![index],
                  );
                },
              ),
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return const Center(child: Text("Error"));
          }
        });
  }
}
