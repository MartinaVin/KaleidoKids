import 'package:flutter/material.dart';
import 'package:kaleidokids/presentation/widget/responsive_text.dart';

class ResultTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ResponsiveText(
          "Risultati di",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
        ResponsiveText(
          "-titolo lettura-",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold),
        ),
        const ResponsiveText(
          "dd/mm/yyyy - hh:mm",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
      ],
    );
  }
}
