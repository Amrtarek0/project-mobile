import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtask/features/auth/onboarding/controller/cubit/onboarding_controller_cubit.dart';

class onboardingbuttonwidget extends StatelessWidget {
  onboardingbuttonwidget({super.key, required this.controller});
  OnboardingControllerCubit controller;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingControllerCubit>.value(
      value: controller,
      child: BlocBuilder<OnboardingControllerCubit, OnboardingControllerState>(
        builder: (context, state) {
          OnboardingControllerCubit controller =
              context.read<OnboardingControllerCubit>();
          return SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      controller.oncallskip(context);
                    },
                    child: Text("Skip")),
                TextButton(
                    onPressed: controller.onChangeToNext, child: Text("Next"))
              ],
            ),
          );
        },
      ),
    );
  }
}
