import 'package:flutter/material.dart';
import 'package:kaleidokids/presentation/pages/homepage.dart';
import 'package:kaleidokids/presentation/pages/login.dart';
import 'package:kaleidokids/presentation/pages/resultspage.dart';
import 'package:kaleidokids/presentation/pages/segreto.dart';
import 'package:kaleidokids/presentation/widget/custom_appbar.dart';
import 'package:kaleidokids/presentation/widget/custom_drawer.dart';
import 'package:kaleidokids/presentation/widget/randomuser.dart';

class EvaluationPage extends StatefulWidget {
  const EvaluationPage({Key key}) : super(key: key);

  @override
  _EvaluationPage createState() => _EvaluationPage();
}

class _EvaluationPage extends State<EvaluationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: DrawerButton(),
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
          Image.asset(
            //Per usarla bisogna che sia anche inclusa nel pubspec.yaml
            'assets/images/background.png',
            fit: BoxFit.cover,
          ),
          Text("Evaluation page"),
        ],
      ),
    );
  }
}
