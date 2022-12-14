import 'package:all_persistence_types/firebase/list.dart';
import 'package:all_persistence_types/screens/home.dart';
import 'package:all_persistence_types/sqlite/list.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:all_persistence_types/firebase_options.dart';
import 'package:all_persistence_types/floor/list.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.amber,
      ),
      initialRoute: '/',
      routes: {
        "/": (context) => const HomeWidget(),
        "/sqlite": (context) => const ListSQLiteWidget(),
        "/floor": (context) => const ListFloorWidget(),
        "/firebase": (context) => const ListCarFirestoreWidget()
      },
    );
  }
}
