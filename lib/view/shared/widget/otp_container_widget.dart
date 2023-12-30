import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpRow extends StatelessWidget {
  const OtpRow({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 50,
        width: 50,
        child: TextFormField(
          controller: controller,
          onChanged: (value) {
            FocusScope.of(context).nextFocus();
          },
          style: Theme.of(context).textTheme.titleLarge,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            fillColor: Colors.white,
            filled: true,
          ),
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
        ),
      ),
    );
  }
}
