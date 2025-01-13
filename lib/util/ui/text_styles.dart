import 'package:flutter/material.dart';

abstract class TextStyles {
  static TextStyle titleTextMedium = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  static TextStyle titleTextSemiBold = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static TextStyle titleTextBold = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 32,
    fontWeight: FontWeight.w700,
  );

  static TextStyle bodyTextMedium = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  static TextStyle bodyTextSemiBold = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static TextStyle bodyTextBold = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 20,
    fontWeight: FontWeight.w800,
  );

  static TextStyle captionTextMedium = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
}
