

void main() {
  Area area = Area(10, 20);
  print("Area is: ${area.area} and ${area.hashCode}");

  Area area2 = Area(-10, 20);
  print("Area is: ${area2.area} and ${area2.hashCode}");
}


class Area{
  final int l;
  final int b;
  final int area;

  const Area._internal(this.l, this.b) : area= l*b;
  
  factory Area(int l, int b){
    if(l<0 || b<0){
      throw Exception("Length and breadth must be positive.");
    }
    return Area._internal(l, b);
  }
}