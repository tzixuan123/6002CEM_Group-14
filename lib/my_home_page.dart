import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe/menu_item_list.dart';
import 'package:recipe/new_recipe_page.dart';
import 'package:recipe/recipe_card.dart';
import 'RecipeModel.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void addRecipe(RecipeModel a){
    recipeList.add(a);
    updateTempList();
    setState(() {});
  }

  updateStatus (String taskId, bool status){
    int index = recipeList.indexWhere((element) => element.id == taskId);
    recipeList[index].status = status;
    updateTempList();
    setState(() {});
  }

  updateTempList(){
    if (viewCategory == 'All List'){
      _tempRecipe = recipeList.toList();
    }
    // else if (viewCategory == 'Food'){
    //   _tempRecipe = recipeList.where((element) => element.status==true).toList();
    // }
    // else if (viewCategory == 'Dessert'){
    //   _tempRecipe = recipeList.where((element) => element.status==true).toList();
    // }
    else
      _tempRecipe = recipeList.where((element) => element.category==viewCategory).toList();
    setState(() {});
  }

  String viewCategory = 'All List';
  List<RecipeModel> recipeList = [];
  List<RecipeModel> _tempRecipe = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (child) => NewRecipePage(funcAddRecipe: addRecipe),
            ),
          );
        },
        child: Icon(
          Icons.add,
        ),
      ),
      appBar: AppBar(
        title: Text("Recipe : $viewCategory"),
        actions: [
          PopupMenuButton(
            onSelected: (value) {viewCategory = value; updateTempList();},
            itemBuilder: (context) => menuItemListTitle
                .map(
                  (e) => PopupMenuItem(
                    value: e,
                    child: Text(
                      e,
                    ),
                  ),
                )
                .toList(),
          )
        ],
      ),
      body: ListView(
        children: _tempRecipe
            .map(
              (t) => Recipe_card(recipe: t, update: updateStatus,))
            .toList(),
      ),
    );
  }
}
