import 'package:beaver_dev/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// If you want to make width flexible, wrap this component with "Expanded".

class RoundButton extends StatelessWidget {
  final Function() func;
  final String text;
  final Color buttonColor;
  final double height;
  final double? width;
  final double fontSize;

  const RoundButton({
    super.key,
    required this.func,
    required this.text,
    required this.buttonColor,
    this.height = 50,
    this.width,
    this.fontSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: func,
      style: ElevatedButton.styleFrom(
          minimumSize: width != null
              ? Size(width!.w, height.h)
              : Size.fromHeight(height.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.r),
          ),
          backgroundColor: buttonColor,
          textStyle: TextStyle(color: BaseColors.white, fontSize: fontSize.sp)),
      child: Text(text),
    );
  }
}
