import 'package:flutter/material.dart';
import 'package:kaleidokids/futures.dart';
import 'package:kaleidokids/presentation/widget/responsive_text.dart';

class RandomUser extends StatelessWidget {
  const RandomUser();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: fetch_data(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ResponsiveText(snapshot.data);
        }
        if (snapshot.hasError) {
          return const ResponsiveText(":c");
        } else {
          return const LinearProgressIndicator();
        }
      },
    );
  }
}
