import 'package:flutter/material.dart';
import 'package:my_cats/modle/cat.dart';

class CatDetailsWidget extends StatelessWidget {
  final Cat cat;
  const CatDetailsWidget({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(cat.imageLink),
        Text(
          cat.name,
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        Text('Origin:${cat.origin}'),
        Text('Max weight:${cat.maxWeight}'),
        Text('min weight:${cat.minWeight} '),
        Text('Length:${cat.length} '),
      ],
    );
  }
}
