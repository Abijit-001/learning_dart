main() {
  String s = "]";
  print(isValid(s));
}

bool isValid(String s) {
  List<String> stack = [];
  Map<String, String> map = {")": "(", "]": "[", "}": "{"};
  for (String e in s.split('')) {
    if (map.containsKey(e)) {
      if (stack.isNotEmpty && stack.last == map[e]) {
        stack.removeLast();
      } else {
        return false;
      }
    } else {
      stack.add(e);
    }
  }
  return stack.isEmpty;
}
