import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

double height(BuildContext context) => MediaQuery.of(context).size.height;
double width(BuildContext context) => MediaQuery.of(context).size.width;

class AppSizes {
  static const double xxsm = 2;
  static const double xsm = 8;
  static const double sm = 16;
  static const double md = 24;
  static const double lg = 36;
  static const double xlg = 40;
}

class Space {
  static SizedBox hXSM(BuildContext context) {
    return SizedBox(height: height(context) * 0.01);
  }

  static SizedBox vXSM(BuildContext context) {
    return SizedBox(width: width(context) * 0.01);
  }

  static SizedBox hSM(BuildContext context) {
    return SizedBox(height: height(context) * 0.02);
  }

  static SizedBox vSM(BuildContext context) {
    return SizedBox(width: width(context) * 0.02);
  }

  static SizedBox hMD(BuildContext context) {
    return SizedBox(height: height(context) * 0.04);
  }

  static SizedBox vMD(BuildContext context) {
    return SizedBox(width: width(context) * 0.04);
  }

  static SizedBox hLG(BuildContext context) {
    return SizedBox(height: height(context) * 0.08);
  }

  static SizedBox vLG(BuildContext context) {
    return SizedBox(width: width(context) * 0.08);
  }
}
