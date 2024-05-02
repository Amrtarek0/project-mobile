import 'package:flutter/material.dart';
import 'package:mtask/features/auth/changepassword/view/page/changepassword_page.dart';

class BottomNavigationverificationWidget extends StatelessWidget {
  const BottomNavigationverificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(42),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 56, 118, 253),
                Color.fromARGB(255, 50, 199, 99)
              ],
            ),
          ),
          alignment: Alignment.bottomCenter,
          child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChangePasswordPage(),
                    ));
              },
              child: const Text("confirm")),
        ),
      ),
    ]);
  }
}
