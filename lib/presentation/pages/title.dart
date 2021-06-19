//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:kaleidokids/presentation/pages/homepage.dart';
import 'package:kaleidokids/presentation/pages/login.dart';
import 'package:kaleidokids/presentation/pages/resultspage.dart';
import 'package:kaleidokids/presentation/pages/segreto.dart';
import 'package:kaleidokids/presentation/widget/randomuser.dart';

class Titlepage extends StatefulWidget {
  const Titlepage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _TitlepageState createState() => _TitlepageState();
}

class _TitlepageState extends State<Titlepage> {
  final int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            //Per usarla bisogna che sia anche inclusa nel pubspec.yaml
            'assets/images/background.png',
            fit: BoxFit.cover,
            repeat: ImageRepeat.repeat,
          ),
          //Permette al figlio di scorrere quando non ci sta più in altezza
          Column(
            children: [
              FractionallySizedBox(
                  widthFactor: 0.8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Image.asset('assets/images/titolo.png',
                          fit: BoxFit.cover),
                      Text("Kaleido\nKids"),
                      ElevatedButton(
                        onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => LoginPage())),
                        child: const Text('INIZIA',
                            style: TextStyle(
                              fontSize: 25,
                            )),
                      )
                    ],
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
