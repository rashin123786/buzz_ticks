import 'package:buzz_ticks/view/screen/home%20screen/home_screen.dart';
import 'package:buzz_ticks/view/shared/pages/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                height: 300,
                child: SvgPicture.asset(
                  "assets/images/successlogin.svg",
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomNavWidget(),
                  ));
            },
            child: Text("Sign in"),
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
