import 'package:flutter/material.dart';

class Mark extends StatelessWidget {
  final int level;
  final String markTitle;
  final String imgPath;
  final String markDefinition;

  const Mark({
    Key key,
    @required this.level,
    @required this.markTitle,
    @required this.imgPath,
    @required this.markDefinition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //alignment: Alignment.centerLeft,
      margin: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 85,
            height: 85,
            child: Image.asset(imgPath, fit: BoxFit.fill),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text.rich(
                        TextSpan(
                            text:
                                'Livello $level : ', //prendere in input il numero
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: markTitle,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).primaryColor))
                            ]),
                        //textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                  Text(markDefinition),
                ],
              ))
        ],
      ),
    );
  }
}
