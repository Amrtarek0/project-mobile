import 'package:flutter/material.dart';
import 'package:mtask/features/auth/changepassword/view/components/bottomchangepass_widget.dart';
import 'package:mtask/features/auth/changepassword/view/components/required_changepassdata_widget.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RequiredChangepassdataWidget(),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: BottomNavigatorChangepassWidget(),
      ),
    );
  }
}
