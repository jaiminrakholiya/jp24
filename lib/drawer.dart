import 'package:flutter/material.dart';

class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Demo app")),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                children: [
                  Text("jaimin"),
                ],
              ),
            ),
            Column(
              children: [
                ListTile(
                  title: Text("Home"),
                  leading: Icon(Icons.home),
                ),
                ListTile(
                  title: Text("Account"),
                  leading: Icon(Icons.account_box),
                ),
                ListTile(
                  title: Text("Cart"),
                  leading: Icon(Icons.shopping_cart),
                ),
                ListTile(
                  title: Text("Logout"),
                  leading: Icon(Icons.logout),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
