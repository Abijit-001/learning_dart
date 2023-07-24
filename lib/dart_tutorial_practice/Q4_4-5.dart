main(){
  List<String> days=[];

  /// Q4_4 : Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.
  print(insertDays(days).join(", "));

  /// Q4_5 : Create an empty list of type string called days. Use where to find a name that starts with alphabet S.
  print(days.where((element) => element.startsWith("S")));
}

List<String> insertDays(List<String> days) {
  days.add("Sunday");
  days.add("Monday");
  days.add("Tuesday");
  days.add("Wednesday");
  days.add("Thursday");
  days.add("Friday");
  days.add("Saturday");
  return days;
}