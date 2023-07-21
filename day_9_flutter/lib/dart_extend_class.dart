//class interhance = udamshil, ulamjlal
class Sprite{
  int x = 0; //property
  int y= 0;

  Sprite ({required int x, required int y }){ //constructor
    this.x = x;
    this.y = y;
  }

}
class CatSprite extends Sprite{
  CatSprite({required super.x, required super.y});

}
 class DogSprite extends Sprite{
  DogSprite({required super.x , required super.y});

 }

 void main()
{
  Sprite sprite = Sprite(x: 10, y: 20);
  CatSprite cat = CatSprite(x: 40, y: 40);
  DogSprite dog = DogSprite(x: 40, y: 40);
  Ganbold ganbold = Ganbold(name: 'Ganbold');
  ganbold.sayMyName();
  Batbold batbold = Batbold(name: 'Batbold');
  batbold.sayMyName();

}

class Ganbold{
  String name = '';
  Ganbold({required String name}){
    this.name = name;

  }
  void sayMyName(){
    print('My name is Ganbold');



  }
}

class Batbold extends Ganbold {
  String name = '';
  Batbold({required super.name});

  @override
  void sayMyName(){
    print('My name is Batbold');
  }
}

