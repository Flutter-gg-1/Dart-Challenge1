import 'dart:io';
void main() {
  Map<String,List<String>> recipes = {};
  addRecipe(recipes);
  getRecipes(recipes);
  addRecipe(recipes);
  getRecipes(recipes);
  removeRecipe(recipes,'food');
  getRecipes(recipes);
  getByName(recipes, 'food222');
}

addRecipe(Map<String,List<String>> recipes) {
  print("recipe name : ");
  String? key = stdin.readLineSync();
  print("How many ingredients ? : ");
  int numberOfElements = int.parse(stdin.readLineSync()!);
  List<String> value = [];
  for(int i=0; i<numberOfElements; i++) {
    print("Enter ingredinet ${i+1}");
    value.add(stdin.readLineSync()!);
  }
  recipes[key!] = value;
}

removeRecipe(Map recipes,String r) {
  recipes.remove(r);
}

getRecipes(Map recipes) {
  print("Recipes : ");
  for(var key in recipes.keys) {
    print("$key : ${recipes[key]}");
  }
}

getByName(Map recipes, String key) {
  print("Ingredients of $key are ${recipes[key]}");
}