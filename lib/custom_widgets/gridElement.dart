import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class GridElem extends StatelessWidget {
  final int index;
  const GridElem({Key key, this.index}) : super(key: key);

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
                  faker.address.country(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                  softWrap: false,
                ),
                Text(
                  faker.food.restaurant(),
                  style: TextStyle(
                    fontSize: 12,
                  ),
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                  softWrap: false,
                ),
                Row(
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
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
