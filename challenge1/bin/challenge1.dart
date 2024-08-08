// 💡 Challenge 1: Recipe Manager 🥘
// Create a Dart program that uses a Map to manage recipes. Each recipe is stored
// with a name (String) as the key and a list of ingredients (List of Strings) as the value. Implement functions to:

// Add a new recipe.
// Remove a recipe by name.
// List all recipes and their ingredients.
// Search for a recipe by name and display its ingredients.
// Have fun and happy coding! 😄


import 'dart:io';

void main (){

recipe();

}

recipe (){
Map recipes={
  "onion":"onion",
  "tomato":"tomato"
};


add(){
print("to add enter 1");
int inputt=int.parse(stdin.readLineSync()!);
recipes["banana"] = "banana";
print(recipes);
}

recipes.remove("onion");
print(recipes);

print("add key ");
print("1-onion");
print("2-tomato");
print("3-stra");
int input=int.parse(stdin.readLineSync()!);

switch(input){
  case 1:
  recipes.remove("onion");
  case 2:
  recipes.remove("tomato");
  case 3:
  recipes.remove("stra");
}

print(recipes);
}