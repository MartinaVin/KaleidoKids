import 'package:flutter/material.dart';
import 'package:kaleidokids/presentation/widget/custom_appbar.dart';
import 'package:kaleidokids/presentation/widget/custom_drawer.dart';
import 'package:kaleidokids/presentation/widget/responsive_text.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key key}) : super(key: key);

  @override
  _HistoryPage createState() => _HistoryPage();
}

class _HistoryPage extends State<HistoryPage> {
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
                  Text.rich(
                      TextSpan(text: 'Ciao ', //prendere in input il numero
                          children: <TextSpan>[
                        TextSpan(
                            text: 'nome' + '!',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).primaryColor))
                      ])),
                  const ResponsiveText(
                      'Qui trovi tutti i dati sulle tue letture!'),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor),
                    child: const ResponsiveText('LETTURE SVOLTE'),
                  ),
                  const SizedBox(height: 10),
                  const ElevatedButton(
                    onPressed: null,
                    child: ResponsiveText('DATI ANNUALI'),
                  ),
                  const SizedBox(height: 10),
                  const ElevatedButton(
                    onPressed: null,
                    child: ResponsiveText('DATI MENSILI'),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
