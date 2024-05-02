// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtask/features/auth/onboarding/controller/cubit/onboarding_controller_cubit.dart';
import 'package:mtask/features/auth/onboarding/view/component/onboarding_body.dart';
import 'package:mtask/features/auth/onboarding/view/component/onboarding_button.dart';

class onBoardingPage extends StatelessWidget {
  const onBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<OnboardingControllerCubit>(
        create: (context) => OnboardingControllerCubit(),
        child: BlocBuilder<OnboardingControllerCubit, OnboardingControllerState>(
          builder: (context, state) {
            OnboardingControllerCubit controller = context.read<OnboardingControllerCubit>();
            return Scaffold(
              body: onboardingbody(
                controller: controller,
              ),
              bottomNavigationBar: onboardingbuttonwidget(
                controller: controller,
              ),
            );
          },
        ),
      ),
    );
  }
}
