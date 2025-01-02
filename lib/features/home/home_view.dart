import 'package:flutter/material.dart';
import 'package:my_portfolio/features/home/widgets/custom_appbar.dart';
import 'package:my_portfolio/features/home/widgets/hero_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF4E3555), Color(0xff161B2F)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 100),
            child: LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth < 500) {
                // Small Screen
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CustomAppbarForMobile(),
                    const SizedBox(height: 25),
                    Image.asset("assets/me.png", scale: 1.2),
                    const HeroSection(alginment: CrossAxisAlignment.center),
                  ],
                );
              } else {
                // Big Screen
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomAppBar(),
                    const SizedBox(height: 100),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const HeroSection(),
                        Image.asset("assets/me.png", scale: 1.2),
                      ],
                    ),
                  ],
                );
              }
            }),
          ),
        ),
      ),
    );
  }
}

