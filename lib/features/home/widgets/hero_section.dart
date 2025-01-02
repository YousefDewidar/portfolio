import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/features/home/widgets/buttin_hire.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key, this.alginment = CrossAxisAlignment.start});
  final CrossAxisAlignment alginment;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        color: Color.fromARGB(0, 255, 255, 255),
      ),
      child: Column(
        crossAxisAlignment: alginment,
        children: [
          const Text(
            "Hello, I'm Yousef Dewidar",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.white70,
            ),
            textAlign: TextAlign.center,
          ),
          const Text(
            "Mobile App Developer",
            style: TextStyle(
              fontSize: 40.0,
              fontStyle: FontStyle.italic,
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16.0),
          const Text(
            "Welcome to my website",
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.white70,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16.0),
          const Row(
            children: [
              ButtonHire(
                title: "Hire Me",
              ),
              SizedBox(width: 16.0),
              ButtonHire(
                title: "View Works",
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.facebook),
                onPressed: () {
                  // Open Facebook link
                  launchUrl(
                      'https://www.facebook.com/profile.php?id=100009483401222');
                },
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.instagram),
                onPressed: () {
                  // Open Instagram link
                  launchUrl('https://www.instagram.com/yousef_dewidar/');
                },
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.twitter),
                onPressed: () {
                  // Open Twitter link
                  launchUrl('#');
                },
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.linkedin),
                onPressed: () {
                  // Open LinkedIn link
                  launchUrl('#');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  void launchUrl(String url) {
    // Add logic to open URL in a browser
  }
}
