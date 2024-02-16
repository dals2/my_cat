import 'package:flutter/material.dart';
import 'package:my_cats/main.dart';
import 'package:my_cats/modle/cat.dart';
import 'package:my_cats/sreens/cats_home_page.dart';
import 'package:my_cats/widgets/cat_details.dart';

class CatDetails extends StatelessWidget {
  final Cat cat;
  const CatDetails({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cat.name),
        backgroundColor: Colors.deepPurple,
      ),
      body: CatDetailsWidget(cat: cat),
    );
  }
}
