///Questions: https://dart-tutorial.com/introduction-and-basics/questions-for-practice-1/
main(){
  String text = "The Doctor says milk is good for health.";

  String newText = text.replaceAll(" ", "");

  print("Original Text: $text");
  print("Replaced Text: $newText");
  print("Replaced Text: ${text.split(" ").join("")}");
}