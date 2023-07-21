class Shape {
  int length = 0; //inital value
  int width = 0; //property
  String name = ''; //that are variables

  Shape({required int length, required int width, required String name}) {
    this.length = length;
    this.width = width;
    this.name = name;
  }
  void showInfo() {
    // ene functioniig sudlah
    print('My info is `${this.name} with ${this.length} and ${this.length}');
  }
}

void main() {
  final Shape rectangle = Shape(length: 14, width: 20, name: 'rectangle');
  final Shape quadrat = Shape(length: 20, width: 15, name: 'quadrat');
  final Shape triangle = Shape(length: 20, width: 20, name: 'triangle');
  rectangle.showInfo();
  quadrat.showInfo();
  triangle.showInfo();
}
