
void main(List<String> arguments) {
  // recipes
  Map<String,List<String>> recipes = {};

  // Add some initial recipes
  addRecipe(recipes, 'kabsa', ['Rise','Checkin' ,'Felfel', 'Salt', 'Water']);
  addRecipe(recipes, 'salad', ['Tomato', 'Salt']);

  // remove recipe
  removeRecipe(recipes, 'salad');

  // list all recipes
  listRecipes(recipes);

  // search for a recipe by name and display its ingredients
   print(recipes['kabsa']);
}

//
void addRecipe(Map<String, List<String>> recipes, String name, List<String> ingredients) {
  recipes[name] = ingredients;
}

// remove recipe by name
void removeRecipe(Map<String, List<String>> recipes, String name) {
  recipes.remove(name);
}

// recipes and their ingredients
void listRecipes(Map<String, List<String>> recipes) {
  for (var recipe in recipes.keys) {
    print('$recipe: ${recipes[recipe]}');
  }
}