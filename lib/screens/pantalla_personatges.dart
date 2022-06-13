import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_final_app/models/people.dart';

import 'screens.dart';
import 'package:http/http.dart' as http;

class PantallaPersonatges extends StatelessWidget {
  const PantallaPersonatges({super.key, required this.peoples});
  final List<People> peoples;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavigationDrawer(),
        appBar: AppBar(
          title: Text('Personatges Star Wars'),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          // this creates a notch in the center of the bottom bar
          shape: const CircularNotchedRectangle(),
          notchMargin: 6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/home');
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.people,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/personatges');
                },
              ),
              const SizedBox(
                width: 20,
              ),
              IconButton(
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/favorits');
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/cerca');
                },
              ),
            ],
          ),
        ),
        // implement the floating button
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.amber,
            child: const Icon(Icons.add)),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (BuildContext context, int index) {
              //final people = peoples[index];
              // print(people.name);
              return Text('Hola');
              //Image.network('https://picsum.photos/id/${ids[index]}/300/300');
            }));
  }
}

class PintarPersonatges extends StatelessWidget {
  PintarPersonatges({Key? key, required List<People> peoples})
      : super(key: key) {}
  final List<People> peoples = [];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        //final people = peoples[index];
        // print(people.name);
        return Text('');
        //Image.network('https://picsum.photos/id/${ids[index]}/300/300');
      },
    );
  }
}
