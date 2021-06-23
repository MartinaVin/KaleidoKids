import 'package:flutter/material.dart';

//if you want to customize the button that opens the drawer (for instance, with the logo)
class DrawerButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => Scaffold.of(context).openDrawer(),
        child: const Placeholder());
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
              (states) => Theme.of(context).primaryColor,
            )),
        child: Text('?',
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white)));
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      //leading: DrawerButton(),
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Theme.of(context).primaryColor,
        ),
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
      title: const Text("Kaleido Kids"),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [HelpButton()],
    );
  }
}
