import 'dart:io';

void main(List<String> arguments) {
  Recepie recepie = Recepie(name: name, ingredients: ingredients)
}

 addNew(String name, List ingredients){
    Recepie(name: name, ingredients: ingredients);
  }

class Recepie {
  String name;
  List ingredients;
  static Map allRecipies={};

  Recepie({
    required this.name,
    required this.ingredients,
  }){
    allRecipies[name] = ingredients;
  }

  removeByName(String name){
    allRecipies.remove(name);
  }

  listRecipies(){
    for (var element in allRecipies.values) {
      print(element);
      
    }
  }

  recipieByName(String name){
print(allRecipies[name]);
  }

}
