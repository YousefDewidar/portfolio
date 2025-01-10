import 'package:flutter/material.dart';
import 'package:my_portfolio/core/helper/fast_navigate.dart';
import 'package:my_portfolio/core/widgets/app%20bar/link_card.dart';
import 'package:my_portfolio/features/home/ui/home_view.dart';
import 'package:my_portfolio/features/projects/projects_view.dart';

class LinksForWeb extends StatelessWidget {
  const LinksForWeb({
    super.key,
    required this.activeNum,
  });

  final int activeNum;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        LinksCard(
          title: 'Home',
          active: activeNum == 0,
          onTap: () {
            fastNavigate(context, const HomeView());
          },
        ),
        LinksCard(
          title: 'About',
          active: activeNum == 1,
          onTap: () {
            // fastNavigate(context, const HomeView());
          },
        ),
        LinksCard(
          title: 'Projects',
          active: activeNum == 2,
          onTap: () {
            fastNavigate(context, const ProjectsView());
          },
        ),
        LinksCard(
          title: 'Contact',
          active: activeNum == 3,
          onTap: () {
            // fastNavigate(context, const HomeView());
          },
        ),
      ],
    );
  }
}
