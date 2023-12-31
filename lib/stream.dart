import 'dart:async';

main() async {
  await for (String name in getUserName()) {
    print(name);
  }
}

Stream<String> getUserName() async* {
  await Future.delayed(Duration(milliseconds: 200));
  yield '*******';
  await Future.delayed(Duration(milliseconds: 300));
  yield ' ***** ';
  await Future.delayed(Duration(milliseconds: 300));
  print('  ***  ');
  await Future.delayed(Duration(milliseconds: 300));
  yield '   *   ';
  await Future.delayed(Duration(seconds: 1));
  yield '  ***  ';
  await Future.delayed(Duration(seconds: 1));
  yield ' ***** ';
  await Future.delayed(Duration(seconds: 1));
  yield '*******';

}
