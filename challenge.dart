import 'dart:io';

void main(List<String> arguments) {
  List res = [];
  while (true) {
    print("1. to add new recipes ");
    print("2. remove rescipes ");
    print("3. to serch ");
    int input = int.parse(stdin.readLineSync()!);

    switch (input) {
      case 1:
        print(" enter the recipes ");
        String rescpie = stdin.readLineSync()!;
        res.add(rescpie);

      case 2:
        print(" enter the name ");
        String name = stdin.readLineSync()!;
        res.remove(name);
      case 3:
        print(" enter the recipes ");
        String serch = stdin.readLineSync()!;
        for (var element in res) {
          if (serch == element) {
            print(element);
          }
        }
    }
  }
}
