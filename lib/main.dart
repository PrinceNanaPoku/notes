import 'package:flutter/material.dart';
import 'package:notes/model/notes_database.dart';

import 'pages/notes_page.dart';

void main() async {
  //Initialize note isar database

  WidgetsFlutterBinding.ensureInitialized();
  await NoteDatabase.initialize();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotesPage(),
    );
  }
}
