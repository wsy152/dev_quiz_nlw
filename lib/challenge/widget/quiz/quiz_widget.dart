import 'package:DevQuiz/challenge/widget/awnser/awnser_widget.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/models/awnser_model.dart';

class QuizWidget extends StatefulWidget {
  final QuestionModel question;
  final VoidCallback onChange;
  const QuizWidget({Key? key, required this.question,required this.onChange}) : super(key: key);

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int indexSelected = -1;

  AwnserModel awnsers(int index) => widget.question.awnsers[index];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 64,
        ),
        Text(
          widget.question.title,
          style: AppTextStyles.heading,
        ),
        SizedBox(
          height: 24,
        ),
        for (var i = 0; i < widget.question.awnsers.length; i++)
          AwnserWidget(
            awnser: awnsers(i),
            disabled: indexSelected != -1,
            isSelected: indexSelected == i,
            onTap: () {
              indexSelected = i;
              Future.delayed(Duration(seconds: 2)).then((value) => widget.onChange());
              setState(() {});

            },
          ),
      ],
    );
  }
}
