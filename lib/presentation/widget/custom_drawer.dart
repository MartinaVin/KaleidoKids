import 'package:flutter/material.dart';
import 'package:kaleidokids/presentation/pages/evaluation.dart';
import 'package:kaleidokids/presentation/pages/history.dart';
import 'package:kaleidokids/presentation/pages/login.dart';
import 'package:kaleidokids/presentation/pages/personal.dart';
import 'package:kaleidokids/presentation/pages/homepage.dart';

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
                        builder: (context) => PersonalPage(),
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
                        builder: (context) => HistoryPage(),
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
                ListTile(
                  title: const Text('Cambia account',
                      style: TextStyle(color: Colors.white)),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
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
