// ignore_for_file: file_names, non_constant_identifier_names

import 'package:quizzler_app/questions.dart';

class QuizBrain{
 int _questionNumb =0;
 final  List<Questions> _questionBank =[
    Questions(questionText: 'By lying a frog on its back and softly caressing its tummy, it is possible to hypnotize it. ', questionAnswer: true),
    Questions(questionText:'The moon is wider than Australia.' , questionAnswer: false),
    Questions(questionText: 'Daily, your nose and sinuses create almost one liter of mucus. ', questionAnswer: true),
    Questions(questionText: 'The longest river in the world is the Amazon River.', questionAnswer: false),
    Questions(questionText:'Polar bears can only live in the Arctic region, not in the Antarctic. ' , questionAnswer: true),
    Questions(questionText: 'The United Kingdom is almost the same size as France.', questionAnswer: true),
    Questions(questionText: 'Walt Disney has the record for most Academy Awards. ', questionAnswer: true),
    Questions(questionText:'Seahorses have stomachs, which aid in the digestion of food. ' , questionAnswer: false),
    Questions(questionText: 'The Caribbean Island of Aruba is part of Portugal. ', questionAnswer: false),
    Questions(questionText: 'Zeus is referred to as the king of the Greek gods and goddesses. ', questionAnswer: true),
    Questions(questionText:'Four countries share their land borders with Switzerland' , questionAnswer: false),
    Questions(questionText: 'In a regular deck of cards, all kings have a mustache. ', questionAnswer: false),
  ];
  void nextQuestion(){
if (_questionNumb<_questionBank.length-1){
  _questionNumb++;

}

  }
  String getQuestionText() {
    return _questionBank[_questionNumb].questionText;
  }

  bool getQuestionAnswer (){
    return _questionBank[_questionNumb].questionAnswer;
  }

bool isFinished() {
    if (_questionNumb >= _questionBank.length - 1) {
     
      return true;

    } else {
      return false;
    }
  }

void Reset (){
  _questionNumb=0;
}

}