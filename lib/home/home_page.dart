import 'package:DevQuiz/core/core.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.getUser();
    controller.getQuizzes();
      controller.stateNotifier.addListener(() {
        setState(() {

        });
      });
  }

  @override
  Widget build(BuildContext context) {
    if(controller.state == HomeState.success) {
      return Scaffold(
        appBar: AppBarWidget(
          user: controller.user!,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LevelButtonWidget(
                    label: 'Fácil',
                  ),
                  LevelButtonWidget(
                    label: 'Médio',
                  ),
                  LevelButtonWidget(
                    label: 'Difícil',
                  ),
                  LevelButtonWidget(
                    label: 'Perito',
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  crossAxisCount: 2,
                  children: controller.quizzes!
                      .map((e) =>
                      QuizCardWidget(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => ChallengePage(questions: e.questions,title: e.title,)));
                        },
                        title: e.title,
                        percent: e.questionAnswered / e.questions.length,
                        completed:
                        '${e.questionAnswered} / ${e.questions.length}',
                      ))
                      .toList(),
                ),
              )
            ],
          ),
        ),
      );
    }else {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.green),
          ),
        ),

      );
    }
  }
}
