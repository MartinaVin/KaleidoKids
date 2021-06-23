import 'package:flutter/material.dart';
import 'package:kaleidokids/presentation/pages/segreto.dart';
import 'package:kaleidokids/presentation/widget/custom_drawer.dart';
import 'package:kaleidokids/presentation/widget/mark_image.dart';
import 'package:kaleidokids/presentation/widget/results_title.dart';
import 'package:kaleidokids/presentation/pages/results.dart';
import 'package:kaleidokids/presentation/widget/custom_appbar.dart';
import 'package:kaleidokids/presentation/widget/name_bubble_btn.dart';
import 'package:kaleidokids/presentation/widget/reading_card.dart';

import 'homepage.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        //repeat: ImageRepeat.repeat,
        fit: BoxFit.cover,
        image: AssetImage('assets/images/background.png'),
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
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
        body: Stack(
          fit: StackFit.expand,
          children: [
            //ResultTitle(),
            //MarkImage(level: 2, mark: "Base"),
            const Text(
              'Hello there, this will be the RESULT PAGE',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
