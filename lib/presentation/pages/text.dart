import 'package:flutter/material.dart';
import 'package:kaleidokids/mockup_data.dart';
import 'package:kaleidokids/presentation/pages/reading_detail.dart';
import 'package:kaleidokids/presentation/widget/custom_appbar.dart';
import 'package:kaleidokids/presentation/widget/custom_drawer.dart';
import 'package:kaleidokids/presentation/widget/responsive_text.dart';

class TextPage extends StatefulWidget {
  final int chosenId;

  const TextPage({Key key, @required this.chosenId}) : super(key: key);

  
  @override
  // ignore: no_logic_in_create_state
  _TextPage createState() => _TextPage(chosenId: chosenId);
}

class _TextPage extends State<TextPage> {
  final int chosenId;


  _TextPage({@required this.chosenId}); //: super(key: key);

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
                Text.rich(TextSpan(
                    text: 'Testo scelto:\n', //prendere in input il numero
                    children: <TextSpan>[
                      TextSpan(
                          text: readingsList[chosenId].title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor))
                    ])),
                Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                      border: Border.all(
                          color: Theme.of(context).primaryColor, width: 2)),
                  child: ResponsiveText(readingsList[chosenId].text),
                    //"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer tincidunt sapien lectus, nec varius ligula tempor nec. Vestibulum feugiat tempor orci non rutrum. Aliquam finibus iaculis bibendum. Morbi eu condimentum justo, et venenatis tellus.\nIn eu ex eget lectus tristique tempus. Phasellus ultricies lacus tellus, in condimentum odio interdum ullamcorper. Nulla blandit aliquet tristique. Nam pharetra aliquet urna, quis laoreet leo consequat at. Duis rhoncus eget mi et suscipit.\n" +
                      //  "Aenean efficitur ante at mauris congue, eu tempus metus lacinia. Interdum et malesuada fames ac ante ipsum primis in faucibus. In hac habitasse platea dictumst.\nPhasellus id turpis non nisl laoreet scelerisque id sit amet ante.\n"
                        //+"Aliquam finibus iaculis bibendum. Morbi eu condimentum justo, et venenatis tellus.\nIn eu ex eget lectus tristique tempus. Phasellus ultricies lacus tellus, in condimentum odio interdum ullamcorper. Nulla blandit aliquet tristique. Nam pharetra aliquet urna, quis laoreet leo consequat at. Duis rhoncus eget mi et suscipit.\n"
                    //style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ReadingDetailPage(chosenId: chosenId,),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).errorColor),
                  child: const ResponsiveText('INDIETRO'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
