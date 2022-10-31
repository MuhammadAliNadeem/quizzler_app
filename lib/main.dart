import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:velocity_x/velocity_x.dart';
import 'quizBrain.dart';
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 29, 23, 23),
      body: Quizzer(),
    ),
  ));
}

class Quizzer extends StatefulWidget {
  const Quizzer({super.key});

  @override
  State<Quizzer> createState() => _QuizzerState();
}

class _QuizzerState extends State<Quizzer> {
        List<Icon> scorekeeper=[];
        QuizBrain quizbrain =QuizBrain();
        void checkAnswer(bool userSelection)
{
bool   correctAnswer =quizbrain.getQuestionAnswer();

               
                 setState(() {
                  if(quizbrain.isFinished()==true)
                  {
                    Alert(context: context,
                    title: "Quiz Finished"
                    ).show();
                    quizbrain.Reset();
                    scorekeeper=[];
                  }

                  else
                   if(userSelection==correctAnswer){
                scorekeeper.add(const Icon(Icons.check,color: Colors.green,));
                }
                else{
                   scorekeeper.add(const Icon(Icons.close,color: Colors.red,));
                   }
                quizbrain.nextQuestion();
                
              }
              );
}
  @override
  Widget build(BuildContext context) {
    return SafeArea (
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
             child: Center(child: quizbrain.getQuestionText().text.color(Colors.white).xl3.make()).p(15)
            ),
          Expanded(
            child: ElevatedButton(
              onPressed:() { 
                checkAnswer(true);
                }, 

             style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green)),

             child: "True".text.xl.color(Colors.white).make(),
             ).p(12),
          ),
           Expanded(
            child: ElevatedButton(
              onPressed:() {
                 checkAnswer(false);
                 },

             style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red)),

             child: "False".text.xl.color(Colors.white).make(),
             ).p(12),
          ),
         SingleChildScrollView (
          scrollDirection: Axis.horizontal,
            child: Row(
              children: scorekeeper,
              
            ),
          )
        ],
      )
    );
  }
}
