import 'package:flutter/material.dart';
import 'package:kaleidokids/presentation/widget/responsive_text.dart';

//if you want to customize the button that opens the drawer (for instance, with the logo)
class DrawerButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Scaffold.of(context).openDrawer(),
      child: Icon(
        Icons.menu,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}

class HelpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => 0,
        style: ButtonStyle(
            shape: MaterialStateProperty.resolveWith(
                (states) => const CircleBorder()),
            backgroundColor: MaterialStateProperty.resolveWith(
              //(states) => Theme.of(context).primaryColor,
              (states) => Theme.of(context).disabledColor,
            )),
        child: ResponsiveText('?',
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white)));
  }
}
