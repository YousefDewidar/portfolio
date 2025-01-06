import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/features/home/ui/home_view.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/*
TODO: 3. Split images
TODO: 4. Create about me, contact me , skills , projects, services and resume pages
TODO: 5. Add a view for projects and contact me
TODO: 6. Create a Chatbot for the website
*/

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://lbnrwforqubaouajsbhi.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxibnJ3Zm9ycXViYW91YWpzYmhpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzYxMjA1MjEsImV4cCI6MjA1MTY5NjUyMX0._ieVI1Mc-k_m3EoI-8dP5y2uf4eLgUqo6g0fsm2g_j8',
  );

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
