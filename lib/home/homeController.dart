import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/home_repository.dart';
import 'package:DevQuiz/home/home_state.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);

  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  final repository = HomeRepository();

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await repository.getUser();
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await repository.getQuizzes();
    state = HomeState.success;
  }
}
