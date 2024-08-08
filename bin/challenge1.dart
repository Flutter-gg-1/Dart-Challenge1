
void main() {

Map<String,List<String>> recipes;

//add
recipes ={
  "Apple pie": ["Apples", "flour", "sugar", "milk", "cinnamon", "butter", "salt"],
  "Pancake": ["flour", "powdered milk", "sugar", "baking powder", "salt"],
  "Omlete": ["eggs", "water", "Salt", "black pepper", "butter"]

};
//remove
recipes.remove("Apple pie");

//list all
print(recipes);

//search
print(recipes["Omlete"]);

}
