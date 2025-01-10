import 'package:flutter/material.dart';
import 'package:my_portfolio/core/widgets/app%20bar/link_card.dart';

class CustomAppbarForMobile extends StatefulWidget {
  const CustomAppbarForMobile({super.key});

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
          const Column(
            children: [
              LinksCard(title: 'Home'),
              SizedBox(height: 3),
              LinksCard(title: 'About'),
              SizedBox(height: 3),
              LinksCard(title: 'Projects'),
              SizedBox(height: 3),
              LinksCard(title: 'Contact'),
            ],
          ),
      ],
    );
  }
}
