import 'package:DevQuiz/core/core.dart';

class QuestionIndicatorWidget extends StatelessWidget {
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
                Text('Questão 04',style: AppTextStyles.body,),
                Text('de 10',style: AppTextStyles.body,),

              ],
            ),
            SizedBox(height: 16,),
            ProgressIndicatorWidget(value: 0.3,)

          ],
        ),
      ),
    );
  }
}
