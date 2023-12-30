import 'package:buzz_ticks/view/screen/onboard%20screen/second_onboard.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class FirstOnboardScreen extends StatelessWidget {
  FirstOnboardScreen({
    super.key,
    required this.pageController,
  });
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          TextButton(
              onPressed: () {
                pageController.animateToPage(2,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeIn);
              },
              child: Text(
                "Skip",
                style: TextStyle(color: Colors.grey),
              ))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: SizedBox(
                      height: 300,
                      child: Image.asset(
                        "assets/images/mobile.png",
                        fit: BoxFit.fill,
                      )),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 28,
                          height: 10,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 5,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 5,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              pageController.animateToPage(1,
                  duration: Duration(milliseconds: 300), curve: Curves.easeIn);
            },
            child: Text("Next"),
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color(0xFFFF6A00),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
          ),
        ),
      ),
    );
  }
}
