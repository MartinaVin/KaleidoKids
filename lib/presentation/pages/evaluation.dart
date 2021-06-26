import 'package:flutter/material.dart';
import 'package:kaleidokids/presentation/widget/custom_appbar.dart';
import 'package:kaleidokids/presentation/widget/custom_drawer.dart';

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
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  verticalDirection:
                      VerticalDirection.down, //down=from 4 to 1, up=from 1 to 4
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: Image.asset('assets/images/avanzato4Final.png',
                              fit: BoxFit.cover),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text('Avanzato',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold,
                                  )),
                              // ignore: prefer_const_constructors
                              Text(
                                  "Riesci a leggere testi già visti, ma anche testi nuovi,\nsenza bisogno di aiuto e facendo pochi errori."),
                            ],
                          ),
                        )
                      ],
                    ),

                    const SizedBox(height: 10),

                    //------------------------------------------------------------------

                    Row(
                      children: [
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: Image.asset(
                              'assets/images/intermedio3Final.png',
                              fit: BoxFit.cover),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text('intermedio:',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold,
                                  )),
                              const Text(
                                  "Riesci a leggere testi già visti, ma per i testi nuovi\nhai bisogno di un po' di aiuto ma fai pochi errori."),
                            ],
                          ),
                        )
                      ],
                    ),

                    const SizedBox(height: 10),

                    //------------------------------------------------------------------

                    Row(
                      children: [
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: Image.asset('assets/images/base2Final.png',
                              fit: BoxFit.cover),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text('Base:',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold,
                                  )),
                              const Text(
                                  "Riesci a leggere testi già visti con non molti errori,\n ma ogni tanto hai bisogno di aiuto o indicazioni\ndall'insegnante."),
                            ],
                          ),
                        )
                      ],
                    ),

                    const SizedBox(height: 10),

                    //------------------------------------------------------------------

                    Row(
                      children: [
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: Image.asset(
                              'assets/images/acquisizione1Final.png',
                              fit: BoxFit.cover),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text('In via di prima acquisizione:',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold,
                                  )),
                              // ignore: prefer_const_constructors
                              Text(
                                  "Riesci a leggere testi semplici, ma con tesi nuovi\nhai qualche difficoltà e hai bisogno\ndell'aiuto dell'insegnante."),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          )),
    );
  }
}
