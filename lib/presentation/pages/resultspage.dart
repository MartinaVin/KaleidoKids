import 'package:flutter/material.dart';
import 'package:kaleidokids/presentation/pages/segreto.dart';
import 'package:kaleidokids/presentation/widget/custom_drawer.dart';
import 'package:kaleidokids/presentation/widget/mark_image.dart';
import 'package:kaleidokids/presentation/widget/results_title.dart';
import 'package:kaleidokids/presentation/pages/resultspage.dart';
import 'package:kaleidokids/presentation/widget/custom_appbar.dart';
import 'package:kaleidokids/presentation/widget/name_bubble_btn.dart';
import 'package:kaleidokids/presentation/widget/reading_card.dart';

import 'homepage.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kaleido Kids",
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [HelpButton()],
      ),
      drawer: CustomDrawer(),
      backgroundColor: Colors.transparent,
      body: Container(
        /*
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/background.png'),
        )),*/
        child: Stack(
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
