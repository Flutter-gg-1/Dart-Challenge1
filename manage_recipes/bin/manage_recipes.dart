main() {
  Map<String, List<String>> recipe = {};

  addNewRecipe(recipe, 'pasta', ["nodels", "onion", "tomato"]);
  addNewRecipe(recipe, 'pancak', ["egg", "flowr", "water"]);
  searchByName(recipe, 'pasta');
  //removNewRecipe(recipe, 'pasta');
}

addNewRecipe(
    Map<String, List<String>> recipe, String name, List<String> ingredients) {
  recipe['name'] = ingredients;
  print('the new recipe ${recipe['name']} successfully .');
}

removNewRecipe(Map<String, List<String>> recipe, String name) {
  if (!recipe.containsKey(name)) {
    recipe.remove(name);
    print("the recipe removed ${recipe['name']}");
  } else {
    print("no recipe found ");
  }
}

searchByName(Map<String, List<String>> recipe, String name) {
  if (!recipe.containsKey(name)) {
    print("the ingredients of $name is: \n ${recipe['name']!.join(' , ')}");
  } else {
    print("no recipe found ");
  }
}
//listAllRecipes(); 