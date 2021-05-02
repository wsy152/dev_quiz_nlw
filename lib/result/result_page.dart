import 'package:DevQuiz/core/core.dart';
import 'package:share_plus/share_plus.dart';

class ResultPage extends StatelessWidget {
  final String title;
  final int lenght;
  final int result;

  const ResultPage({Key? key,required this.title,required this.lenght, required  this.result}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppImages.trophy),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Parabéns!',
                  style: AppTextStyles.heading40,
                ),
                SizedBox(
                  height: 16,
                ),
                Text.rich(
                  TextSpan(
                      text: 'Você concluiu\n',
                      style: AppTextStyles.body,
                      children: [
                        TextSpan(
                            text: "$title \n",
                            style: AppTextStyles.bodyBold),
                        TextSpan(
                            text: "com $result de $lenght  acerto", style: AppTextStyles.body),
                      ]),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 24,
                ),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 70),
                        child: NextButtonWidget.purple(
                            label: 'Compartinhar', onTap: () {
                          Share.share('Resultado:');

                        }),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 34,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 70),
                        child: NextButtonWidget.transparent(
                          label: 'Voltar ao Inicio',
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
