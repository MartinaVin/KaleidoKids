import 'package:flutter/material.dart';
import 'package:kaleidokids/presentation/widget/custom_appbar.dart';
import 'package:kaleidokids/presentation/widget/custom_drawer.dart';

class PersonalPage extends StatefulWidget {
  const PersonalPage({Key key}) : super(key: key);

  @override
  _PersonalPage createState() => _PersonalPage();
}

class _PersonalPage extends State<PersonalPage> {
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
          title: Text(
            "Kaleido Kids",
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [HelpButton()],
        ),
        drawer: CustomDrawer(),
        body: Container(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text.rich(
                        TextSpan(text: 'Ciao ', //prendere in input il numero
                            children: <TextSpan>[
                          TextSpan(
                              text: 'nome' + '!',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).primaryColor))
                        ])),
                    const Text(
                        'In questa pagina ci sono tutti i tuoi dati personali,\npuoi modificarli quando vuoi!'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 2.0,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Scuola:",
                                    textAlign: TextAlign.left,
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                  // ignore: prefer_const_constructors
                                  Text(
                                    "---",
                                    textAlign: TextAlign.right,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Classe:",
                                    textAlign: TextAlign.left,
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                  // ignore: prefer_const_constructors
                                  Text(
                                    "---",
                                    textAlign: TextAlign.right,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Insegnante:",
                                    textAlign: TextAlign.left,
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                  // ignore: prefer_const_constructors
                                  Text(
                                    "---",
                                    textAlign: TextAlign.right,
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 2.0,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              // ignore: prefer_const_constructors
                              Text(
                                "Info lettura",
                                textAlign: TextAlign.center,
                              ),
                            ]),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
