void main() {
  print("Start");
  getData();
  print("End");
}

void getData() async{
  /*String data = await middleFunction();
  print(data);*/
  try{
    // String data = await middleFunction();
    print(await middleFunction());
  }catch(err){
    print("Some error $err");
  }
  print(false);
}

Future<String> middleFunction(){
  return Future.delayed(Duration(seconds:5), ()=> true.toString());
}