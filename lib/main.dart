// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:basc_of_oop/classes.dart';

void main() {
  // Transport transport = Transport(
  //   typeCar: "toktok",
  //   companyCar: "toyota",
  //   priceCar: 100000,
  // );
  // transport.numCouchesCar = 3;

  // transport.printer();
  // Cat nono = Cat(skinColor: 'blow', weight: 200, typeEat: 'fish');
  // nono.eat();
  // nono.printer();

  // Lion scar = Lion(weight: 500, skinColor: 'black');
  // scar.roar();
  // scar.printer();

  // Cat kitty = Cat(
  //   '',
  //   weight: 10,
  //   skinColor: 'white',
  // );
  // kitty.printer();

  // kitty.meow();

  // Dog bobby = Dog(
  //   weight: 100,
  //   skinColor: 'brown',
  // );
  // bobby.bark();

  // bobby.printer();

  Lion scar = Lion(weight: 200, skinColor: 'yellow');
  Cat kitty = Cat(weight: 200, skinColor: 'black', typeEat: 'fish');
  Dog bobby = Dog(weight: 200, skinColor: 'browen');

  //! Polymorphism
  // List<Animal> zooAnimals = [scar, kitty, bobby];

  // debugPrint(zooAnimals.indexOf(bobby).toString());

  //!

  // SportTShirt liverboolTShirt = SportTShirt(
  //   namePlayer: 'MO Salah',
  //   playerTshirtNum: 11,
  //   tShirtType: 'Sport t-Shirt',
  //   tShirtprice: 249.99,
  //   tShirtModel: 'Half t-Shirt',
  // );

  // liverboolTShirt.productDetails();

  //!
  Circle circle1 = Circle(radius: 10, x: 8, y: 9);
  circle1.draw();

  Circle circle2 = Circle.origin(radius: 10);
  circle2.draw();
}
