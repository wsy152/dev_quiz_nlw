import 'package:DevQuiz/challenge/widget/awnser/awnser_widget.dart';
import 'package:DevQuiz/core/core.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  const QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 64,
        ),
        Text(title, style: AppTextStyles.heading,),
        SizedBox(height: 24,),
        AwnserWidget(
          isRight: false,
          isSelected: true,
          title: 'As Funcionalidades do Flutter e direcionada para todos que desejá um pouco de facilidade para a sua vida!',),
        AwnserWidget(title: 'As Funcionalidades do Flutter e direcionada para todos que desejá um pouco de facilidade para a sua vida!',),
        AwnserWidget(title: 'As Funcionalidades do Flutter e direcionada para todos que desejá um pouco de facilidade para a sua vida!',),
        AwnserWidget(title: 'As Funcionalidades do Flutter e direcionada para todos que desejá um pouco de facilidade para a sua vida!',),

      ],
    );
  }
}
