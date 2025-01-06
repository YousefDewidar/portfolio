import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.forMobile = false,
  });
  final bool forMobile;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        clipBehavior: Clip.none,
        constraints: const BoxConstraints(minHeight: 50),
        padding: const EdgeInsets.all(3),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: Color.fromARGB(27, 255, 255, 255)),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: 500.w,
          clipBehavior: Clip.none,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            gradient: LinearGradient(
              colors: [Color(0xFF4E3555), Color(0xff161B2F)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/logo.png', height: 35),
              if (forMobile)
                const CustomAppbarForMobile()
              else
                const LinksForWeb(),
            ],
          ),
        ),
      ),
    );
  }
}

class LinksForWeb extends StatelessWidget {
  const LinksForWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        LinksCard(title: 'Home', active: true),
        LinksCard(title: 'About'),
        LinksCard(title: 'Projects'),
        LinksCard(title: 'Contact'),
      ],
    );
  }
}

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
              LinksCard(title: 'Home', active: true),
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

class LinksCard extends StatelessWidget {
  const LinksCard({
    super.key,
    required this.title,
    this.active = false,
  });
  final String title;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      padding: const EdgeInsets.symmetric(horizontal: 9),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        color: active
            ? const Color.fromARGB(51, 221, 221, 221)
            : Colors.transparent,
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: MediaQuery.of(context).size.width < 500 ? 12 : 15,
          ),
        ),
      ),
    );
  }
}
