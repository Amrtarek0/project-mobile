// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtask/core/utils/context_extension.dart';

import 'package:mtask/features/auth/verification/controller/cubit/verification_cubit.dart';
import 'package:mtask/features/auth/verification/view/component/bottomverification_widget.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerificationCubit(),
      child: BlocBuilder<VerificationCubit, VerificationState>(
        builder: (context, state) {
          final cubit = context.read<VerificationCubit>();
          return Scaffold(
            appBar: AppBar(),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Entre the code"),
                PinCodeTextField(
                  mainAxisAlignment: MainAxisAlignment.center,
                  appContext: context,
                  pastedTextStyle: TextStyle(
                    color: Colors.green.shade600,
                    fontWeight: FontWeight.bold,
                  ),
                  length: 5,
                  obscureText: true,
                  obscuringCharacter: '*',

                  blinkWhenObscuring: true,
                  animationType: AnimationType.fade,
                  validator: (v) {
                    if (v!.length < 3) {
                      return "I'm from validator";
                    } else {
                      return null;
                    }
                  },
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.circle,
                      fieldHeight: context.width / 6,
                      fieldWidth: context.width / 6,
                      activeFillColor: Colors.white,
                      inactiveFillColor: Colors.grey,
                      inactiveColor: Colors.black,
                      activeColor: Colors.black,
                      selectedFillColor: Colors.black,
                      fieldOuterPadding: EdgeInsets.only(
                        right: context.width / 30,
                      )),

                  cursorColor: Colors.white,
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,

                  controller: cubit.pincodecontroller,
                  keyboardType: TextInputType.number,
                  boxShadows: const [
                    BoxShadow(
                      offset: Offset(0, 1),
                      color: Colors.black12,
                      blurRadius: 10,
                    )
                  ],
                  onCompleted: (v) {
                    debugPrint("Completed");
                  },
                  // onTap: () {
                  //   print("Pressed");
                  // },
                  onChanged: (value) {},
                ),
                BottomNavigationverificationWidget(),
              ],
            ),
          );
        },
      ),
    );
  }
}
