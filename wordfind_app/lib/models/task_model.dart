import 'char_model.dart';

class TaskModel {
  TaskModel(this.question, this.pathImage, this.answer, this.arrayButtons);

  String question;
  String pathImage;
  String answer;
  bool isDone = false;
  bool ifFull = false;
  List<CharModel> puzzles = [];
  List<String> arrayButtons = []; //empty array

  setWordFindChar(List<CharModel> puzzles) {
    this.puzzles = puzzles;
  }

  setItsDone() {
    isDone = true;
  }

  bool fieldCompleteCorrect() {
    bool complete =
        puzzles.where((puzzle) => puzzle.currentValue == null).isEmpty;

    return false;

  }

  TaskModel clone() {
    return TaskModel(question, pathImage, answer, arrayButtons);
  }
}
