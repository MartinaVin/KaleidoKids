import 'package:flutter/material.dart';

//if you want to customize the button that opens the drawer (for instance, with the logo)
class DrawerButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => Scaffold.of(context).openDrawer(), child: Placeholder());
  }
}

class HelpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => 0,
        style: ButtonStyle(
            shape:
                MaterialStateProperty.resolveWith((states) => CircleBorder()),
            backgroundColor: MaterialStateProperty.resolveWith(
              (states) => Theme.of(context).primaryColor,
            )),
        child: Text('?',
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white)));
  }
}
