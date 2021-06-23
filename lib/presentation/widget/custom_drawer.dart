import 'package:flutter/material.dart';
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
          Container(
            //color: Colors.red,
            child: DrawerHeader(
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
          ),
          Container(
            child: ListTile(
              title: const Text('Home'),
              onTap: () {
                //Navigator.of(context).pop();
                //change state
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ),
                );
              },
              tileColor: Theme.of(context).primaryColor,
              hoverColor: Theme.of(context).accentColor,
              //then close the drawer
              //Navigator.pop(context);
            ),
          ),
          ListTile(
            title: const Text('Pagina Personale'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ResultsPage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Storia'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SecretPage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Metodo di valutazione'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SecretPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
