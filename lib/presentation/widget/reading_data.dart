import 'package:flutter/material.dart';
import 'package:kaleidokids/presentation/models/reading.dart';

class ReadingData extends StatelessWidget {
  const ReadingData(this.reading, {Key key}) : super(key: key);
  final Reading reading;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(reading.imgLink),
      title: Text(reading.title),
      subtitle: Text(reading.text),
    );
  }
}
