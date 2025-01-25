import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CusPage0 extends StatelessWidget {
  final PageController con;
  const CusPage0({super.key, required this.con});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lottie.asset("assets/customer_service.json", height: 150),
        Card(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.grey,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Hello and welcome! I am Youssef's personal assistant, here to help you.\n\nPlease choose your language.",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    con.jumpToPage(1);
                  },
                  child: const Text(
                    'English',
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    con.jumpToPage(2);
                  },
                  child: const Text(
                    'العربية',
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
