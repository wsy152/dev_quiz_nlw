import 'package:DevQuiz/challenge/widget/next_button/next_button_widget.dart';
import 'package:DevQuiz/challenge/widget/question_indicator/question_indicator_widget.dart';
import 'package:DevQuiz/challenge/widget/quiz/quiz_widget.dart';
import 'package:DevQuiz/core/core.dart';

class ChallengePage extends StatefulWidget {
  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(86),
        child: SafeArea(
            top: true,
            child: Column(
              children: [
                BackButton(),
                QuestionIndicatorWidget(),
              ],
            )),


      ),
      body: QuizWidget(title:'O que o flutter faz em sua totalidade?'),
      bottomNavigationBar: SafeArea(
        child: Padding(

          padding: const EdgeInsets.symmetric(horizontal: 20,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Expanded(child: NextButtonWidget.white( label: 'Facil',onTap:(){})),
              SizedBox(width:  7,),
              Expanded(child: NextButtonWidget.green( label: 'Confirmar',onTap: (){},)),
            ],


          ),
        ),
      ),

    );
  }
}
