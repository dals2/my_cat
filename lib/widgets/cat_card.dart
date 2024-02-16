import 'package:flutter/material.dart';
import 'package:my_cats/modle/cat.dart';
import 'package:my_cats/sreens/cat_details_screen.dart';

class CatCard extends StatelessWidget {
  final Cat cat;

  const CatCard({
    super.key,
    required this.cat,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CatDetails(cat: cat);
        }));
      },
      child: Card(
          child: Column(children: [
        Expanded(
            child: Image.network(
           width: double.infinity, fit: BoxFit.fitWidth, cat.imageLink)),

         Padding(padding:  const EdgeInsets.all(8.0),    
          child:Text(
          cat.name,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple),
        )
    )])),
    );
  }
}
