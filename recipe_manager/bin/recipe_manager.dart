import 'dart:io';

import 'package:recipe_manager/recipe_manager.dart' as recipe_manager;

import 'recipe.dart';

void main(List<String> arguments) {
  Recipe recipe = Recipe();

  recipe.addRecipe('male a',['carrot,salad,creame']);
  recipe.addRecipe('male b',['carrot,salad,creame']);
  recipe.addRecipe('male c',['carrot,salad,creame']);


  recipe.removeRecipe('male a');

  recipe.searchRecipe('male b');


}
