import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          elevation: 2,
          onPressed: () {},
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.search),
                Text('Essayez "Las Vegas"'),
              ],
            ),
          ),
        ),
        Row(
          children: <Widget>[
            RaisedButton(
              onPressed: () {},
              child: Text('Dates'),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.black26),
              ),
              elevation: 0,
            ),
            Padding(
              padding: EdgeInsets.only(right: 8),
            ),
            RaisedButton(
              onPressed: () {},
              color: Colors.white,
              child: Text('Voyageurs'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.black26),
              ),
              elevation: 0,
            ),
          ],
        ),
      ],
    );
  }
}
