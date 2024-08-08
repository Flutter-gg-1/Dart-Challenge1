Map<String, List<String>> recipes = {
  "Burger": ['Burger', 'Meat', 'Lettuce', 'Tomato', 'Onion'],
};
void main() {
  print(recipes);

  addRecipes('Pizza');
  addRecipes('Pasta');

  removeRecipes('Pizza');
}

//Add a new recipe.
addRecipes(String recipeName) {
  recipes[recipeName] = [recipeName];
  print(recipes);
}

//Remove a recipe by name.
removeRecipes(String recipeName) {
  recipes.remove(recipeName);
  print(recipes);
}

//List all recipes and their ingredients.
listRecipes() {
  print(recipes);
}
