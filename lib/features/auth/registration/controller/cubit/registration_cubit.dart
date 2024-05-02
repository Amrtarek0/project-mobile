import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

part 'registration_state.dart';

class RegistrationCubit extends Cubit<RegistrationState> {
  RegistrationCubit() : super(RegistrationInitial());
  TextEditingController firstnamecontroller = TextEditingController();
  TextEditingController lastnamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  void onpressedconfirmbutton(BuildContext context) {
    if (formkey.currentState!.validate()) {
      Navigator.pushNamed(context, 'login');
    } else {
      log("invalid inputs");
    }
  }

  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future<void> addUser() {
    // Call the user's CollectionReference to add a new user
    return users
        .add({
          'first name': firstnamecontroller.text,
          'last name': lastnamecontroller.text,
          'email': emailcontroller.text,
          'password ': passcontroller.text,
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }
}
