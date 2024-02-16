import 'package:flutter/material.dart';
import 'package:my_cats/data/cats.dart';
import 'package:my_cats/modle/cat.dart';
import 'package:my_cats/sreens/cat_details_screen.dart';
import 'package:my_cats/sreens/cats_home_page.dart';

final cats = allCats.map<Cat>((jsonCat) => Cat.fromMap(jsonCat)).toList();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CatsHomeScreen(
      ),
    );
  }
}
