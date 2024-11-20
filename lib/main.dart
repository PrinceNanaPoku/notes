import 'package:flutter/material.dart';
import 'package:notes/model/notes_database.dart';
import 'package:notes/pages/settings_page.dart';
import 'package:notes/theme/theme_provider.dart';
import 'package:provider/provider.dart';
import 'pages/notes_page.dart';

void main() async {
  //Initialize note isar database

  WidgetsFlutterBinding.ensureInitialized();
  await NoteDatabase.initialize();
  runApp(MultiProvider(
    providers: [
      //note provider
      ChangeNotifierProvider(
        create: (context) => NoteDatabase(),
      ),

      //theme provider
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeProvider>(context).themeData,
      debugShowCheckedModeBanner: false,
      home: const NotesPage(),
      routes: {
        '/settings': (context) => const SettingsPage(),
      },
    );
  }
}
