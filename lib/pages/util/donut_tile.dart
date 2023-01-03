import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final  donutColor;
  final String imageName;

  final double borderRadius = 12;

  const DonutTile({
    Key? key,
    required this.donutFlavor,
    required this.donutPrice,
    this.donutColor,
    required this.imageName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutColor[50],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            //price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: donutColor[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                    padding: EdgeInsets.all(12),
                    child: Text(donutPrice,style: TextStyle(color: donutColor,fontWeight: FontWeight.bold),)
                ),
              ],
            ),

            // donut picture
            // donut flavor

            // love icon + add button
          ],
        ),
      ),
    );
  }
}
