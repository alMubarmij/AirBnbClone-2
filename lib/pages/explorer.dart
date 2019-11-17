import 'package:airbnb_clone/custom_widgets/bigCard.dart';
import 'package:airbnb_clone/custom_widgets/grid.dart';
import 'package:airbnb_clone/custom_widgets/mainTile.dart';
import 'package:airbnb_clone/custom_widgets/topBar.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class Explorer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TopBar(),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, top: 40.0, bottom: 18.0),
                  child: Text(
                    'Que cherchez-vous, ${faker.person.firstName()} ?',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 170,
                  child: ListView(
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    scrollDirection: Axis.horizontal,
                    children: List.generate(4, (generator) {
                      return MainTile(index: generator);
                    }),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    children: <Widget>[
                      BigCard(),
                      Grid(),
                      Grid(),
                      Grid(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
