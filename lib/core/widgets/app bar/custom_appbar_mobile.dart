import 'package:flutter/material.dart';
import 'package:my_portfolio/core/helper/fast_navigate.dart';
import 'package:my_portfolio/core/widgets/app%20bar/link_card.dart';
import 'package:my_portfolio/features/home/ui/home_view.dart';
import 'package:my_portfolio/features/projects/projects_view.dart';

class CustomAppbarForMobile extends StatefulWidget {
  const CustomAppbarForMobile(
      {super.key, required this.activeNum, this.scrollCon});
  final int activeNum;
  final ScrollController? scrollCon;

  @override
  State<CustomAppbarForMobile> createState() => _CustomAppbarForMobileState();
}

class _CustomAppbarForMobileState extends State<CustomAppbarForMobile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(_isExpanded ? Icons.menu_open : Icons.menu,
              color: Colors.white),
          onPressed: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
        ),
        if (_isExpanded)
          Column(
            children: [
              LinksCard(
                title: 'Home',
                active: widget.activeNum == 0,
                onTap: () {
                  fastNavigate(context, const HomeView());
                },
              ),
              const SizedBox(height: 3),
              LinksCard(
                title: 'About',
                active: widget.activeNum == 1,
                onTap: () {
                  if (widget.scrollCon != null) {
                    widget.scrollCon!.animateTo(600,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.linear);
                  }
                },
              ),
              const SizedBox(height: 3),
              LinksCard(
                title: 'Projects',
                active: widget.activeNum == 2,
                onTap: () {
                  fastNavigate(context, const ProjectsView());
                },
              ),
              const SizedBox(height: 3),
              LinksCard(
                title: 'Contact',
                active: widget.activeNum == 3,
                onTap: () {
                  // fastNavigate(context, const HomeView());
                },
              ),
            ],
          ),
      ],
    );
  }
}
