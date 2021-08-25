/*import 'package:flutter/material.dart';
import 'package:kaleidokids/compute_size.dart';

class ResponsiveTextSpan extends StatelessWidget {
  const ResponsiveTextSpan(this.baseText, this.fontWeight, this.color, {Key key, this.style, this.textAlign, this.child})
      : super(key: key);

  final String baseText;
  //final String boldText;
  final TextStyle style;
  final TextAlign textAlign;
  final FontWeight fontWeight;
  final Color color;
  final TextSpan child;

  @override
  Widget build(BuildContext context) {
    final double textSize = computeSize(context);
    return TextSpan(
      text: baseText,
      style: style?.copyWith(fontSize: textSize, {fontWeight: fontWeight, color: color}) ?? TextStyle(fontSize: textSize, {fontWeight: fontWeight, color: color}),
      children: <TextSpan> [child]);
    //
    Text.rich(TextSpan(
      text: baseText,
      style: style?.copyWith(fontSize: textSize) ?? TextStyle(fontSize: textSize),
      children: <TextSpan>[
      TextSpan(
        text: boldText,
        style: style?.copyWith(fontSize: textSize, fontWeight: fontWeight, color: color) ?? TextStyle(fontSize: textSize, fontWeight: fontWeight, color: color)
      )
    ]));//
  }
}
*/