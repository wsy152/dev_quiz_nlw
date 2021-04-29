import 'dart:convert';
import 'dart:core';
import 'package:DevQuiz/shared/models/quiz_models.dart';
import 'package:DevQuiz/shared/models/user.model.dart';
import 'package:flutter/services.dart';

class HomeRepository {

  Future<UserModel> getUser() async {
    final response = await rootBundle.loadString("assets/database/user.json");
    final user = UserModel.fromJson(response);
    return user;
  }

  Future<List<QuizModel>> getQuizzes() async {
    final response = await rootBundle.loadString("assets/database/quizzes.json");
    final list = json.decode(response) as List;
    final quizzes = list.map((e)=> QuizModel.fromMap(e)).toList();
    return quizzes;
  }

}