import 'package:flutter/material.dart';
import 'package:my_portfolio/core/widgets/custom_button.dart';
import 'package:my_portfolio/features/home/ui/widgets/customerService/service_card.dart';

class CusPage1 extends StatelessWidget {
  const CusPage1({
    super.key,
    required this.con,
  });
  final PageController con;

  @override
  Widget build(BuildContext context) {
    List<ServiceCard> servicesList = const [
      ServiceCard(
        isChat: true,
        title: "Contact Support",
        content: "Get in touch with me for any inquiries.\n"
            "Available via live chat.",
      ),
      ServiceCard(
        title: "Contact Information",
        content: """
WhatsApp: 01014502276
Email: ymahmoud1213@gmail.com
Address: Tanta, Egypt""",
      ),
      ServiceCard(title: "Social Media Accounts", content: """
GitHub: YousefDewidar
LinkedIn: Yousef Dewidar
Facebook: Yousef Dewidar"""),
      ServiceCard(
        title: "Education",
        content: "Bachelor of Computer Engineering, Tanta University",
      ),
      ServiceCard(
        title: "Popular Apps",
        content: """
Al-Muslim
Nestify
Bookly
Ai Assistant
Franco Ai
My Portfolio Website
Easy Recharge""",
      ),
      ServiceCard(
        title: "Programming Languages",
        content: """
Dart
Flutter
Kotlin
Python
HTML
CSS
Js
C++
PHP
SQL""",
      ),
      ServiceCard(
        title: "Skills",
        content: """
Mobile App development
payment gateway integration
Firebase
Supabase
Notification services
UI design""",
      ),
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Choose You Services",
            textAlign: TextAlign.center,
            style: TextStyle(),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: servicesList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: servicesList[index],
                );
              },
            ),
          ),
          CustomButton(
            title: "Back To Home",
            height: 30,
            onTap: () {
              con.jumpToPage(0);
            },
          ),
        ],
      ),
    );
  }
}
