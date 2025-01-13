import 'package:flutter/material.dart';
import 'package:my_portfolio/features/home/ui/widgets/customerService/chat_appbar.dart';
import 'package:my_portfolio/features/home/ui/widgets/customerService/cus_page0.dart';
import 'package:my_portfolio/features/home/ui/widgets/customerService/cus_page1.dart';

class CustomerSerChat extends StatelessWidget {
  const CustomerSerChat({
    super.key,
    required this.closeChatButt,
  });
  final void Function() closeChatButt;
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Column(
        children: [
          ChatAppBar(closeChatButt: closeChatButt),
          Expanded(
            child: PageView(
              controller: controller,
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                CusPage0(con: controller),
                const CusPage1()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

