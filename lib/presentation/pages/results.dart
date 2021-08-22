import 'package:flutter/material.dart';
import 'package:kaleidokids/presentation/widget/custom_drawer.dart';
import 'package:kaleidokids/presentation/widget/custom_appbar.dart';
import 'package:kaleidokids/presentation/widget/responsive_text.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        //repeat: ImageRepeat.repeat,
        fit: BoxFit.cover,
        image: AssetImage('assets/images/background.png'),
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: ResponsiveText(
            "Kaleido Kids",
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [HelpButton()],
        ),
        drawer: CustomDrawer(),
        body: Stack(
          fit: StackFit.expand,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            //ResultTitle(),
            //MarkImage(level: 2, mark: "Base"),
            const ResponsiveText(
              'Hello there, this will be the RESULT PAGE',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
