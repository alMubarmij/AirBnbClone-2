import 'package:airbnb_clone/custom_widgets/gridElement.dart';
import 'package:flutter/material.dart';

class Voyages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(25.0),
        child: ListView(
          children: <Widget>[
            Text(
              'Voyages',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            GridView.count(
              padding: EdgeInsets.only(top: 15.0),
              shrinkWrap: true,
              primary: false,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: List.generate(11, (index) {
                return GridElem(
                  index: index,
                  isExplorer: false,
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
