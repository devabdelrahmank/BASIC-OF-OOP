import 'package:flutter/material.dart';

//! Basic class
class Human {
  String? skinColor;
  String? hairColor;
  String? eyeColor;
  String? name;

  Human({this.skinColor, this.hairColor, this.eyeColor, this.name});
  void printer() {
    debugPrint("nameCar is: $skinColor");
    debugPrint("ownerName is: $hairColor");
    debugPrint("colorCar is: $eyeColor");
    debugPrint("colorCar is: $name");
  }
}

//! Encapsulation
//?  to control the attributes
// private
// getter & setter
class Transport {
  String? carType;
  String? carCompany;
  double? carPrice;
  int _numCarCouches = 4;

  Transport({this.carPrice, this.carType, this.carCompany});

  set numCouchesCar(int numCarCouches) {
    if (numCarCouches <= 4 && numCarCouches >= 0) {
      _numCarCouches = numCarCouches;
    }
  }

  int get getNumCouchesCar => _numCarCouches;

  void printer() {
    debugPrint(carType);
    debugPrint(carCompany);
    debugPrint(carPrice.toString());
    debugPrint(_numCarCouches.toString());
  }
}

//! inheritance
//! override // two Function similer
//? The extendes

class Animal {
  int umOfLegs = 4;
  int numOfEyes = 2;
  String? skinColor;
  double? weight;

  Animal({required this.skinColor, required this.weight});
  eat() {
    debugPrint('Eating');
  }

  sleep() {}
  wak() {}
  printer() {
    debugPrint(skinColor);
    debugPrint(weight.toString());
  }
}

class Lion extends Animal {
  Lion({required double weight, required String skinColor})
      : super(skinColor: skinColor, weight: weight);

  roar() {
    debugPrint("roar");
  }
}

class Cat extends Animal {
  final String typeEat;
  Cat({
    required this.typeEat,
    required String skinColor,
    required double weight,
  }) : super(skinColor: skinColor, weight: weight);

  meow() {
    debugPrint("meow");
  }

  @override
  void eat() {
    super.eat();
    debugPrint("typeEat is: $typeEat");
  }
}

class Dog extends Animal {
  Dog({required String skinColor, required double weight})
      : super(skinColor: skinColor, weight: weight);

  bark() {
    debugPrint("bark");
  }
}

//! AbstractClass

abstract class FactroyCloses {
  String? tShirtType;
  double? tShirtprice;
  String? tShirtModel;

  FactroyCloses(
      {required this.tShirtType,
      required this.tShirtprice,
      required this.tShirtModel});

//? abstract method
  productDetails();
}

class SportTShirt extends FactroyCloses {
  String? namePlayer;
  int? playerTshirtNum;
  SportTShirt({
    required this.namePlayer,
    required this.playerTshirtNum,
    required String tShirtType,
    required double tShirtprice,
    required String tShirtModel,
  }) : super(
          tShirtModel: tShirtModel,
          tShirtType: tShirtType,
          tShirtprice: tShirtprice,
        );

  @override
  productDetails() {
    debugPrint(namePlayer);
    debugPrint(playerTshirtNum.toString());
    debugPrint(tShirtprice.toString());
    debugPrint(tShirtModel.toString());
  }
}

//! implements

//? all attributes
//? all methods
//? all override for attributes,methods

class NikeChose implements FactroyCloses {
  @override
  String? tShirtModel;

  @override
  String? tShirtType;

  @override
  double? tShirtprice;

  @override
  productDetails() {}
}

//! NamedConstructor

class Circle {
  double? radius;
  int? x;
  int? y;

  Circle({required this.radius, required this.x, required this.y});

  void draw() {
    debugPrint('you drwer Circle x=$x y=$y radius=$radius');
  }

  Circle.origin({required this.radius}) {
    x = 0;
    y = 0;
  }
}
