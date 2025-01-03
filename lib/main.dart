import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/features/home/home_view.dart';

/* 
TODO: 1. Create a new project in your Supabase.
TODO: 2. Edit responsive in home
TODO: 3. Split images
TODO: 4. Create about me, contact me , skills , projects, services and resume pages
TODO: 5. Add a view for projects and contact me
TODO: 6. Create a Chatbot for the website
*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(1200, 870),
      child: MaterialApp(
        title: 'YMD',
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}
