/// Q6_2 : Write a dart program to create a class House with properties [id, name, prize]. Create a constructor of it and create 3 objects of it. Add them to the list and print all details.

class House{
  int id;
  String name ;
  int price;

  House(this.id, this.name, this.price);

  void printData(){
    print("$id.House called $name is priced $price BDT.");
  }

}

main(){
  House house1 = House(01, "JmG deluxe", 21200000);
  House house2 = House(02, "Senmar 4bh Flat", 5200000);
  House house3 = House(03, "Finlay 3bh Flat", 4120000);

  house1.printData();
  house2.printData();
  house3.printData();
}