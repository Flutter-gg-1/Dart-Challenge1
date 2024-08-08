Map<String, List<String>> recipes = {
  "egg": ["egg", "oil"]
};
void main(List<String> arguments) {
  // print(recipes);
  addRacipe("ss", ["gg", "ss"]);
  searcRecipe("ss");
}

addRacipe(String r, List<String> x) {
  recipes[r] = x;
}

removeRacipe(String value) {
  if (recipes.containsKey(value)) {
    recipes.remove(value);
  }
}

searcRecipe(String value) {
  if (recipes.containsKey(value)) {
    print(recipes[value]);
  }
}
