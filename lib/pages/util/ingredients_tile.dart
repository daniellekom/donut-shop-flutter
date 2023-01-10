import 'package:flutter/material.dart';

class IngredientsTile extends StatelessWidget {
  final String value;
  final String label;
  final  color;

  const IngredientsTile({
    Key? key,
    required this.value,
    required this.label,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(40),
            border: Border.all(style: BorderStyle.solid),
          ),
          child: Column(
            children: [
               Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 3),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                   Text(
                    "$value gram",
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 10, fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration:  BoxDecoration(
                      color: color,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child:  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0,vertical: 8),
                      child: Text(
                        value,
                        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
