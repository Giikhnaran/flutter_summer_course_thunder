class Sprite{
  Sprite(int x, int y){ //int x int y ni property yoom
    this.x=x;
    this.y=y;

  }
  int x = 0;
  int y = 0;
}

class NamedSprite{
  int x = 0;
  int y = 0;

  NamedSprite({required int x, required int y}) {
    //construction oo ugalzan haaltand bichne
    this.x = x;
    this.y = y;
  }
}

class Animal{

  String name = '';
  String type = '';
  Animal({required  String name,required String type}){
    this.name = name;
    this.type = type;

  }
  void makeNoise(){
    print('Animal Roaring');
  }
}
void main(){
  final Sprite catSprite = Sprite(10,20);
  final NamedSprite namedDogSprite = NamedSprite(x: 20, y: 10);
  final Animal rabbit = Animal(name:'', type: '');
  rabbit.makeNoise();
  final Human temuujin = Human(age: 18, name: 'Temuujin', height: 1.68); //constractor
  temuujin.showMeasure();

}

class Human {
  int age = 0;
  String name = '';
  double height = 0; //property ni default
  Human({required int age, required String name, required double height }) //constracter ni anhnasa
  {
    this.age = age;
    this.name = name;
    this.height = height;
  }

  void showMeasure(){ //shineer object uusgej baina
    print ('My name is ${this.name} and I’m ${this.age} years old and I’m ${this.height} tall');
  }


}