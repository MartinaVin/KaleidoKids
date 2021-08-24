import "dart:math";

import 'package:flutter/material.dart';
import 'package:kaleidokids/presentation/pages/homepage.dart';
import 'package:kaleidokids/presentation/widget/responsive_text.dart';

class NameBubbleBtn extends StatelessWidget {
  final _random = Random();
  final String name;
  NameBubbleBtn({Key key, @required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorList = [
      Theme.of(context).accentColor,
      Theme.of(context).primaryColor,
      Theme.of(context).hintColor,
      Theme.of(context).accentColor,
      Theme.of(context).primaryColor,
      Colors.deepPurpleAccent,
      Colors.indigo,
      Colors.redAccent,
      Colors.blueGrey,
      Colors.green,
      Colors.pink,
      Colors.orange,
      Colors.purpleAccent,
      Colors.pinkAccent,
      Colors.lime,
      Colors.blueAccent,
    ];
    final randColor = colorList[_random.nextInt(colorList.length)];

    return TextButton(
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const MyHomePage(),
            )),
        style: ButtonStyle(
            shape: MaterialStateProperty.resolveWith(
                (states) => const CircleBorder()),
            backgroundColor: MaterialStateProperty.resolveWith(
              //(states) => (colorList..shuffle()).first,
              (states) => randColor,
            )),
        child: ResponsiveText(
          name,
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(color: Colors.white),
        ));
  }
}
