import 'package:buzz_ticks/view/screen/auth%20screen/new_pass_screen.dart';
import 'package:buzz_ticks/view/shared/widget/otp_container_widget.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});
  final firstController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Enter verfication code",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  subtitle: Text(
                    "Enter 4-digit code that we just send to\nyour phone number +919999999999",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OtpRow(controller: firstController),
                    OtpRow(controller: firstController),
                    OtpRow(controller: firstController),
                    OtpRow(controller: firstController)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                      text: TextSpan(
                          text: "Code Expire in ",
                          style: TextStyle(color: Colors.grey),
                          children: [
                        TextSpan(
                            text: "01:30",
                            style: TextStyle(color: Color(0xFFFF6A00)))
                      ])),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChangePasswordScreen(),
                            ));
                      },
                      child: Text("Verify"),
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color(0xFFFF6A00),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Resend"),
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
