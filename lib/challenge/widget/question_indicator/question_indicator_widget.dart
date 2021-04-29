import 'package:DevQuiz/core/core.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  final int currentPage;
  final int lenght;

  const QuestionIndicatorWidget({Key? key, required this.currentPage,required this.lenght}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Questão $currentPage',style: AppTextStyles.body,),
                Text('de $lenght',style: AppTextStyles.body,),

              ],
            ),
            SizedBox(height: 16,),
            ProgressIndicatorWidget(value: currentPage / lenght,)

          ],
        ),
      ),
    );
  }
}
