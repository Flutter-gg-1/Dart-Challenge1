void main(List<String> arguments) {
  var mgr = ReciepeMgr();
  mgr.addNewRecipe(title: 'some Recipe', ingredients: ['1', '2', '3']);
  mgr.addNewRecipe(title: 'some Recipe2', ingredients: ['1', '2', '3']);
  mgr.addNewRecipe(title: 'some Recipe3', ingredients: ['1_3', '2_3', '3_3']);

  mgr.removeRecipe('some Recipe');

  mgr.showAllRecipies();

  mgr.showRecipeByName('some Recipe3');
}

class ReciepeMgr {
  Map<String, List<String>> recipies = {};

  void addNewRecipe(
      {required String title, required List<String> ingredients}) {
    recipies[title] = ingredients;
  }

  void removeRecipe(String name) {
    recipies.remove(name);
  }

  void showAllRecipies() {
    recipies.forEach((k, v) => print("Key : $k, Value : $v"));
  }

  void showRecipeByName(String name) => print(recipies[name]);
}
