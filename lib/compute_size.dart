import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

double computeSize(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final baseSize = Theme.of(context).textTheme.bodyText2.fontSize;
    double textSize = baseSize;
    const double desktopLimit = 720;
    const double tabletLimit = 400;
    if (width > desktopLimit) {
      textSize = baseSize * 1.20;
    } else if (width > tabletLimit) {
      textSize = baseSize * 1.10;
    }
    return textSize;
  }