import 'package:flutter/material.dart';
import 'package:kaleidokids/presentation/pages/evaluation.dart';
import 'package:kaleidokids/presentation/pages/segreto.dart';
import 'package:kaleidokids/presentation/pages/homepage.dart';
import 'package:kaleidokids/presentation/pages/resultspage.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            child: const Text(
              'Kaleido\nkids\n- menu -',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: Column(
              children: [
                ListTile(
                  title:
                      const Text('Home', style: TextStyle(color: Colors.white)),
                  onTap: () {
                    //Navigator.of(context).pop();
                    //change state
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => MyHomePage(),
                      ),
                    );
                  },
                  //then close the drawer
                  //Navigator.pop(context);
                ),
                ListTile(
                  title: const Text('Pagina Personale',
                      style: TextStyle(color: Colors.white)),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ResultsPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Storia',
                      style: TextStyle(color: Colors.white)),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SecretPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Metodo di valutazione',
                      style: TextStyle(color: Colors.white)),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => EvaluationPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
