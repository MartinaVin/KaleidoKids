import 'package:flutter/material.dart';
import 'package:kaleidokids/presentation/pages/homepage.dart';
import 'package:kaleidokids/presentation/pages/login.dart';
import 'package:kaleidokids/presentation/pages/results.dart';
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
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/images/background.png'),
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
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
            //Text("Evaluation page"),
            Padding(
              padding: const EdgeInsets.fromLTRB(32.0, 0.0, 32.0, 0.0),
              //const EdgeInsets.all(8.0),
              child: Table(
                border: TableBorder.all(),
                columnWidths: const <int, TableColumnWidth>{
                  //0: IntrinsicColumnWidth(),
                  0: FlexColumnWidth(),
                  1: FractionColumnWidth(.35),
                  2: FixedColumnWidth(64),
                },
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(children: [
                    TableCell(child: Text("hei")),
                    TableCell(child: Text("hello")),
                  ]),
                  TableRow(children: [
                    TableCell(child: Text("hei")),
                    TableCell(child: Text("let's see where this goes")),
                  ])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
