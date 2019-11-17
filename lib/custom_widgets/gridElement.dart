import 'package:airbnb_clone/custom_widgets/scoreView.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class GridElem extends StatelessWidget {
  final int index;
  final bool isExplorer;

  const GridElem({Key key, this.index, this.isExplorer = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 120,
            width: double.infinity,
            child: Image.network(
              'https://picsum.photos/200/300?random=$index',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  isExplorer == true ? faker.address.country() : 'Trip dates',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: isExplorer == true ? 14 : 10,
                  ),
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                  softWrap: false,
                ),
                Text(
                  isExplorer == true
                      ? faker.food.restaurant()
                      : faker.address.country(),
                  style: TextStyle(
                    fontSize: isExplorer == true ? 12 : 14,
                  ),
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                  softWrap: false,
                ),
                isExplorer == true
                    ? ScoreView()
                    : Text(
                        '1 réservation',
                        style: TextStyle(fontSize: 9),
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
