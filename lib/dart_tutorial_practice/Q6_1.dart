class Laptop{
  int? id;
  String? name;
  String? ram;
}

main(){
  Laptop laptop1=Laptop();
  Laptop laptop2=Laptop();
  Laptop laptop3=Laptop();

  laptop1.id=1;
  laptop1.name="Lenovo 840";
  laptop1.ram="8 GB";

  laptop2.id=2;
  laptop2.name="Lenovo 1040";
  laptop2.ram="12 GB";

  laptop3.id=3;
  laptop3.name="HP 360x";
  laptop3.ram="16 GB";

  print("${laptop1.id}. ${laptop1.name} with ${laptop1.ram}.");
  print("${laptop2.id}. ${laptop2.name} with ${laptop2.ram}.");
  print("${laptop3.id}. ${laptop3.name} with ${laptop3.ram}.");
}