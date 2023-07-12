main(){
  String s = "abccbaacz";
  List<String> chars=[];
  for(String c in s.split('')){
    if(chars.isNotEmpty){
      if(chars.contains(c)){
        print(c);
        break;
      }
      chars.add(c);
    }else{
      chars.add(c);
    }
    print(chars);
  }
}