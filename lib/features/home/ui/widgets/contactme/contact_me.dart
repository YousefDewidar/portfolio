import 'package:flutter/material.dart';
import 'package:my_portfolio/features/home/ui/widgets/contactme/contact_card.dart';
import 'package:my_portfolio/features/home/ui/widgets/title_card.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TitleCard(title: "Contact Me", desc: ""),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ContactCard(
                  title: "ymahmoud1213@gmail.com",
                  icon: Icons.email_outlined,
                ),
                SizedBox(height: 30),
                ContactCard(title: "+201014502276", icon: Icons.phone),
              ],
            ),
            SizedBox(width: 100),
            Icon(
              Icons.facebook,
              color: Color.fromARGB(255, 47, 33, 243),
            ),
            // Icon(f),
            Icon(Icons.facebook),
          ],
        ),
      ],
    );
  }
}
