
class Car {

  String wheel = '4 wheels';
  String seat = '5 seat';

  String driving() {
    return 'drive forward';
  }

  String streering(String direction) {
    return 'steer toward the $direction';
  }

}

class FlyingCar extends Car {

  void fly() {
    print('fly to the sky');
  }

  @override
  String driving() {
    return 'glide up';
  }

}

class SuperFlyingCar extends FlyingCar {

  int power = 21845378;
  String engine = 'x-motor-Gt-x23';

  @override
  void fly() {
    super.fly();
    print('super flying $engine');
  }

}
