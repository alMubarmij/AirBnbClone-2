import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class ScoreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          '4.99',
          style: TextStyle(
            fontSize: 10,
            color: Color(0xff007D8C),
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(Icons.star, size: 12, color: Color(0xff007D8C)),
        Icon(Icons.star, size: 12, color: Color(0xff007D8C)),
        Icon(Icons.star, size: 12, color: Color(0xff007D8C)),
        Icon(Icons.star, size: 12, color: Color(0xff007D8C)),
        Icon(Icons.star, size: 12, color: Color(0xff007D8C)),
        Text(
          faker.randomGenerator.numbers(999, 1)[0].toString(),
          style: TextStyle(
            fontSize: 10,
            color: Color(0xff007D8C),
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
