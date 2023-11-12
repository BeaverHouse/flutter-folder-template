import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BasePaddings {
  static onlyx(double x) => EdgeInsets.symmetric(horizontal: x.w);
  static all(double x) => EdgeInsets.symmetric(horizontal: x.w, vertical: x.h);
}
