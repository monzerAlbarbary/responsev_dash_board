import 'package:flutter/material.dart';

double getResonsevFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsevFontSize = scaleFactor * fontSize;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  responsevFontSize.clamp(lowerLimit, upperLimit);
  return responsevFontSize;
}

double getScaleFactor(
  BuildContext context,
) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
