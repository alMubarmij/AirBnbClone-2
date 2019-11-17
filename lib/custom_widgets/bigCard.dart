import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class BigCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: NetworkImage('https://picsum.photos/200/300'),
          fit: BoxFit.cover,
        ),
      ),
      height: 400,
      width: 400,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Text(
              'Decouvrez les'.toUpperCase(),
              style: TextStyle(color: Colors.white),
            ),
          ),
          Text(
            faker.food.dish(),
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Experiences Airbnb',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
          FlatButton(
            onPressed: () {},
            color: Colors.white,
            child: Text('En savoir plus'),
          ),
        ],
      ),
    );
  }
}
