import 'package:flutter/material.dart';
import 'package:kaleidokids/presentation/pages/evaluation.dart';
import 'package:kaleidokids/presentation/pages/history.dart';
import 'package:kaleidokids/presentation/pages/login.dart';
import 'package:kaleidokids/presentation/pages/personal.dart';
import 'package:kaleidokids/presentation/pages/homepage.dart';
import 'package:kaleidokids/presentation/widget/responsive_text.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).primaryColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              child: ResponsiveText(
                'Kaleido\nkids\n- menu -',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              title: const ResponsiveText('Home',
                  style: TextStyle(color: Colors.white)),
              onTap: () {
                //Navigator.of(context).pop();
                //change state
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MyHomePage(),
                  ),
                );
              },
              //then close the drawer
              //Navigator.pop(context);
            ),
            ListTile(
              title: const ResponsiveText('Pagina Personale',
                  style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PersonalPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const ResponsiveText('Dati letture',
                  style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const HistoryPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const ResponsiveText('Metodo di valutazione',
                  style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const EvaluationPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const ResponsiveText('Cambia account',
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
    );
  }
}
