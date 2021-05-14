import 'package:flutter/material.dart';
import 'package:kaleidokids/futures.dart';

class RandomUser extends StatelessWidget {
  const RandomUser();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: fetch_data(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data);
        }
        if (snapshot.hasError) {
          return Text(":c");
        } else {
          return const LinearProgressIndicator();
        }
      },
    );
  }
}
