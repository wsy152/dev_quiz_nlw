import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/awnser_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);

  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    user = UserModel(
        name: 'Edvaldo Santana',
        photoUrl: 'https://avatars.githubusercontent.com/u/35712346?v=4');
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;

    await Future.delayed(Duration(seconds: 2));

    quizzes =  [
      QuizModel(
          title: 'NLW Flutter',
          imagem: AppImages.blocks,
          questionAnswered: 1,
          level: Level.ficil,
          questions: [
            QuestionModel(title: 'O que é mais legal no flutter?', awnsers: [
              AwnserModel(title: 'A facilidade que ele permite o aprendizado?'),
              AwnserModel(title: 'A linguagem Dart que é incrivél?'),
              AwnserModel(title: 'A cominidade que é muito unida e cresce a cada dia?'),
              AwnserModel(title: 'O mercado de trabalho que esta crescendo vertiginosamente?',isRight: true),
            ]),
            QuestionModel(title: 'O que é mais legal no flutter?', awnsers: [
              AwnserModel(title: 'A facilidade que ele permite o aprendizado?'),
              AwnserModel(title: 'A linguagem Dart que é incrivél?'),
              AwnserModel(title: 'A cominidade que é muito unida e cresce a cada dia?'),
              AwnserModel(title: 'O mercado de trabalho que esta crescendo vertiginosamente?',isRight: true),
            ])


          ]),

    ];
    state = HomeState.success;
  }
}
