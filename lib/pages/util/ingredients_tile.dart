import 'package:flutter/material.dart';

class IngredientsTile extends StatelessWidget {


  const IngredientsTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 18),
                height: 120,
                width: 68,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(style: BorderStyle.solid),
                ),
                child: Column(
                  children: [
                    const Text(
                      "Sugar",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Column(
                      children: [
                        const Text(
                          "8 gram",
                          style: TextStyle(fontSize: 10, fontStyle: FontStyle.italic),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4.0,vertical: 8),
                            child: Text(
                              "2%",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
