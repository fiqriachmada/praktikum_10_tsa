import 'dart:math';

class Bicycle {
  int cadence;
  int _speed = 0;
  int get speed => _speed;
  int gear;

  Bicycle(this.cadence, this.gear);

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }

  @override
  String toString() => 'Bicycle: $_speed mph';
}

class Rectangle {
  int width;
  int height;
  Point origin;

  Rectangle({this.origin = const Point(0, 0), this.width = 0, this.height = 0});

  @override
  String toString() =>
      'Origin: (${origin.x}, ${origin.y}), width: $width, height: $height';
}

abstract class Shape {
  num get area;
}

Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(2);
  if (type == 'square') return Square(2);
  throw 'Can\'t create $type.';
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

class CircleMock implements Circle {
  num area = 0;
  num radius = 0;
}

String scream(int length) => "A${'a' * length}h!";

void main() {
  // print("\nMembuat Class Sederhana\n");

  // var bike = Bicycle(2, 1);
  // print(bike);

  // print("\nMenggunakan parameter opsional (bukan yang overload)\n");

  // print(Rectangle(origin: const Point(10, 20), width: 100, height: 200));
  // print(Rectangle(origin: const Point(10, 10)));
  // print(Rectangle(width: 200));
  // print(Rectangle());

  // print("\nMembuat factory\n");

  // final circle = shapeFactory('circle');
  // final square = shapeFactory('square');
  // print(circle.area);
  // print(square.area);
  // try {
  //   print(circle.area);
  //   print(shapeFactory('triangle').area);
  // } catch (err) {
  //   print(err);
  // }

  // print("\nMengimplementasikan antarmuka\n");

  // final circle = shapeFactory('circle');
  // final square = shapeFactory('square');
  // print(circle.area);
  // print(square.area);

  print("\Menggunakan Dart untuk pemrograman fungsional\n");
  final values = [1, 2, 3, 5, 10, 50];
  values.skip(1).take(3).map(scream).forEach(print);
}
