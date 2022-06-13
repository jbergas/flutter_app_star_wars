//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_final_app/providers/star_wars_providers.dart';
import 'package:flutter_final_app/screens/navigaton_drawer.dart';
import 'package:flutter_final_app/screens/navigaton_bar.dart';
import 'package:flutter_final_app/screens/screens.dart';
import 'package:flutter_final_app/providers/star_wars_providers.dart';
import 'package:provider/provider.dart';

void main() {
  //runApp(const MyApp());
  runApp(AppState());
}

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => StarWarsProvider(),
          lazy: false,
        ),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final peopleProvider = Provider.of<StarWarsProvider>(context);
    print(peopleProvider.onDisplayPeople);

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
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      routes: {
        '/personatges': (context) =>
            PantallaPersonatges(peoples: peopleProvider.onDisplayPeople),
        '/favorits': (context) => PantallaFavorits(),
        '/cerca': (context) => PantallaCerca(),
        '/home': (context) => Home(),
      },
      initialRoute: '/home',
    );
  }
}
