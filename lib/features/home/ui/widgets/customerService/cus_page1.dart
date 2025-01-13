import 'package:flutter/material.dart';
import 'package:my_portfolio/features/home/ui/widgets/customerService/service_card.dart';

class CusPage1 extends StatelessWidget {
  const CusPage1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text("Choose You Services",
              textAlign: TextAlign.center, style: TextStyle()),
          const SizedBox(height: 10),
          ServiceCard(
            onTap: () {},
            title: "Social media accounts",
          )
        ],
      ),
    );
  }
}

