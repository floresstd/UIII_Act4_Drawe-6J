import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String title;

  Profile({required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Color.fromARGB(255, 255, 196, 0),
      ),
      body: Center(
        child: Text("Perfil"),
      ),
    );
  }
}
