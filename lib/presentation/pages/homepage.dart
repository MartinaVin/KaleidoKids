import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kaleidokids/presentation/pages/resultspage.dart';
import 'package:kaleidokids/presentation/pages/segreto.dart';
import 'package:kaleidokids/presentation/pages/title.dart';
import 'package:kaleidokids/presentation/widget/custom_appbar.dart';
import 'package:kaleidokids/presentation/widget/custom_drawer.dart';
import 'package:kaleidokids/presentation/widget/randomuser.dart';
import 'package:kaleidokids/presentation/widget/reading_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: DrawerButton(),
          /*leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),*/
          title: Text("Kaleido Kids"),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [HelpButton()],
        ),
        drawer: CustomDrawer(),
        body: Stack(
          fit: StackFit.expand,
          children: [
            SingleChildScrollView(
              child: FractionallySizedBox(
                widthFactor: 0.7,
                child: Column(
                  children: [
                    const Text(
                      'Ciao!\nCosa vuoi leggere oggi?',
                    ),
                    GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio:
                            ReadingCard.kWidth / ReadingCard.kHeight,
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) => ReadingCard(),
                      padding: EdgeInsets.all(20),
                      itemCount: 9,
                      shrinkWrap: true,
                    ),
                  ],
                ),
              ),
            )
          ],
        )
        /*
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ResultsPage(),
        )),
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_right),
      ),*/
        );
  }
}
