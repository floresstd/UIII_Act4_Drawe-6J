import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        title: Text("Jesús Flores"),

        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 14, 196, 150),
        actions: <Widget>[
          InkWell(
            onTap: null,
            child: IconButton(
              icon: Icon(Icons.search, size: 25, color: Colors.white),
              onPressed: () {},
            ),
          ),
          InkWell(
            onTap: null,
            child: IconButton(
              icon: Icon(Icons.settings, color: Colors.white),
              onPressed: () {},
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 31, 190, 143),
              ),
              accountName: Text("Jesús Flores 1186"),
              accountEmail: Text("a.22308051281186@cbtis128.edu.mx"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://raw.githubusercontent.com/floresstd/Images/refs/heads/main/314479.png',
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                onTap: () {
                  Navigator.popAndPushNamed(context, "/home");
                },
                leading: Icon(Icons.home, color: Colors.pink),
                title: Text("Home Page"),
              ),
            ),
            InkWell(
              onTap: null,
              child: ListTile(
                onTap: () {
                  Navigator.popAndPushNamed(context, "/profile");
                },
                leading: Icon(Icons.person, color: Colors.black),
                title: Text("My Profile"),
              ),
            ),
            InkWell(
              onTap: null,
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, "/news");
                },
                leading: Icon(Icons.shopping_basket, color: Colors.red),
                title: Text("News"),
              ),
            ),
            Divider(),
            InkWell(
              onTap: null,
              child: ListTile(
                leading: Icon(Icons.help, color: Colors.green),
                title: Text("About"),
              ),
            ),
            InkWell(
              onTap: null,
              child: ListTile(
                leading: Icon(Icons.power_settings_new, color: Colors.black),
                title: Text("Log out"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
