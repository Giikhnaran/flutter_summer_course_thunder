import 'char_model.dart';

class TaskModel {
  TaskModel({required this.question, required this.pathImage, required this.answer, this.arrayBtns = const[]});

  String question;
  String pathImage;
  String answer;
  bool isDone = false;
  bool isFull = false;
  List<CharModel> puzzles = [];
  List<String> arrayBtns = []; //empty array

  void setWordFindChar(List<CharModel> puzzles) {
    //utga butsaahgui tohioldol void function dr bichne
    this.puzzles = puzzles;
  }

  setItsDone() {
    isDone = true;
  }

  bool fieldCompleteCorrect() {
    //enen bool turultei utga butsaagdah function
    bool complete =
        puzzles.where((puzzle) => puzzle.currentValue == null).isEmpty;
    if (!complete) {
      isFull = false;
      return complete;
    }
    isFull = true;
    String answeredString =
        puzzles.map((puzzle) => puzzle.currentValue).join("");
    return answeredString == answer;
  }

  TaskModel clone() {
    return TaskModel(question: question, pathImage: pathImage, answer: answer);
  }
}
