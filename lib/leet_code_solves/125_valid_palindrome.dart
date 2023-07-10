main(){
  String s = "Race a car";
  print(isPalindrome(s));

  List<String> newStr= [];
  List<String> str=s.split('');
  for (String i in str){

    if (RegExp(r'^[A-Za-z0-9_.]+$').hasMatch(i)) newStr.add(i.toLowerCase());

  }
  String i=newStr.join('');
  if(newStr.join()==newStr.reversed.join()) return '"$i" is a palindrome.';

}
bool isPalindrome(String s) {
  var ans = s.replaceAll(RegExp(r'[^A-Za-z0-9]+$'), '');
  return ans.toLowerCase() == ans.toLowerCase().split('').reversed.join('');
}
