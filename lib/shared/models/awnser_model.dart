class AwnserModel {
  final String title;
  final bool isRight;

  AwnserModel({
    required this.title,
    this.isRight = false,
  });

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'title': this.title,
      'isRight': this.isRight,
    } as Map<String, dynamic>;
  }

  factory AwnserModel.fromMap(Map<String, dynamic> map) {
    return new AwnserModel(
      title: map['title'] as String,
      isRight: map['isRight'] as bool,
    );
  }

}
