main() {
  (String, int, double, {int age, String name}) x =
      ("23", 0, 77.0, age: 20, name: "Doe");
  print(x.$3);
  print(x.name);

  ///JSON Destructuring

  var json = {
    'movie': ["Expendables", 2.5],
    'cast': ["Jane", "Rambo", "Chris"]
  };
  var title, length;
  List<dynamic> casts;
  {'movie': [title, length], 'cast': casts} = json;
  print("Movie $title is $length hours long with the cast: $casts");


  /// Validating the JSON data to ensure the format you intend to destructure is the one received

  switch (json) {
    case {'movie': [String title, int length], 'cast': List<String> casts}:
      print("Movie $title is $length hours long with the cast: $casts");
    default:
      print("Invalid JSON");
  }
}
