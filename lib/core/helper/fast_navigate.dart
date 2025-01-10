import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void fastNavigate(BuildContext context, Widget page) {
  Navigator.pushReplacement(context,
      PageTransition(type: PageTransitionType.fade, child: page));
}
