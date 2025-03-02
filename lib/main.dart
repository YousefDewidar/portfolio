import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/features/home/ui/home_view.dart';
import 'package:my_portfolio/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // await Supabase.initialize(url: supabaseUrl, anonKey: supabaseKey);
  runApp(const MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

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
