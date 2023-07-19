class Door {
  int numberOfDoors = 0; //int deer 0 default utga ugnu string dr '' blh hooson utga ugdug
  Door({required int numberOfDoors}) {
    this.numberOfDoors = numberOfDoors;
  } //constructor
}

class Floor {
  int numberOfFloors = 0;
  Floor({required int
          numberOfFloors}); //classiin ner= constractoriin ner adilhan bh ystoi
}

class Building {
  String name = '';
  Floor floors = Floor(numberOfFloors: 1); // floors gdg object uusgehiin tuld zugeer type turliin floor gdg class baigaa shu gd
  Door doors = Door(numberOfDoors: 1);
  Building ({required String name, required Floor davhar, required Door haalga })
  {
    this.name = name;
    this.floors = davhar;
    this.doors = haalga;


}
 void showInfo(){
    print('Ajnai 101');
 }
}
void main(){
  final Door baishinHaalga = Door(numberOfDoors: 2);
  final Floor baishinDavhar = Floor(numberOfFloors: 3);
  final Building baishin = Building(name: '', davhar: baishinDavhar, haalga: baishinHaalga, );
  baishin.showInfo();
}


