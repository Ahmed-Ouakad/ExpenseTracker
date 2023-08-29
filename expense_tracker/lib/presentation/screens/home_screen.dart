import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: splashScreenLogoColor,
          title: const Text("ExpenseTracker",style: TextStyle(
              fontFamily: 'Lobster',
              fontSize: 25
          ),
          ),
          bottom: TabBar(
            automaticIndicatorColorAdjustment: false,
            tabs: [Tab(text: "home",),Tab(text: "Profile",)],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child:  Text("Home Screen"),
            ),
            Center(
              child:  Text("Profile Screen"),
            ),
          ],
        )
      ),
    );
  }
}
