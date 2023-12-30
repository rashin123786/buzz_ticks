import 'package:buzz_ticks/view/screen/onboard%20screen/first_onboard_screen.dart';
import 'package:buzz_ticks/view/screen/onboard%20screen/second_onboard.dart';
import 'package:buzz_ticks/view/screen/onboard%20screen/third_onbaord.dart';
import 'package:flutter/material.dart';

class OnboardPageView extends StatelessWidget {
  OnboardPageView({super.key});
  final controlller = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controlller,
      padEnds: true,
      onPageChanged: (value) {},
      scrollDirection: Axis.horizontal,
      children: [
        FirstOnboardScreen(pageController: controlller),
        SecondOnboard(pageController: controlller),
        ThirdOnboardScreen(pageController: controlller),
      ],
    );
  }
}
