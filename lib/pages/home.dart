import 'package:airbnb_clone/pages/enregistre.dart';
import 'package:airbnb_clone/pages/explorer.dart';
import 'package:airbnb_clone/pages/messages.dart';
import 'package:airbnb_clone/pages/profil.dart';
import 'package:airbnb_clone/pages/voyages.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Explorer(),
    Enregistre(),
    Voyages(),
    Messages(),
    Profil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Explorer'.toUpperCase()),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text('Enregistré'.toUpperCase()),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.airbnb),
            title: Text('Voyages'.toUpperCase()),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.commentAlt,
              size: 20,
            ),
            title: Text('Messages'.toUpperCase()),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity),
            title: Text('Profil'.toUpperCase()),
          ),
        ],
        selectedItemColor: Color(0xfffd5c63),
        unselectedItemColor: Colors.black45,
        showUnselectedLabels: true,
        selectedFontSize: 8,
        unselectedFontSize: 8,
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
