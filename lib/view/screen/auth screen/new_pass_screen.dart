import 'package:buzz_ticks/view/screen/auth%20screen/success_screen.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

bool _passIsVisible = false;
bool _confirmPassIsVisible = false;

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "Change New Password",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                subtitle: Text(
                  "New password must not match previous\npassword",
                  style: TextStyle(color: Colors.grey),
                ),
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
                                _confirmPassIsVisible = !_confirmPassIsVisible;
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
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SuccessScreen(),
                          ));
                    },
                    child: Text("Reset password"),
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Color(0xFFFF6A00),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
