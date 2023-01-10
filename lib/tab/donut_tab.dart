import 'package:donutshop/models/donut.dart';
import 'package:flutter/material.dart';

import '../pages/util/donut_tile.dart';

class DonutTab extends StatelessWidget {
  // list of donuts
  List<Donut> donutsOnSale = [
    // [donutFlavor, donutPrice,donutColor, imageName]
    Donut(
        flavorName: 'Ice cream',
        price: '35',
        color: Colors.blue,
        imagePath: 'assets/images/icecream_donut.png',
        sugar: '2%',
        salt: '.4%',
        fat: '11%',
        energy: "10%"),
    Donut(
        flavorName: 'Grape',
        price: '45',
        color: Colors.pink,
        imagePath: 'assets/images/grape_donut.png',
        sugar: '1%',
        salt: '3%',
        fat: '12%',
        energy: "20%"),
    Donut(
        flavorName: 'Strawberry',
        price: '50',
        color: Colors.purple,
        imagePath: 'assets/images/strawberry_donut.png',
        sugar: '6%',
        salt: '.5%',
        fat: '18%',
        energy: "10%"),
    Donut(
        flavorName: 'Choco Loco',
        price: '60',
        color: Colors.brown,
        imagePath: 'assets/images/chocolate_donut.png',
        sugar: '9%',
        salt: '9%',
        fat: '16%',
        energy: "50%"),
  ];

  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1 / 1.5),
      itemBuilder: (context, index) {
        final item = donutsOnSale[index];
        return DonutTile(donut: item);
      },
    );
  }
}
