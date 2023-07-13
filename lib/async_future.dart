void main() {
  print("Start");
  getData();
  print("End");
}

void getData() async{
  try{
    print(await middleFunction());
  }catch(err){
    print("Some error $err");
  }
  print(false);
}

Future<String> middleFunction(){
  return Future.delayed(Duration(milliseconds:500), ()=> true.toString());
}