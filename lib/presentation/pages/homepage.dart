import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kaleidokids/presentation/widget/custom_appbar.dart';
import 'package:kaleidokids/presentation/widget/custom_drawer.dart';
import 'package:kaleidokids/presentation/widget/reading_card.dart';
import 'package:kaleidokids/presentation/widget/responsive_text.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/images/background.png'),
      )),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: DrawerButton(),
            /*leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),*/
            title: ResponsiveText(
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: FractionallySizedBox(
                    widthFactor: 0.7,
                    child: Column(
                      children: [
                        const ResponsiveText(
                          'Ciao!\nCosa vuoi leggere oggi?',
                        ),
                        GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio:
                                ReadingCard.kWidth / ReadingCard.kHeight,
                            crossAxisCount: 3,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                          ),
                          itemBuilder: (context, index) => ReadingCard(),
                          padding: const EdgeInsets.all(20),
                          itemCount: 9,
                          shrinkWrap: true,
                        ),
                      ],
                    ),
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
          ),
    );
  }
}
