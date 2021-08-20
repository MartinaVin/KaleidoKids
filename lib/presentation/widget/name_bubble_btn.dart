import "dart:math";

import 'package:flutter/material.dart';
import 'package:kaleidokids/presentation/pages/homepage.dart';

class NameBubbleBtn extends StatelessWidget {
  final _random = Random();
  final String name;
  //TODO make random color work
  NameBubbleBtn({Key key, @required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorList = [
      Theme.of(context).accentColor,
      Theme.of(context).primaryColor,
      Theme.of(context).hintColor
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
        child: Text(
          name,
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(color: Colors.white),
        ));
  }
}
