//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_final_app/main.dart';

class NavigationDrawer extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final email = '';
    final name = 'Jaume';
    final img = Image.asset('1.png');
    return Drawer(
      child: Material(
          color: Colors.blue,
          child: ListView(
            padding: padding,
            children: <Widget>[
              buildHeader(
                image: img,
                name: name,
                email: email,
              ),
              const SizedBox(
                height: 50,
              ),
              const SizedBox(height: 16),
              buildMenuItem(
                  text: 'Cerca',
                  icon: Icons.search,
                  onClicked: () => selectedItem(context, 0)),
              const SizedBox(height: 16),
              buildMenuItem(
                  text: 'Personatges',
                  icon: Icons.people,
                  onClicked: () => selectedItem(context, 1)),
              const SizedBox(height: 16),
              buildMenuItem(
                  text: 'Favorits',
                  icon: Icons.favorite_border,
                  onClicked: () => selectedItem(context, 2)),
              const SizedBox(height: 16),
              Divider(color: Colors.white70),
              const SizedBox(
                height: 24,
              ),
              buildMenuItem(
                  text: 'Home',
                  icon: Icons.home,
                  onClicked: () => selectedItem(context, 3)),
            ],
          )),
    );
  }

  buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      onTap: onClicked,
      //hoverColor: hoverColor,
    );
  }

  selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => PantallaCerca()));
        Navigator.of(context).pushNamed('/cerca');

        break;
      case 1:
        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => PantallaCerca()));
        Navigator.of(context).pushNamed('/personatges');
        break;
      case 2:
        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => PantallaCerca()));
        Navigator.of(context).pushNamed('/favorits');
        break;

      case 3:
        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => PantallaCerca()));
        Navigator.of(context).pushNamed('/');
    }
  }

  buildHeader({
    required Image image,
    required String name,
    required String email,
  }) =>
      InkWell(
          child: Container(
              padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: null,
                  ),
                ],
              )));
}
