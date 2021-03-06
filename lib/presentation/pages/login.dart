import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:faker/faker.dart';
import 'package:kaleidokids/presentation/widget/name_bubble_btn.dart';
import 'package:kaleidokids/presentation/widget/responsive_text.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fakeName = Faker();
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
            //leading: DrawerButton(),
            title: ResponsiveText(
              "Kaleido Kids",
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            //actions: [HelpButton()],
          ),
          //drawer: CustomDrawer(),
          body: SingleChildScrollView(
            child: Center(
              child: FractionallySizedBox(
                widthFactor: 0.4,
              //ConstrainedBox(
                //constraints: const BoxConstraints(
                //    maxHeight: 400, maxWidth: 400, minHeight: 200, minWidth: 200),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    //childAspectRatio:
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                  ),
                  itemBuilder: (context, index) =>
                      NameBubbleBtn(name: fakeName.person.firstName()),
                  padding: const EdgeInsets.all(12),
                  itemCount: 6,
                  shrinkWrap: true,
                ),
              ),
            ),
          ),
        ),
      );
  }
}
