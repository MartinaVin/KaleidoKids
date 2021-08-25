import 'package:flutter/material.dart';
import 'package:kaleidokids/mockup_data.dart';
import 'package:kaleidokids/presentation/models/reading.dart';
import 'package:kaleidokids/presentation/pages/reading_detail.dart';
import 'package:kaleidokids/presentation/widget/responsive_text.dart';

class ReadingCard extends StatelessWidget {
  static const double kHeight = 120;
  static const double kWidth = 100;
  final int chosenId;
  //final ReadingList readingList;

  ReadingCard({Key key, @required this.chosenId}) : super(key: key);

  final List<Reading> _readings = readingsList;

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 2.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ResponsiveText(
                //"Reading title",
                _readings[chosenId].title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(
                height: 10,
              ),
              FractionallySizedBox(
                widthFactor: 0.6,
                //heightFactor: 0.5,
                child: Image.network(
                  //'https://images.unsplash.com/photo-1621675110684-84f7d1914cdc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1074&q=80',
                  _readings[chosenId].imgLink,
                  //height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Flexible(
                child: Center(
                  child: ElevatedButton(
                    onPressed: () =>
                        Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ReadingDetailPage(
                        chosenId: chosenId,
                      ),
                    )),
                    style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor),
                    child: const ResponsiveText("LEGGI"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
