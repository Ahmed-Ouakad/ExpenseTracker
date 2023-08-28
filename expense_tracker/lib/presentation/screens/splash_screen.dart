import 'package:expense_tracker/router/route_names.dart';
import 'package:expense_tracker/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2))
        .then((value) => {Navigator.popAndPushNamed(context, RouteNames.homeScreen)});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding:  EdgeInsets.only(bottom: MediaQuery.of(context).size.height/4),
            child: Column(
              children: [
                Image.asset("assets/images/wallet.png",width: MediaQuery.of(context).size.width/3,),
                const Text("ExpenseTracker",style: TextStyle(
                  fontFamily: 'Lobster',
                    fontSize: 25
                ),
                ),
              ],
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Stack(
              alignment: AlignmentDirectional.bottomStart,
              children: [
            Opacity(opacity: 0.5,child:
            ClipPath(
              clipper: WaveClipper(),
              child: Container(
                color: splashScreenLogoColor,
                height: MediaQuery.of(context).size.height/4,
              ),
            ),
            ),
              ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  color: splashScreenLogoColor,
                  height: MediaQuery.of(context).size.height/4 -20,
                ),
              ),
            ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}
class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0); // Start from the top-left corner
    var firstStart = Offset(size.width / 5, 0);
    var firstEnd = Offset(size.width / 2.25, 50); // Change the y-coordinate
    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart = Offset(size.width - (size.width / 3.24), 105); // Change the y-coordinate
    var secondEnd = Offset(size.width, 10); // Change the y-coordinate
    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(size.width, size.height); // Draw a line to the bottom-right corner
    path.lineTo(0, size.height); // Draw a line to the bottom-left corner

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

