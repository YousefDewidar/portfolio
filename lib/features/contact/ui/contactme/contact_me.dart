import 'package:flutter/material.dart';
import 'package:my_portfolio/features/contact/data/me.dart';
import 'package:my_portfolio/features/contact/ui/contactme/contact_card.dart';
import 'package:my_portfolio/features/home/ui/widgets/title_card.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key, required this.myinfo});
  final Me myinfo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleCard(
            title: "Contact Me",
            desc:
                "Get in touch! Here you can find my social media accounts and contact details 🚀😊"),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ContactCard(
                  title: myinfo.email,
                  img: "assets/gmail.png",
                  onTap: () {
                    launchUrl(Uri(
                      scheme: "mailto",
                      path: myinfo.email,
                      queryParameters: {
                        "subject": "Hello!",
                        "body": "I want to contact you.",
                      },
                    ));
                  },
                ),
                const SizedBox(height: 20),
                ContactCard(
                  title: myinfo.phone,
                  img: "assets/whatsapp.png",
                  onTap: () {
                    launchUrl(Uri.parse("https://wa.me/${myinfo.phone}"));
                  },
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                    onTap: () {
                      launchUrl(
                        Uri.parse(myinfo.socialMedia.facebook),
                      );
                    },
                    child: const CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/face.png'))),
                const SizedBox(width: 15),
                InkWell(
                  onTap: () {
                    launchUrl(
                      Uri.parse(myinfo.socialMedia.linkedin),
                    );
                  },
                  child: const CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/linkedin.png')),
                ),
                const SizedBox(width: 15),
                InkWell(
                  onTap: () {
                    launchUrl(
                      Uri.parse(myinfo.socialMedia.github),
                    );
                  },
                  child: const CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/github.png')),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
