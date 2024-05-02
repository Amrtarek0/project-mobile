// ignore_for_file: depend_on_referenced_packages, avoid_print

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'verification_state.dart';

class VerificationCubit extends Cubit<VerificationState> {
  VerificationCubit() : super(VerificationInitial());
  TextEditingController pincodecontroller = TextEditingController();
  final String validcode = '22222';

  void ontapconfirm() {
    if (pincodecontroller.text == validcode) {
      print("valid");
    } else {
      print("please entre the received code");
    }
  }
}
