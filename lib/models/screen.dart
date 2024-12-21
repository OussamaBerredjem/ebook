import 'package:flutter/material.dart';

class Screen {
  BuildContext context;
  Screen({required this.context});
  double height(double p) {
    return MediaQuery.of(context).size.height * p / 100;
  }
  double width(double p) {
    return MediaQuery.of(context).size.width * p / 100;
  }
}
