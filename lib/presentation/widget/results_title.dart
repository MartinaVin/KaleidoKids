import 'package:flutter/material.dart';

class ResultTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Risultati di",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
        Text(
          "-titolo lettura-",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold),
        ),
        const Text(
          "dd/mm/yyyy - hh:mm",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
      ],
    );
  }
}
