import 'package:flutter/material.dart';

import '../pages/util/donut_tile.dart';

class DonutTab extends StatelessWidget {
  // list of donuts
  List donutsOnSale = [
    // [donutFlavor, donutPrice,donutColor, imageName]
    ['Ice Cream', '36', Colors.blue, 'lib/images/icecream_donut.png'],
    ['Grape', '45', Colors.red, 'lib/images/grape_donut.png'],
    ['Strawberry', '84', Colors.purple, 'lib/images/strawberry_donut.png'],
    ['Choco Loco', '95', Colors.brown, 'lib/images/chocolate_donut.png'],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
      },
    );
  }
}