import 'package:buzz_ticks/view/screen/auth%20screen/reset_pass_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/widget/auth_reused_textfield_widget.dart';
import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

bool _passIsVisible = false;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Sign in",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  subtitle:
                      Text("Welcome All your needs for event\nexperience."),
                ),
                AuthTextFieldWidget(
                  hint: 'Username',
                  title: "Username",
                ),
                ListTile(
                  title: Text(
                    'Password',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: TextFormField(
                      obscureText: _passIsVisible,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _passIsVisible = !_passIsVisible;
                                });
                              },
                              icon: Icon(_passIsVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility)),
                          hintText: 'Enter password',
                          hintStyle: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 5),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ResetPasswordScreen(),
                                ));
                          },
                          child: Text("Forgot password?")),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Sign in"),
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
                  child: Row(children: <Widget>[
                    Expanded(child: Divider()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text("OR"),
                    ),
                    Expanded(child: Divider()),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton.icon(
                      label: Text(
                        "Continue with Google",
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "assets/images/google.svg",
                        width: 20,
                        height: 20,
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(),
                              borderRadius: BorderRadius.circular(8))),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterScreen(),
                    ));
              },
              child: RichText(
                  text: TextSpan(
                      text: "Don't have any account? ",
                      style: TextStyle(color: Colors.grey),
                      children: [
                    TextSpan(
                        text: "Sign up",
                        style: TextStyle(color: Color(0xFFFF6A00)))
                  ])),
            ),
          ),
        ),
      ),
    );
  }
}
