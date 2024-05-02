import 'package:flutter/material.dart';
import 'package:mtask/features/auth/login/view/components/bottomlog_widget.dart';
import 'package:mtask/features/auth/login/view/components/required_logdata_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RequiredLogDataWidget(),
          BottomNavigationlogWidget(),
        ],
      ),
    );
  }
}
