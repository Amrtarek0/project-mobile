// ignore_for_file: camel_case_extensions

import 'package:flutter/material.dart';

extension mycontextextension on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
}
