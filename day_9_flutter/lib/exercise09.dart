class Animal {
  String name = '';

  Animal({required String name}) {
    this.name = name; //variable
  }

  void makeNoise() {
    print('animal roaring');
  }

  void sayMyName() {
    print('${this.name}');
  }
}

class Pig extends Animal {
  String name = '';
  Pig({required super.name});

  @override
  void makeNoise() {
    print('pig oink');
  }


}

class Cat extends Animal {
  String name = '';
  Cat({required super.name});
  @override
  void makeNoise() {
    print('cat meow');
  }

}

class Horse extends Animal {
  String name = '';
  Horse({required super.name});
  @override
  void makeNoise() {
    print('horse neigh');
  }

 }


void main(){
  Cat cat = Cat(name: 'Oscar');
  cat.makeNoise();
  Pig pig = Pig(name: 'George');
  pig.makeNoise();
  Horse horse = Horse(name: 'Alpha');
  horse.makeNoise();

  cat.sayMyName();
  pig.sayMyName();
  horse.sayMyName();

}
