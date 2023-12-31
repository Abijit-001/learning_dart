abstract class Animal{

  String name ;
  String speed;

  Animal(this.name, this.speed);

  void run();

}

mixin canRun on Animal{

  void printCanRun(){
    print("Can run.");
  }
  @override
  void run() {
      print("$name can run $speed.");
  }
}

mixin canFly{
  void printCanFly(){
    print("Can't fly.");
  }
}

class Dog extends Animal with canRun {

  Dog(String name, String speed) : super(name, speed);

}


main(){
  var dog = Dog("This Dog", "fast");
  dog.printCanRun();
  dog.run();
}