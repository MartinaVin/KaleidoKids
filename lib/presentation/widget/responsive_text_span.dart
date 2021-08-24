import 'package:flutter/material.dart';
import 'package:kaleidokids/compute_size.dart';

class ResponsiveText extends StatelessWidget {
  const ResponsiveText(this.baseText, this.boldText, {Key key, this.style, this.textAlign})
      : super(key: key);

  final String baseText;
  final String boldText;
  final TextStyle style;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    final double textSize = computeSize(context);
    return Text.rich(TextSpan(
      text: baseText,
      style: style?.copyWith(fontSize: textSize) ?? TextStyle(fontSize: textSize),
      children: <TextSpan>[
      TextSpan(
        text: boldText,
        style: style?.copyWith(fontSize: textSize, fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor) ?? TextStyle(fontSize: textSize, fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor)
      )
    ]));
  }
}