import 'package:all_persistence_types/screens/utils/customWidgets.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  final title = const Text("Flutter PersistĂȘncias");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title,
        ),
      body: ListView(
        children: [
          ListTile(
            leading: buildSvgIcon("images/sqlite-icon.svg"),
            title: const Text("SQLite"),
            subtitle: const Text("Lista de Pessoas"),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {
              Navigator.pushNamed(context, "/sqlite");
            },
          ),
          divisorListMain(),
          ListTile(
            leading: buildSvgIcon("images/db.svg"),
            title: const Text("Floor"),
            subtitle: const Text("Lista de Livros"),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {
              Navigator.pushNamed(context, "/floor");
            },
          ),
          divisorListMain(),
          ListTile(
            leading: buildSvgIcon("images/firebase.svg"),
            title: const Text("Firebase"),
            subtitle: const Text("Lista de Carros"),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {
              Navigator.pushNamed(context, "/firebase");
            },
          ),
          divisorListMain()
        ],
      ),
    );
  }
}