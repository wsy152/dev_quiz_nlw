import 'package:DevQuiz/shared/models/awnser_model.dart';

class QuestionModel {
  final String title;
  final List<AwnserModel> awnsers;

  QuestionModel({required this.title, required this.awnsers}): assert(
  awnsers.length == 4,
  );
  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'title': this.title,
      'awnsers': this.awnsers,
    } as Map<String, dynamic>;
  }

  factory QuestionModel.fromMap(Map<String, dynamic> map) {
    return new QuestionModel(
      title: map['title'] as String,
      awnsers: map['awnsers'] as List<AwnserModel>,
    );
  }


}