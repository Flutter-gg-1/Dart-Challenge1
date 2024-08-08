





void main(){


  Map Recipe = {};



  AddR(val: Recipe, resName: "abo", lis: ["a","s"]);
  AddR(val: Recipe, resName: "abddd", lis: ["r","s"]);



  showR(Recipe);


  print("\n");


  SerchR(Recipe, "abddd");


  removeR("abddd", Recipe);

  print("after");


  showR(Recipe);







  




}


   SerchR( Map val , String nameR){

    for(var key in val.keys){

    if(key == nameR ){
      print("$key ----> ${val[key]}");
    }
  }

   }


showR( Map val){


  for(var key in val.keys){

    print("$key ----> ${val[key]}");
  }

}


removeR(String name ,  Map val){


val.remove(name);


}

AddR({required Map val , required String resName , required List<String> lis}){


  val[resName] = lis;

}