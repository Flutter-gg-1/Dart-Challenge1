import 'dart:io';

void main() {
  // Initialize the recipe map
  Map<String, List<String>> recipes = {};

  while (true) {
    print('recipe ');
    print('1. add recipe');
    print('2. remove recipe');
    print('3. list all recipes');
    print('4. Exit');
    stdout.write('Enter  choice: ');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        addRecipe(recipes);
        break;
      case '2':
        removeRecipe(recipes);
        break;
      case '3':
        listall(recipes);
        break;
      
      case '4':
        print('exit');
        return; 
      default:
        print('Invalid Please try again.');
    }
  }
}


void addRecipe(Map<String, List<String>> recipes) {
  stdout.write('Enter recipe name: ');
  String? name = stdin.readLineSync();
  
  if (name == null || name.isEmpty) {
    print('Invalid recipe name.');
    return;
  }

  stdout.write('Enter ingredients (comma separated): ');
  String? Input = stdin.readLineSync();
  
  if (Input == null || Input.isEmpty) {
    print('Invalid ingredients.');
    return;
  }

  List<String> ingred = Input.split(',').map((s) => s.trim()).toList();
  recipes[name] = ingred;
  print('Recipe "$name" added.');
}


void removeRecipe(Map<String, List<String>> recipes) {
  stdout.write('Enter  name to remove: ');
  String? name = stdin.readLineSync();
  
  if (name == null || !recipes.containsKey(name)) {
    print('Recipe not found.');
    return;
  }

  recipes.remove(name);
  print('Recipe "$name" removed.');
}


void listall(Map<String, List<String>> recipes) {
  if (recipes.isEmpty) {
    print('No recipes found.');
    return;
  }
  recipes.forEach((name, ingredients) {
    print('recipe: $name');
    print('ingredi: ${ingredients.join(', ')}');
  });
}
