import 'package:flutter/material.dart';
import 'package:mtask/features/auth/forget/view/page/forgot_page.dart';
import 'package:mtask/features/auth/registration/view/page/registration_page.dart';
import 'package:mtask/features/dashboard/view/page/dashboard_page.dart';

class BottomNavigationlogWidget extends StatelessWidget {
  const BottomNavigationlogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerRight,
          child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ForgotPage(),
                    ));
              },
              child: const Text("forgot your password?")),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(42),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color.fromARGB(255, 56, 118, 253), Color.fromARGB(255, 50, 199, 99)],
              ),
            ),
            alignment: Alignment.bottomCenter,
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DashbordPage(),
                      ));
                },
                child: const Text("Login")),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Container(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don,t have an account?"),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegestrationPage(),
                        ));
                  },
                  child: const Text("register")),
            ],
          ),
        ),
      ],
    );
  }
}
