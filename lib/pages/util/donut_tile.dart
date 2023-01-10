import 'package:donutshop/pages/donut_details.dart';
import 'package:flutter/material.dart';

import '../../models/donut.dart';

class DonutTile extends StatelessWidget {
final Donut donut;
final double borderRadius = 12;

  const DonutTile({
    super.key,
    required this.donut,
});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(12.0),
      child: GestureDetector(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) {
          return  DonutDetails(
           donut: donut,
          );
        }, )),
        child: Container(
          decoration: BoxDecoration(
            color: donut.color[50],
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
                      color: donut.color[100],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(borderRadius),topRight:Radius.circular(borderRadius) ),
                    ),
                      padding: EdgeInsets.all(12),
                      child: Text(
                        '\$' + donut.price,
                        style: TextStyle(
                            color: donut.color[800],
                            fontWeight: FontWeight.bold,fontSize: 12),
                      ),
                  ),
                ],
              ),

              // donut picture
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36.0,vertical: 16),
                child: Hero(
                    tag: donut.imagePath,
                    child: Image.asset(donut.imagePath)),
              ),

              // donut flavor
              Text(donut.flavorName,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),

              const SizedBox(height: 4,),

                 Text('Dunkins',style: TextStyle(color: Colors.grey[500]),
                 ),

              // love icon + add button
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //love icon
                    Icon(Icons.favorite,color: Colors.pink[400],
                    ),
                    //plus button
                    Icon(Icons.add,color: Colors.grey[800]
                    ),
                      ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
