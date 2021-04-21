import 'package:DevQuiz/core/core.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LevelButtonWidget(label: 'Fácil',),
                LevelButtonWidget(label: 'Médio',),
                LevelButtonWidget(label: 'Difícil',),
                LevelButtonWidget(label: 'Perito',),
              ],
            ),
            SizedBox(height: 20,),
            Expanded(
              child: GridView.count(
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                crossAxisCount: 2,
                children: [
                  QuizCardWidget(),
                  QuizCardWidget(),
                  QuizCardWidget(),
                  QuizCardWidget(),

                ],
              ),
            )

          ],
        ),
      ),

    );
  }
}


