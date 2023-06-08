import 'package:flutter/material.dart';
import 'package:recipe/RecipeModel.dart';

class NewRecipePage extends StatefulWidget {
  final Function(RecipeModel) funcAddRecipe;
  const NewRecipePage({Key? key, required this.funcAddRecipe}) : super(key: key);

  @override
  State<NewRecipePage> createState() => _NewRecipePageState();
}

class _NewRecipePageState extends State<NewRecipePage> {
  TextEditingController recipeNameController = TextEditingController();
  TextEditingController recipeDescriptionController = TextEditingController();
  // TextEditingController dueDateController = TextEditingController();
  String recipeCategory = 'Drink';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          widget.funcAddRecipe(
            RecipeModel(
                id: DateTime.now().toString(),
                title: recipeNameController.text,
                description: recipeDescriptionController.text,
                // dueDate: dueDateController.text,
                category: recipeCategory,
                status: false),
          );
          Navigator.pop(context);
        },
        child: Icon(Icons.check),
      ),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_rounded),
        ),
        title: Text("New Recipe"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recipe Name',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              controller: recipeNameController,
              decoration: InputDecoration(
                hintText: 'Enter Name Here',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Recipe Details',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
              TextField(
                controller: recipeDescriptionController,
                decoration: InputDecoration(
                  hintText: 'Enter Recipe Here',
                ),
              ),
            SizedBox(
              height: 20,
            ),
            // Text(
            //   'Due Date',
            //   style: TextStyle(
            //     fontSize: 23,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            // Row(
            //   children: [
            //     SizedBox(
            //       width: 270,
            //       child: TextField(
            //         controller: dueDateController,
            //         decoration: InputDecoration(
            //           hintText: 'Date not set',
            //         ),
            //       ),
            //     ),
            //     IconButton(
            //       onPressed: () async {
            //         DateTime? date = await showDatePicker(
            //             context: context,
            //             initialDate: DateTime.now(),
            //             firstDate: DateTime(2000),
            //             lastDate: DateTime(2090));
            //         dueDateController.text = date.toString().substring(0,10);
            //         print(date);
            //       },
            //       icon: Icon(Icons.calendar_month),
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            Text(
              'Add to Recipe',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            DropdownButton(
              value: recipeCategory,
              isExpanded: true,
              items: ['Food', 'Dessert', 'Drink', 'Others']
                  .map(
                    (v) => DropdownMenuItem(
                      child: Text(v),
                      value: v,
                    ),
                  )
                  .toList(),
              onChanged: (v) {
                recipeCategory = v!;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
