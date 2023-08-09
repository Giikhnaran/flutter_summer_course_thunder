class CharModel {
  String? currentValue;
  int? currentIndex;
  String? correctValue;
  bool hintShow; //turliin ard ni asuultiin temdeg baival null baij blno gui bol zaaval initialize buyu utga hooson utga gdgiig ni uguh heregtei bolod bn
  CharModel(
      {this.hintShow = false,
      this.correctValue,
      this.currentIndex,
      this.currentValue}) ;
  GetCurrentValue()
  {
    if ( correctValue != null) {
      return currentValue;
    }
    if (hintShow){
      return correctValue;
    }
  }
  ClearValue(){
    currentValue = null;
    currentIndex = null;
  }

    }


