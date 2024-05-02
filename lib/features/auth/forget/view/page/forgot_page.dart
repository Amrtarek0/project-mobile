import 'package:flutter/material.dart';
import 'package:mtask/features/auth/forget/view/compnents/bottomforget_widget.dart';
import 'package:mtask/features/auth/forget/view/compnents/required_forgetdata_widget.dart';

class ForgotPage extends StatelessWidget {
  const ForgotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ReqiredForgetdataWidget(),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: BottomNavigationForgetWidget(),
      ),
    );
  }
}
