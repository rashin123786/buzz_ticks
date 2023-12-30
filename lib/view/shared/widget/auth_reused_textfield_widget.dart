import 'package:flutter/material.dart';

class AuthTextFieldWidget extends StatelessWidget {
  const AuthTextFieldWidget({
    super.key,
    required this.title,
    required this.hint,
    this.suffix,
  });
  final String title;
  final String hint;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        width: double.infinity,
        height: 55,
        child: TextFormField(
          decoration: InputDecoration(
              suffixIcon: suffix,
              hintText: hint,
              hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
        ),
      ),
    );
  }
}
