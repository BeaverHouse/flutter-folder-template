import 'package:beaver_dev/common/util/func.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleText extends StatelessWidget {
  final String text;
  final TitleEnum align;
  final int fontSize;
  final bool isBold;
  final Color? fontColor;

  const TitleText(
      {super.key,
      required this.text,
      this.align = TitleEnum.center,
      this.fontSize = 24,
      this.isBold = true,
      this.fontColor});

  @override
  Widget build(BuildContext context) {
    TitleOptions alignOptions = getTitleAlign(align);

    return Align(
      alignment: alignOptions.alignment,
      child: Text(
        text,
        style: TextStyle(
            fontSize: fontSize.sp,
            color: fontColor,
            fontWeight: isBold ? FontWeight.w800 : null),
        textAlign: alignOptions.textAlign,
      ),
    );
  }
}
