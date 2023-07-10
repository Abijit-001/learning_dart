main() {
  String s = "anagram";
  String t = "naaram";
  var sSorted = s.toLowerCase().split("");
  var tSorted = t.toLowerCase().split("");
  sSorted.sort();
  tSorted.sort();
  if (sSorted.length != tSorted.length) {
    print(false);
  } else {
    for(int i=0;i<sSorted.length;i++){
      if(sSorted[i]!=tSorted[i]){
        print(false);
      }
    }
  }
  print(true);
}