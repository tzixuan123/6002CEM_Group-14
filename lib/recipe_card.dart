import 'package:flutter/material.dart';
import 'package:recipe/RecipeModel.dart';

class Recipe_card extends StatelessWidget {
  final RecipeModel recipe;
  final Function(String, bool) update;

  const Recipe_card({Key? key, required this.recipe, required this.update})
      : super(key: key);

  taskCategoryColor(String category) {
    switch (category) {
      case 'Food':
        return Colors.orange;
      case 'Dessert':
        return Colors.amber;
      case 'Drink':
        return Colors.blue;
      case 'Others':
        return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Checkbox(
            value: recipe.status,
            onChanged: (value) {
              update(recipe.id, value!);
            }),
        title: Text(recipe.title),
        subtitle: Text(
          recipe.description,
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        trailing: Text(
          recipe.category,
          style: TextStyle(
              color: taskCategoryColor(recipe.category),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
