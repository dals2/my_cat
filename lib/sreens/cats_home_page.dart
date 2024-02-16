import 'package:flutter/material.dart';
import 'package:my_cats/main.dart';
import 'package:my_cats/widgets/cat_card.dart';

class CatsHomeScreen extends StatelessWidget {
  const CatsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Cats'),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.favorite))
          ],
        ),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemCount: cats.length,
            itemBuilder: (context, index) {
              final cat = cats[index];
              return CatCard(cat: cat);
            }));
  }
}
