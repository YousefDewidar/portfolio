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
        title: "Contact Support",
        content: "Get in touch with our support team for any inquiries.\n"
            "Response time: within 24 hours.\n"
            "Available via email, phone, and live chat.",
      ),
      ServiceCard(
        title: "Registration Issues",
        content: "Having trouble signing up? We can help!\n"
            "Check your email for the verification link.\n"
            "Contact support if you didn’t receive it.",
      ),
      ServiceCard(
        title: "Technical Support",
        content: "Facing technical issues? Let us know!\n"
            "Report bugs or glitches directly through our support page.\n"
            "Get troubleshooting guides for common problems.",
      ),
      ServiceCard(
        title: "Account Recovery",
        content: "Forgot your password or lost access?\n"
            "Use the 'Forgot Password' option to reset it.\n"
            "Contact support if you need further assistance.",
      ),
      ServiceCard(
        title: "FAQ & Help Center",
        content: "Find answers to common questions.\n"
            "Browse guides on how to use the platform.\n"
            "Check our step-by-step tutorials for quick solutions.",
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
              }),
        ],
      ),
    );
  }
}
