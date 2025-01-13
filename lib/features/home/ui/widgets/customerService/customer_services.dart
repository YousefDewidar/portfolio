import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/features/home/ui/widgets/customerService/customer_ser_chat.dart';

class CustomerService extends StatefulWidget {
  const CustomerService({
    super.key,
  });

  @override
  State<CustomerService> createState() => _CustomerServiceState();
}

class _CustomerServiceState extends State<CustomerService> {
  bool opened = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: AnimatedCrossFade(
        firstChild: Container(
          clipBehavior: Clip.antiAlias,
          padding: const EdgeInsets.all(4),
          width: 90,
          height: 90.h,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Colors.red, Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: InkWell(
            onTap: () {
              opened = true;
              setState(() {});
            },
            child: (Image.asset("assets/me.png")),
          ),
        ),
        secondChild: opened
            ? Container(
                clipBehavior: Clip.antiAlias,
                padding: const EdgeInsets.all(4),
                width: 300,
                height: 500,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  gradient: LinearGradient(
                    colors: [Colors.red, Colors.blue],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: CustomerSerChat(
                  closeChatButt: () {
                    opened = false;
                    setState(() {});
                  },
                ),
              )
            : const SizedBox(),
        crossFadeState:
            opened ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        duration: const Duration(milliseconds: 350),
      ),
    );
  }
}
