class Dinosaur {
  String name = '';
  String color = '';
  int weight = 0;

  Dinosaur({required String name, required String color, required int weight}) {
    this.name = name;
    this.color = color;
    this.weight = weight;
  }
  int shoutOut() {
    return weight;
  }

  void shoutName() {
    print(name + ' is ${this.weight}' + ' kg');
  }

  void showInfo() {
    shoutName();
  }
}

void main() {
  final Dinosaur tyrannosaurus =
      Dinosaur(name: 'tyrannosaurus', color: 'green', weight: 11000);
  final Dinosaur triceratops =
      Dinosaur(name: 'Triceratops', color: 'yellow', weight: 10000);
  final Dinosaur spinosaurus =
      Dinosaur(name: 'spinosaurus', color: 'blue', weight: 12000);
  tyrannosaurus.shoutName();

  triceratops.shoutName();

  spinosaurus.shoutName();
}
