import 'package:flutter/material.dart';

class News extends StatelessWidget {
  final String title;

  News({required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Color.fromARGB(255, 255, 196, 0),
      ),
      body: Center(
        child: Text("Menú de comida..."),
      ),
    );
  }
}
