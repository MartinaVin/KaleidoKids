import 'package:flutter/material.dart';
import 'package:kaleidokids/presentation/widget/custom_appbar.dart';
import 'package:kaleidokids/presentation/widget/custom_drawer.dart';
import 'package:kaleidokids/presentation/widget/mark.dart';

class EvaluationPage extends StatefulWidget {
  const EvaluationPage({Key key}) : super(key: key);

  @override
  _EvaluationPage createState() => _EvaluationPage();
}

class _EvaluationPage extends State<EvaluationPage> {
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
        body: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(TextSpan(text: 'Ciao ', //prendere in input il numero
                  children: <TextSpan>[
                    TextSpan(
                        text: 'nome' + '!',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor))
                  ])),
              const Text(
                  'In questa pagine ti mostriamo come funziona la valutazione in Kaleido Kids!'),
              const SizedBox(height: 20),
              Text.rich(
                TextSpan(
                    text:
                        'La valutazione utilizzata si basa su quella che viene usata anche nelle scuole primarie\nitaliane, definita dal ', //prendere in input il numero
                    children: <TextSpan>[
                      TextSpan(
                          text: "Ministero dell'Istruzione",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor,
                          ))
                    ]),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Mark(
                    level: 4,
                    imgPath: 'assets/images/avanzato4Final.png',
                    markTitle: 'Avanzato',
                    markDefinition:
                        'Riesci a leggere testi già visti, ma anche testi nuovi,\nsenza bisogno di aiuto e facendo pochi errori.',
                  ),
                  const Mark(
                    level: 3,
                    imgPath: 'assets/images/intermedio3Final.png',
                    markTitle: 'Intermedio',
                    markDefinition:
                        "Riesci a leggere testi già visti, ma per i testi nuovi\nhai bisogno di un po' di aiuto ma fai pochi errori.",
                  ),
                  const Mark(
                    level: 2,
                    imgPath: 'assets/images/base2Final.png',
                    markTitle: 'Base',
                    markDefinition:
                        "Riesci a leggere testi già visti con non molti errori,\n ma ogni tanto hai bisogno di aiuto o indicazioni\ndall'insegnante.",
                  ),
                  const Mark(
                    level: 1,
                    imgPath: 'assets/images/acquisizione1Final.png',
                    markTitle: 'In via di prima acquisizione',
                    markDefinition:
                        "Riesci a leggere testi semplici, ma con tesi nuovi\nhai qualche difficoltà e hai bisogno\ndell'aiuto dell'insegnante.",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
