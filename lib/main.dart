import 'package:flutter/material.dart';
import 'package:myapp/news.dart';
import 'package:myapp/profile.dart';

import 'homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        "/home": (context) => HomePage(),
        "/profile": (context) => Profile(title: "Perfil"),
        "/news": (context) => News(title: "Menú de comida"),
      },
    );
  }
}


