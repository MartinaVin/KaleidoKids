import 'package:flutter/material.dart';
import 'package:kaleidokids/presentation/pages/title.dart';
import 'package:flutter/services.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return MaterialApp(
      title: 'Kaleido kids',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color(0xFF0B9CAD),
        accentColor: const Color(0xFF206CAC),
        errorColor: const Color(0xFFF25B68),
        hintColor: const Color(0xFF71BF5F),
      ),
      home: const Titlepage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}
