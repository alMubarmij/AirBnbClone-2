import 'package:airbnb_clone/custom_widgets/saveTile.dart';
import 'package:flutter/material.dart';

class Enregistre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(25.0),
        child: ListView(
          children: <Widget>[
            Text(
              'Enregistrés',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SaveTile(imageIndex: 0),
            SaveTile(imageIndex: 5),
            SaveTile(imageIndex: 8),
            SaveTile(imageIndex: 11),
            SaveTile(imageIndex: 14),
          ],
        ),
      ),
    );
  }
}
