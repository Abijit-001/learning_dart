double getAverage<T extends num>(T value1, T value2) {
  return (value1 + value2) / 2;
}
U genericMethod<T extends num, U extends String>(T value1, U value2) {
  return "$value1, $value2" as U;
}

void main() {
  print("Average of int: ${getAverage<int>(10, 20)}");
  print("Average of double: ${getAverage<double>(10.5, 20.5)}");

  print(genericMethod<int, String>(10, "Hello"));
  Map<String, int> map = {};
}
