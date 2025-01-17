import 'package:flutter/material.dart';
import 'package:my_portfolio/features/home/ui/widgets/contactme/contact_card.dart';
import 'package:my_portfolio/features/home/ui/widgets/title_card.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

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
                  title: "ymahmoud1213@gmail.com",
                  img: "assets/gmail.png",
                  onTap: () {
                    launchUrl(Uri(
                      scheme: "mailto",
                      path: "ymahmoud1213@gmail.com",
                      queryParameters: {
                        "subject": "Hello!",
                        "body": "I want to contact you.",
                      },
                    ));
                  },
                ),
                const SizedBox(height: 20),
                ContactCard(
                  title: "+201014502276",
                  img: "assets/whatsapp.png",
                  onTap: () {
                    launchUrl(Uri.parse("https://wa.me/+201014502276"));
                  },
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                    onTap: () {
                      launchUrl(
                        Uri.parse(
                            'https://www.facebook.com/profile.php?id=100009483401222'),
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
                      Uri.parse(
                          'https://www.linkedin.com/in/yousef-dewidar-0884772a3/'),
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
                      Uri.parse('https://github.com/YousefDewidar'),
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
