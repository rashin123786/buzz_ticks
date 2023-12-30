import 'package:buzz_ticks/view/screen/auth%20screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared/widget/auth_reused_textfield_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

bool _passIsVisible = false;
bool _confirmPassIsVisible = false;
bool _value = false;

class _RegisterScreenState extends State<RegisterScreen> {
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
                    "Sign Up",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  subtitle:
                      Text("Welcome All your needs for event\nexperience."),
                ),
                AuthTextFieldWidget(
                  hint: 'Enter your full name',
                  title: "Full Name",
                ),
                AuthTextFieldWidget(
                  hint: 'Enter your Username',
                  title: "Username",
                ),
                AuthTextFieldWidget(
                  hint: 'Enter email address',
                  title: "Email",
                ),
                AuthTextFieldWidget(
                  hint: 'Enter your organization',
                  title: "Organization",
                ),
                AuthTextFieldWidget(
                  hint: '999999999',
                  title: "Contact no.",
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
                ListTile(
                  title: Text(
                    "Confirm Password",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: TextFormField(
                      obscureText: _confirmPassIsVisible,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _confirmPassIsVisible =
                                      !_confirmPassIsVisible;
                                });
                              },
                              icon: Icon(_confirmPassIsVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility)),
                          hintText: 'Enter confirm password',
                          hintStyle: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ),
                  ),
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: RichText(
                    text: TextSpan(
                        text: 'I agree the cryptomark ',
                        style: TextStyle(color: Colors.grey),
                        children: [
                          TextSpan(
                              text: 'Terms of services ',
                              style: TextStyle(color: Color(0xFFFF6A00)),
                              children: [
                                TextSpan(
                                    text: 'and ',
                                    style: TextStyle(color: Colors.grey),
                                    children: [
                                      TextSpan(
                                          text: 'Privacy Policy',
                                          style: TextStyle(
                                              color: Color(0xFFFF6A00)))
                                    ])
                              ]),
                        ]),
                  ),
                  autofocus: false,
                  checkColor: Colors.white,
                  selected: _value,
                  value: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value!;
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Register"),
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
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton.icon(
                      label: Text(
                        "Continue with Google",
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterScreen(),
                            ));
                      },
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ));
                    },
                    child: RichText(
                        text: TextSpan(
                            text: "Already Registered? ",
                            style: TextStyle(color: Colors.grey),
                            children: [
                          TextSpan(
                              text: "Sign in",
                              style: TextStyle(color: Color(0xFFFF6A00)))
                        ])),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
