import 'package:donutshop/pages/home_page.dart';
import 'package:donutshop/pages/util/ingredients_tile.dart';
import 'package:flutter/material.dart';
import 'package:donutshop/models/donut.dart';


class DonutDetails extends StatefulWidget {
  final Donut donut;

  const DonutDetails({
    Key? key, required this.donut,
  }) : super(key: key);

  @override
  State<DonutDetails> createState() => _DonutDetailsState();
}

class _DonutDetailsState extends State<DonutDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            Text(
              widget.donut.flavorName,
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: widget.donut.color[50],
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              ),
              height: 400,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 60.0,
                    right: 80,
                    top: 100,
                  ),
                  child: Hero(
                      tag: widget.donut.imagePath,
                      child: Image.asset(widget.donut.imagePath)),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Ingredients",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(flex: 1,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IngredientsTile(label: 'Sugar', value: widget.donut.sugar ?? "",color: Colors.blue[100] ,),
                IngredientsTile(label: 'Salt', value: widget.donut.salt ?? "", color: Colors.pink[100], ),
                IngredientsTile(label: 'Fat', value: widget.donut.fat ?? "", color: Colors.orange[100],),
                IngredientsTile(label: 'Energy', value: widget.donut.energy ?? "", color: Colors.purple[100],),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
