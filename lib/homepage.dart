import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        title: Text("Pagina Principal"),
        backgroundColor: const Color.fromARGB(255, 255, 196, 0),
        actions: <Widget>[
          InkWell(
            onTap: null,
            child: IconButton(
              icon: Icon(Icons.search, color: Colors.white),
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
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 196, 0),
              ),
              accountName: Text("Jesús Daniel Flores Rodríguez"),
              accountEmail: Text("a.22308051281186@cbtis128.edu.mx"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.network(
                    'https://raw.githubusercontent.com/floresstd/Images/refs/heads/main/314479.png', // reemplaza con tu link
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
                leading: Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 255, 196, 0),
                ),
                title: Text("Página Principal"),
              ),
            ),
            InkWell(
              onTap: null,
              child: ListTile(
                onTap: () {
                  Navigator.popAndPushNamed(context, "/profile");
                },
                leading: Icon(Icons.person, color: Colors.black),
                title: Text("Mi Perfil"),
              ),
            ),
            InkWell(
              onTap: null,
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, "/news");
                },
                leading: Icon(
                  Icons.shopping_basket,
                  color: Color.fromARGB(255, 255, 0, 149),
                ),
                title: Text("Ver Menú"),
              ),
            ),
            Divider(),
            InkWell(
              onTap: null,
              child: ListTile(
                leading: Icon(
                  Icons.help,
                  color: const Color.fromARGB(255, 184, 184, 184),
                ),
                title: Text("Acerca De..."),
              ),
            ),
            InkWell(
              onTap: null,
              child: ListTile(
                leading: Icon(Icons.power_settings_new, color: Colors.black),
                title: Text("Cerrar Sesión"),
              ),
            ),
          ],
        ),
      ),
      body: Center(child: Text("Página Principal")),
    );
  }
}
