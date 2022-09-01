import 'package:all_persistence_types/sqlite/add.dart';
import 'package:all_persistence_types/sqlite/models/person.dart';
import 'package:flutter/material.dart';

class ListSQLiteWidget extends StatelessWidget {
  ListSQLiteWidget({super.key});

  final title = const Text("SQLite - Lista Pessoas");
  final List<Person> people = [
    Person(firstName: "Rafael", lastName: "Tomazelli", address: "FIAP Paulista")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title,
        actions: [
          IconButton(
              onPressed: (() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddPerson()));
              }),
              icon: const Icon(Icons.add))
        ],
      ),
      body: ListView(
        children: buildListItem(),
      ),
    );
  }

  List<Widget> buildListItem() {
    return people
        .map((p) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
                child: ListTile(
                    leading: Text(p.id != null ? p.id.toString() : "-1"),
                    title: Text(p.firstName),
                    subtitle: Text(p.lastName),
                    trailing: const Icon(Icons.navigate_next)),
              ),
            ))
        .toList();
  }
}
