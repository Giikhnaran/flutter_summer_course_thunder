int calculate() {
  return 6 * 7;
}

class Hool {
  int x = -8;
  int y = 44;
  String name = 'Hool';
  bool isShow = true;
  int size = 100;
  int direction = 90;

  void sayHello() {
    print('Hello'); //class dotor function todrhoilj bna
  }

  void sayMyName() {
    print(this.name);
  }

  void sayMyLocation(){
    print('this is my location x: $x, y: $y'); //interpolation
  }
  void showMySize(){
    print('this is my size: $size');
  }
  void goToXandY(int x, int y){
    this.x=x;
    this.y=y;
  }

  void sayMyDirection(){
    print('that is hools direction: $direction');
  }
  void move(int x){
    this.x += x;
  }
  void changeYby(int y){
    this.y +=y;


  }


}

class Sav {
  int x = 114;
  int y = 58;
  String name = 'Sav';
  bool isShow = true;
  int size = 100;
  int direction = 90;

  void sayHello() {
    print('Hello'); //class dotor function todrhoilj bna
  }
  void sayMyName(){
    print(this.name);
  }
  void sayMyLocation(){
    print('this is my location x: $x, y: $y'); //interpolation
  }
  void goToXandY(int x, int y){
    this.x=x;
    this.y=y;
  }
  void showMySize(){
    print('this is my size: $size');
  }
  void sayMyDirection(){
    print('that is hools direction: $direction');
  }
  void move(int x){
    this.x +=x;

  }
  void changeYby(int y){
    this.y +=y;

  }

}

class Apple {
  int x = -140;
  int y = 46;
  String name = 'Apple';
  bool isShow = true;
  int size = 100;
  int direction = 90;

  void sayHello() {
    print('Hello'); //class dotor function todrhoilj bna
  }
  void sayMyName(){
    print(this.name);
  }
  void sayMyLocation(){
    print('this is my location x: $x, y: $y'); //interpolation
  }
  void goToXandY(int x, int y){
    this.x=x;
    this.y=y;
  }
  void showMySize(){
    print('this is my size: $size');
  }
  void sayMyDirection(){
    print('that is hools direction: $direction');
  }
  void move(int y){
    this.y += y;

  }
  void changeYby(int y){
    this.y +=y;

  }
}

void main() {
  final hool =
      Hool(); //бодит хоол гэдэг обьект class bichsen bol buurunhii haalt bichne
  print(hool);
  hool.sayHello();
  hool.sayMyName();
  hool.sayMyLocation();
  hool.showMySize();
  hool.goToXandY(10, 50);
  hool.sayMyLocation();
  hool.sayMyDirection();
  hool.move(100);
  hool.sayMyLocation();
  hool.move(-40);
  hool.sayMyLocation();

  final sav = Sav(); //бодит сав гэдэг обьект
  print(sav);
  sav.sayHello();
  sav.sayMyName();
  hool.sayMyLocation();
  hool.showMySize();
  hool.goToXandY(20, 60);
  hool.sayMyLocation();
  hool.sayMyDirection();
  hool.move(40);
  hool.sayMyLocation();
  hool.move(-30);
  hool.sayMyLocation();


  final apple = Apple(); //бодит алим гэдэг обьект
  print(apple);
  apple.sayHello();
  apple.sayMyName();
  hool.sayMyLocation();
  hool.goToXandY(30, 70);
  hool.sayMyLocation();
  hool.showMySize();
  hool.sayMyDirection();
  hool.move(50);
  hool.sayMyLocation();
  hool.move(-40);
  hool.sayMyLocation();
}
