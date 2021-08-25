import 'package:flutter/material.dart';
import 'package:kaleidokids/mockup_data.dart';
import 'package:kaleidokids/presentation/models/reading.dart';
import 'package:kaleidokids/presentation/pages/text.dart';
import 'package:kaleidokids/presentation/widget/custom_appbar.dart';
import 'package:kaleidokids/presentation/widget/custom_drawer.dart';
import 'package:kaleidokids/presentation/widget/responsive_text.dart';

import 'homepage.dart';

class ReadingDetailPage extends StatefulWidget {
  final int chosenId;

  const ReadingDetailPage({Key key, @required this.chosenId}): super(key: key);

  @override
  // ignore: no_logic_in_create_state
  _ReadingDetailPage createState() => _ReadingDetailPage(chosenId: chosenId);
}

class _ReadingDetailPage extends State<ReadingDetailPage> {
//class ReadingDetailPage extends StatelessWidget{
  final int chosenId;

  _ReadingDetailPage({@required this.chosenId});
  //ReadingDetailPage({Key key, @required this.chosen_id}) : super(key: key);

  final List<Reading> _readings = readingsList;
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
          title: ResponsiveText(
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
                FractionallySizedBox(
                  widthFactor: 0.5,
                  child: Image.network(
                    //'https://images.unsplash.com/photo-1621675110684-84f7d1914cdc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1074&q=80',
                    _readings[chosenId].imgLink,
                    //height: 100,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 10),
                Text.rich(TextSpan(text: 'Ok, leggi\n', children: <TextSpan>[
                  TextSpan(
                      text:  _readings[chosenId].title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor))
                ])),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const ResponsiveText("La presente versione di Kaleido Kids è un prototipo\ne non permette ancora di eseguire questa azione."),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    style: ElevatedButton.styleFrom(primary: Theme.of(context).primaryColor),
                                    child: const ResponsiveText('OK'))
                              ],
                            ),
                          );
                        });
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor),
                  child: const ResponsiveText('INIZIA, REGISTRA!'),
                ),
                const SizedBox(height: 5),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const ResponsiveText("La presente versione di Kaleido Kids è un prototipo\ne non permette ancora di eseguire questa azione."),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    style: ElevatedButton.styleFrom(primary: Theme.of(context).primaryColor),
                                    child: const ResponsiveText('OK'))
                              ],
                            ),
                          );
                        });
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).accentColor),
                  child: const ResponsiveText('CARICA UNA REGISTRAZIONE'),
                ),
                const SizedBox(height: 5),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TextPage(chosenId: chosenId,),
                  )),
                  style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).hintColor),
                  child: const ResponsiveText('VEDI TESTO'),
                ),
                const SizedBox(height: 5),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const MyHomePage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).errorColor),
                  child: const ResponsiveText('INDIETRO'),
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
