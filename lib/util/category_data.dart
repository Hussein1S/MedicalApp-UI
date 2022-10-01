import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final iconImagePath;
  final categoryName;

  CategoryCard({this.iconImagePath,this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(12)
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Image.asset(iconImagePath,
                height: 30,),
              SizedBox(width: 10,),
              Text(categoryName),
            ],
          ),
        ),

      ),
    );
  }
}
