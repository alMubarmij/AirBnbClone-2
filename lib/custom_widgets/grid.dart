import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import 'gridElement.dart';

class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            faker.lorem.sentence(),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
          Text(
            faker.lorem.sentence(),
          ),
          GridView.count(
            padding: EdgeInsets.only(top: 15.0),
            shrinkWrap: true,
            primary: false,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: List.generate(4, (index) {
              return GridElem(index: index);
            }),
          ),
          Container(
            width: 400,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide(color: Color(0xff007D8C)),
              ),
              textColor: Color(0xff007D8C),
              color: Colors.white,
              elevation: 0,
              onPressed: () {},
              child: Text(
                'Tout afficher (plus de ${faker.randomGenerator.numbers(3000, 1)[0]})',
              ),
            ),
          )
        ],
      ),
    );
  }
}
