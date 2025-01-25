import 'package:flutter/material.dart';
import 'package:my_portfolio/core/widgets/custom_button.dart';
import 'package:my_portfolio/features/home/ui/widgets/customerService/service_card.dart';

class CusPage2 extends StatelessWidget {
  const CusPage2({
    super.key,
    required this.con,
  });
  final PageController con;

  @override
  Widget build(BuildContext context) {
    List<ServiceCard> servicesList = const [
      ServiceCard(
        isChat: true,
        title: "التواصل مع الدعم",
        content: "تواصل معي لأي استفسارات.\n"
            "متاح عبر الدردشة المباشرة.",
      ),
      ServiceCard(
        title: "معلومات الاتصال",
        content: """
WhatsApp: 01014502276
Email: ymahmoud1213@gmail.com
Address: طنطا، مصر""",
      ),
      ServiceCard(
        title: "حسابات وسائل التواصل الاجتماعي",
        content: """
GitHub: YousefDewidar
LinkedIn: Yousef Dewidar
Facebook: Yousef Dewidar""",
      ),
      ServiceCard(
        title: "التعليم",
        content: "بكالوريوس هندسة الحاسبات، جامعة طنطا",
      ),
      ServiceCard(
        title: "أشهر التطبيقات",
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
        title: "اللغات البرمجية",
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
        title: "المهارات",
        content: """
تطوير تطبيقات الهاتف
payment gateway integration
Firebase
Supabase
Notification services
UI design""",
      ),
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "اختر خدماتك",
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
              title: "الرئيسية",
              height: 30,
              onTap: () {
                con.jumpToPage(0);
              },
            ),
          ],
        ),
      ),
    );
  }
}
