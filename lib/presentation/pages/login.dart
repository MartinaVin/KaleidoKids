import 'package:flutter/material.dart';
import 'package:kaleidokids/presentation/pages/resultspage.dart';
import 'package:kaleidokids/presentation/pages/segreto.dart';
import 'package:kaleidokids/presentation/widget/custom_appbar.dart';
import 'package:kaleidokids/presentation/widget/custom_drawer.dart';
import 'package:kaleidokids/presentation/widget/name_bubble_btn.dart';
import 'package:kaleidokids/presentation/widget/reading_card.dart';

import 'homepage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        //repeat: ImageRepeat.repeat,
        fit: BoxFit.cover,
        image: AssetImage('assets/images/background.png'),
      )),
      child: Scaffold(
        appBar: AppBar(
          //leading: DrawerButton(),
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
          title: Text(
            "Kaleido Kids",
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [HelpButton()],
        ),
        drawer: CustomDrawer(),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
                maxHeight: 400, maxWidth: 400, minHeight: 200, minWidth: 200),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //childAspectRatio:
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
              ),
              itemBuilder: (context, index) => NameBubbleBtn(name: "nome"),
              padding: EdgeInsets.all(5),
              itemCount: 4,
              shrinkWrap: true,
            ),
          ),
        ),
      ),
    );
  }
}
