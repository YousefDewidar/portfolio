import 'package:flutter/material.dart';
import 'package:my_portfolio/core/widgets/custom_button.dart';
import 'package:my_portfolio/features/contact/data/me.dart';
import 'package:my_portfolio/features/home/ui/widgets/aboutme/my_image.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key, required this.myinfo});
  final Me myinfo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MyImage(),
        const SizedBox(width: 30),
        SizedBox(
          width: MediaQuery.of(context).size.width / 2 - 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                myinfo.name.toUpperCase(),
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                myinfo.about,
                style: const TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(232, 255, 255, 255),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 100,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(22, 14, 1, 20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/eng.png", height: 80),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Faculty of Engineering, Tanta University",
                          style: TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(232, 255, 255, 255),
                          ),
                        ),
                        Text(
                          "Major in Computer Engineering and Automatic control.",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(211, 255, 255, 255),
                          ),
                        ),
                        Text(
                          "Expected graduation: 2026",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(211, 255, 255, 255),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Languages & Tools",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 20),
              Image.network(myinfo.skills.one),
              const SizedBox(height: 8),
              Center(child: Image.network(myinfo.skills.two)),
              const SizedBox(height: 20),
              CustomButton(
                title: "Download Resume",
                onTap: () {
                  launchUrl(Uri.parse(myinfo.resume));
                },
                width: 200,
                colors: const [Colors.blueGrey, Colors.deepPurpleAccent],
              )
            ],
          ),
        )
      ],
    );
  }
}
