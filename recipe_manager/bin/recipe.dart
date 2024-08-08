import 'dart:io';

class Recipe{

 Map<String,List> recipe = {};



 addRecipe(String name,List risepe){
 recipe.addAll({name :risepe});
 }
  removeRecipe(String name){
    recipe.remove(name);
  }
 searchRecipe(String name){
  print(recipe[name]);
 }
}