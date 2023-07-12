main(){
  List<String> days=[];
  print(insertDays(days).join(", "));
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