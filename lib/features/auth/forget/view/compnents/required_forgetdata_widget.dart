import 'package:flutter/material.dart';
import 'package:mtask/core/utils/validation.dart';

class ReqiredForgetdataWidget extends StatelessWidget {
  const ReqiredForgetdataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Column(
          children: [
            Text(
              "Reset Your Password",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Entre your email or phone number for verification mail to reset your password",
              style: TextStyle(
                color: Color.fromARGB(255, 24, 24, 24),
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 70,
        ),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: TextEditingController(),
          keyboardType: TextInputType.text,
          validator: MyValidation().nameValidate,
          decoration: InputDecoration(
            hintText: "Entre email or phone number",
            label: const Text("Personal@gmail.com"),
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey, width: 2), borderRadius: BorderRadius.circular(30)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue, width: 2), borderRadius: BorderRadius.circular(5)),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red, width: 2), borderRadius: BorderRadius.circular(30)),
          ),
        ),
      ],
    );
  }
}
