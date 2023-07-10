main(){
  List<String> strs= ["eat","tea","tan","ate","nat","bat"];

  ///Solution-1
  print(Solution().groupAnagrams(strs));

  ///Solution-2
  List<List<String>> result=[];
  for(String i in strs){
    List<String> anangram=[];
    if(!anangram.contains(i)) anangram.add(i);

    for (String j in strs){

       if(checkAnagram(i,j)){
         if(!anangram.contains(j)) anangram.add(j);
       }
    }
    anangram.sort();
    if(!result.contains(anangram)) result.add(anangram);
  }
  print(result.toSet().toList());
}

bool checkAnagram(String s, String t) {
  var sSorted = s.toLowerCase().split('');
  var tSorted = t.toLowerCase().split('');
  sSorted.sort();
  tSorted.sort();
  if (sSorted.length != tSorted.length) {
    return false;
  } else {
    for(int i=0;i<sSorted.length;i++){
      if(sSorted[i]!=tSorted[i]){
        return false;
      }
    }
  }
  return true;
}

class Solution {
  List<List<String>> groupAnagrams(List<String> strs)
  {
    Map<String,List<String>> map={};
    for (var s in strs) {
      List<String> str=s.split('');
      str.sort((a, b) => a.compareTo(b));
      String i=str.join('');
      if(map.containsKey(i))
      {
        map[i]!.add(s);
      }else{
        map[i]=[s];
      }
    }

    return map.values.toList();

  }
}