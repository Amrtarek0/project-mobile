import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:mtask/features/auth/onboarding/model/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'onboarding_controller_state.dart';

class OnboardingControllerCubit extends Cubit<OnboardingControllerState> {
  OnboardingControllerCubit() : super(OnboardingControllerInitial());

  PageController pageController = PageController();

  void onChangeToNext() {
    pageController.nextPage(duration: Duration(seconds: 2), curve: Curves.bounceIn);
  }

  Future<void> oncallskip(BuildContext context) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setBool('onboarding', true);
    Navigator.pushNamed(context, 'login');
  }

  List data = [
    onboardingModel(
      image: 'assets/images/photo_2024-04-19_01-10-23.jpg',
      tittle: 'Make online chating',
      subtitle: 'Interisting chats',
      color: Colors.green,
    ),
    onboardingModel(
        image: 'assets/images/photo_2024-04-19_01-10-15.jpg',
        tittle: 'Communicate with your friends',
        subtitle: 'Exciting calls',
        color: Colors.blue),
    onboardingModel(
      image: 'assets/images/photo_2024-04-19_01-10-00.jpg',
      tittle: 'online group with your friends',
      subtitle: 'Have fun',
    ),
  ];
}
