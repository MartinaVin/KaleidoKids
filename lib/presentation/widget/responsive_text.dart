import 'package:flutter/material.dart';

class ResponsiveText extends StatelessWidget {
  const ResponsiveText(this.text, {Key key, this.style, this.textAlign})
      : super(key: key);

  final String text;
  final TextStyle style;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    double textSize = computeSize(context);
    return Text(
      text,
      style:
          style?.copyWith(fontSize: textSize) ?? TextStyle(fontSize: textSize),
      textAlign: textAlign,
    );
  }

  double computeSize(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final baseSize = Theme.of(context).textTheme.bodyText2.fontSize;
    double textSize = baseSize;
    const double desktopLimit = 720;
    const double tabletLimit = 400;
    if (width > desktopLimit) {
      textSize = baseSize * 1.5;
    } else if (width > tabletLimit) {
      textSize = baseSize * 1.25;
    }
    return textSize;
  }
}
