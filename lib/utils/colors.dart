import 'package:flutter/material.dart';

const colorBlack = Color(0xFF000000);
const colorWhite = Color(0xFFF1F2F6);
const colorWhiteTransparent50 = Color(0x80F1F2F6);
const colorTransparent = Color(0x00F1F2F6);

const gradientTransparentToWhite = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: <Color>[
    colorTransparent,
    colorTransparent,
    colorWhite
  ], // Gradient from https://learnui.design/tools/gradient-generator.html
  tileMode: TileMode.mirror,
);