import 'package:flutter/material.dart';
import 'package:kaleidokids/presentation/pages/text.dart';
import 'package:kaleidokids/presentation/widget/custom_appbar.dart';
import 'package:kaleidokids/presentation/widget/custom_drawer.dart';

import 'homepage.dart';

class ReadingDetailPage extends StatefulWidget {
  const ReadingDetailPage({Key key}) : super(key: key);

  @override
  _ReadingDetailPage createState() => _ReadingDetailPage();
}

class _ReadingDetailPage extends State<ReadingDetailPage> {
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
                Image.network(
                  'https://images.unsplash.com/photo-1621675110684-84f7d1914cdc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1074&q=80',
                  height: 100,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 10),
                Text.rich(TextSpan(text: 'Ok, leggi\n', children: <TextSpan>[
                  TextSpan(
                      text: 'titolo del testo', //TODO da prendere in input
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor))
                ])),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('INIZIA, REGISTRA!'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('CARICA UNA REGISTRAZIONE'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TextPage(),
                  )),
                  child: const Text('VEDI TESTO'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => MyHomePage(),
                      ),
                    );
                  },
                  child: const Text('INDIETRO'),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
