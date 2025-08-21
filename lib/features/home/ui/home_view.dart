import 'package:flutter/material.dart';
import 'package:my_portfolio/features/contact/data/me.dart';
import 'package:my_portfolio/features/home/ui/widgets/customerService/customer_services.dart';
import 'package:my_portfolio/features/home/ui/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const CustomerService(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4E3555), Color(0xff161B2F)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child:
            HomeViewBody(myInfo: Me.getMyInfo(), scrollCon: scrollController),
      ),
    );
  }
}
