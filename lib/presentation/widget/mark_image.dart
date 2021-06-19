import 'package:flutter/material.dart';

class MarkImage extends StatelessWidget {
  final int level;
  final String mark;

  const MarkImage({Key key, @required this.level, @required this.mark})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text.rich(
              TextSpan(text: 'Livello $level :', //prendere in input il numero
                  children: <TextSpan>[
                TextSpan(
                    text: mark,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor))
              ]))
        ],
      ),
    );
  }
}
