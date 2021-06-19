import 'package:flutter/material.dart';
import 'package:kaleidokids/presentation/pages/segreto.dart';
import 'package:kaleidokids/presentation/widget/custom_drawer.dart';
import 'package:kaleidokids/presentation/widget/mark_image.dart';
import 'package:kaleidokids/presentation/widget/results_title.dart';

import 'homepage.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        repeat: ImageRepeat.repeat,
        image: AssetImage('dot-grid.png'),
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Kaleido Kids"),
        ),
        drawer: CustomDrawer(),
        backgroundColor: Colors.transparent,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Center(
              child: Column(children: <Widget>[
                ResultTitle(),
                MarkImage(level: 2, mark: "Base"),
                const Text('Hello there, this will be the RESULT PAGE'),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
