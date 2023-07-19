//class with named object pararmeters
//bi odoo hun gedeg class uusgiy
//gehdee ene hun class ni head, body, hand gedeg hesguudees burdene
class Body {
  int numberOfBody = 0; //property ni default baina
  Body({ required int numberOfBody}){ //manai constractor
    this.numberOfBody = numberOfBody; //gertee umnuh hicheel dr uzsn ymaa dahin uzeh
  }

}
class Head { //bluprint class boloh jishee class
  int numberOfHead = 0;
  Head({required int numberOfHead}){
    this.numberOfHead = numberOfHead;
  }

}
class Human{ //etseg class bish , head and body g aguulsan tusdaa shine class bolno
  Body humanBody = Body(numberOfBody: 1);
  Head humanHead = Head(numberOfHead: 1);

  Human({required Body humanBody, required Head humanHead}){
    this.humanBody = humanBody;
    this.humanHead = humanHead;

  }
  void showInfo(){
    print ('hello world');
  }
}


void main (){
  final Body khangaiBody = Body (numberOfBody: 1);
  final Head khangaiHead = Head(numberOfHead: 1);
  final Human khangai = Human(humanBody: khangaiBody, humanHead: khangaiHead);
  khangai.showInfo();
}