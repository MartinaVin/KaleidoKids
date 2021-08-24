import 'package:flutter/material.dart';
import 'package:kaleidokids/compute_size.dart';

class ResponsiveText extends StatelessWidget {
  const ResponsiveText(this.text, {Key key, this.style, this.textAlign})
      : super(key: key);

  final String text;
  final TextStyle style;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    final double textSize = computeSize(context);
    return Text(
      text,
      style:
          style?.copyWith(fontSize: textSize) ?? TextStyle(fontSize: textSize),
      textAlign: textAlign,
    );
  }
}
