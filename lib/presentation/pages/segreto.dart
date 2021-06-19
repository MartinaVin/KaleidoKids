import 'package:flutter/material.dart';

class SecretPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kaleido Kids"),
      ),
      //drawer: Container,
      body: Column(
        children: [
          Image.network(
            "https://images.unsplash.com/photo-1620997987907-a721203f15cb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
            height: 200,
            width: 200,
            fit: BoxFit.cover,
          ),
          /*IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_left),
          ),*/
        ],
      ),
    );
  }
}
