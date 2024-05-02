import 'package:flutter/material.dart';
import 'package:mtask/core/utils/validation.dart';

class RequiredChangepassdataWidget extends StatelessWidget {
  const RequiredChangepassdataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Column(children: [
          Text(
            "Change Password",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
        ]),
        const SizedBox(
          height: 70,
        ),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: TextEditingController(),
          keyboardType: TextInputType.name,
          validator: MyValidation().nameValidate,
          obscureText: true,
          obscuringCharacter: "*",
          decoration: InputDecoration(
            hintText: "a-z@&*%123",
            prefixIcon: const Icon(Icons.lock),
            label: const Text("New Password"),
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey, width: 2),
                borderRadius: BorderRadius.circular(30)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(5)),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red, width: 2),
                borderRadius: BorderRadius.circular(30)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: TextEditingController(),
          keyboardType: TextInputType.name,
          validator: MyValidation().nameValidate,
          obscureText: true,
          obscuringCharacter: "*",
          decoration: InputDecoration(
            hintText: "a-z@&*%123",
            prefixIcon: const Icon(Icons.lock),
            label: const Text("Confirm New Password"),
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey, width: 2),
                borderRadius: BorderRadius.circular(30)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(5)),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red, width: 2),
                borderRadius: BorderRadius.circular(30)),
          ),
        ),
      ],
    );
  }
}
