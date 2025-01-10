import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      child: InkWell(
        onTap: () {
          opened = !opened;
          setState(() {});
        },
        child: AnimatedContainer(
          clipBehavior: Clip.antiAlias,
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.all(4),
          width: opened ? 300 : 90,
          height: opened ? 500 : 90.h,
          decoration: BoxDecoration(
            shape: opened ? BoxShape.rectangle : BoxShape.circle,
            gradient: const LinearGradient(
              colors: [Colors.red, Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: opened
              ? Container(
                  color: Colors.white,
                )
              : Image.asset("assets/me.png"),
        ),
      ),
    );
  }
}
