import 'package:buzz_ticks/view/screen/onboard%20screen/first_onboard_screen.dart';
import 'package:buzz_ticks/view/screen/onboard%20screen/page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  navigteToOnboard() {
    Future.delayed(Duration(seconds: 2)).then((value) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OnboardPageView(),
          ));
    });
  }

  @override
  void initState() {
    navigteToOnboard();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
              width: 100,
              height: 100,
              child: Image.asset("assets/images/logo.png")),
        ),
      ),
    );
  }
}
