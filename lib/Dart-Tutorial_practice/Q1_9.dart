main(){
  String text = "The Doctor says milk is good for health.";

  String newText = text.replaceAll(" ", "");

  print("Original Text: $text");
  print("Replaced Text: $newText");
}