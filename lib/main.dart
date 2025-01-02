import 'package:flutter/material.dart';
import 'package:my_portfolio/features/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'YMD',
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}

