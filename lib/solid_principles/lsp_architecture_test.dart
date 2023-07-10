/*
abstract class Vehicle{
  void refuel();
  void move();
}

class ElectricCar extends Vehicle{
  @override
  void move() {
    print("Moving....");
  }

  @override
  void refuel() {
    print("Charging the battery...");
  }
  
}
class PatrolCar extends Vehicle{
  @override
  void move() {
    print("Moving....");
  }

  @override
  void refuel() {
    print("Refueling patrol...");
  }

}
void ServiceVehicle(Vehicle vehicle){
  vehicle.refuel();
}
*/

main(){
 PatrolCar().move();
 serviceElectricVehicle(ElectricCar());
}

abstract class Vehicle{
  void move();
}
abstract class FuelVehicle extends Vehicle{
  void refuel();
}
abstract class ElectricVehicle extends Vehicle{
  void charge();
}

class ElectricCar extends ElectricVehicle{
  @override
  void charge() {
    print("Charging the battery...");
  }

  @override
  void move() {
    print("Moving....");
  }

}
class PatrolCar extends FuelVehicle{
  @override
  void move() {
    print("Moving....");
  }

  @override
  void refuel() {
    print("Refilling patrol...");
  }

}

void serviceFuelVehicle(FuelVehicle vehicle){
  vehicle.refuel();
}
void serviceElectricVehicle(ElectricVehicle vehicle){
  vehicle.charge();
}