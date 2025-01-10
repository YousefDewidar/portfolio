import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LinksCard extends StatelessWidget {
  const LinksCard({
    super.key,
    required this.title,
    this.active = false,
    required this.onTap,
  });
  final String title;
  final bool active;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 30.h,
        padding: const EdgeInsets.symmetric(horizontal: 9),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(6)),
          color: active
              ? const Color.fromARGB(51, 221, 221, 221)
              : Colors.transparent,
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.width < 500 ? 12 : 15,
            ),
          ),
        ),
      ),
    );
  }
}
