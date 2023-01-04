import 'package:donutshop/pages/home_page.dart';
import 'package:donutshop/pages/util/ingredients_tile.dart';
import 'package:flutter/material.dart';

class DonutDetails extends StatefulWidget {
  final String donutFlavor;
  final String donutPrice;
  final donutColor;
  final String imageName;
  final double borderRadius = 12;

  const DonutDetails({
    Key? key,
    required this.donutFlavor,
    required this.donutPrice,
    this.donutColor,
    required this.imageName,
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
              onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const HomePage();
                  },
                ),
              ),
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            Text(
              widget.donutFlavor,
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
                color: widget.donutColor[50],
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
                  child: Image.asset(widget.imageName),
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
          const SizedBox(
            height: 20,
          ),
          const IngredientsTile(),
        ],
      ),
    );
  }
}
