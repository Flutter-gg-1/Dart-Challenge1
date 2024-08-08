





void main(){


  Map Recipe = {};



  AddR(val: Recipe, resName: "checekn", lis: ["rice","chekcen"]);
  AddR(val: Recipe, resName: "egg", lis: ["oil","egg"]);



  showR(Recipe);


  print("\n");


  SerchR(Recipe, "egg");


  removeR("egg", Recipe);

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