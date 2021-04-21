import 'package:DevQuiz/core/core.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  final double value;
  ProgressIndicatorWidget({required this.value});

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: value,
      backgroundColor: AppColors.chartSecondary,
      valueColor:
      AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
    );
  }
}
