class SingletonTest {
  static final SingletonTest _instance = SingletonTest._internal();

  factory SingletonTest() {
    return _instance;
  }
  SingletonTest._internal();
}

void main() {
  SingletonTest obj1 = SingletonTest();
  SingletonTest obj2 = SingletonTest();
  print(obj1.hashCode);
  print(obj2.hashCode);
}
