import 'package:flutter/material.dart';

enum TitleEnum { left, center, right }

class TitleOptions {
  final TextAlign textAlign;
  final Alignment alignment;

  TitleOptions(this.textAlign, this.alignment);
}

TitleOptions getTitleAlign(TitleEnum align) {
  switch (align) {
    case TitleEnum.left:
      return TitleOptions(TextAlign.left, Alignment.centerLeft);
    case TitleEnum.center:
      return TitleOptions(TextAlign.center, Alignment.center);
    case TitleEnum.right:
      return TitleOptions(TextAlign.right, Alignment.centerRight);
  }
}
