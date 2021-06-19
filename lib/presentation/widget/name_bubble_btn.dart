import 'package:flutter/material.dart';
import 'package:kaleidokids/presentation/pages/homepage.dart';

class NameBubbleBtn extends StatelessWidget {
  final String name;

  const NameBubbleBtn({Key key, @required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => MyHomePage(),
            )),
        style: ButtonStyle(
            shape:
                MaterialStateProperty.resolveWith((states) => CircleBorder()),
            backgroundColor: MaterialStateProperty.resolveWith(
              (states) => Theme.of(context).accentColor,
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
