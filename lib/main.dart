// ignore_for_file: depend_on_referenced_packages, unused_import, empty_statements, deprecated_member_use

import 'dart:ffi';

import 'package:firebase_core/firebase_core.dart';
import 'package:mtask/core/firebase/my_firebase.dart';

import 'firebase_options.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:mtask/features/auth/login/view/page/login_page.dart';
import 'package:mtask/features/auth/onboarding/view/page/onboarding_page.dart';
import 'package:mtask/features/auth/registration/view/page/registration_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await MyFirebase().init();

  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  bool onBording = sharedPreferences.getBool('onboarding') ?? false;
  MaterialApp materialApp = const MaterialApp(
    builder: DevicePreview.appBuilder,
    useInheritedMediaQuery: true,
    //  home: onBording ? const RegestrationPage() : const onBoardingPage(),

    onGenerateRoute: myroutes.onGenerateRoute,
  );
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => materialApp, // Wrap your app
    ),
  );
}

class myroutes {
  static List<Route> intRoutes = [
    MaterialPageRoute<dynamic>(
      builder: (BuildContext context) => const onBoardingPage(),
    ),
    MaterialPageRoute<dynamic>(
      builder: (BuildContext context) => const RegestrationPage(),
    )
  ];
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'login':
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const LoginPage(),
        );
      case 'registration':
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const RegestrationPage(),
        );
      default:
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const onBoardingPage(),
        );
    }
  }
}
