class Family{
 Human mother = Human(name: 'Oyu', age: 40 , gender: "female" );
 Human father = Human(name: 'Aagii', age: 50 , gender: "male" );
 Human grandmother = Human(name: 'Nyam', age: 60 , gender: "female" );
 Human sister = Human(name: 'Tuya', age: 36 , gender: "female" );

 Family({required Human mother, required Human father, required Human grandmother, required Human sister}){
   this.mother = mother;
   this.father = father;
   this.grandmother = grandmother;
   this.sister = sister;
 }
  }




class Human {
  String name = '';
  int age = 0;
  String gender = '';

  Human({required String name, required int age, required String gender}) {
    this.name = name;
    this.age = age;
    this.gender = gender;
  }
}