// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class onboardingModel {
  late String image, tittle, subtitle;
  late Color color;
  onboardingModel({
    required this.image,
    required this.tittle,
    required this.subtitle,
    this.color = Colors.black,
  });
}
