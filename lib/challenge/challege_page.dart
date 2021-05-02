import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/result/result_page.dart';

class ChallengePage extends StatefulWidget {
  final List<QuestionModel> questions;
  final String title;

  ChallengePage({Key? key, required this.questions, required this.title})
      : super(key: key);

  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  final controller = ChallengeController();
  final pageController = PageController();
  @override
  void initState() {
    pageController.addListener(() {
      controller.currentPage = pageController.page!.toInt() + 1;
    });
    // TODO: implement initState
    super.initState();
  }

  void nextPage(bool value) {
    pageController.nextPage(
        duration: Duration(
          microseconds: 900,
        ),
        curve: Curves.linear);
  }

  void onSelected(bool value) {
    if (value) {
      controller.qtdAnwserRight++;
    }
    nextPage(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(86),
        child: SafeArea(
            top: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                ValueListenableBuilder<int>(
                  valueListenable: controller.currentPageNotifier,
                  builder: (context, value, _) => QuestionIndicatorWidget(
                    currentPage: value,
                    lenght: widget.questions.length,
                  ),
                )
              ],
            )),
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: widget.questions
            .map((e) => QuizWidget(
                  onSelected: onSelected,
                  question: e,
                ))
            .toList(),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: ValueListenableBuilder<int>(
                valueListenable: controller.currentPageNotifier,
                builder: (context, value, _) => Row(
                      children: [
                        if (value < widget.questions.length)
                          Expanded(
                            child: NextButtonWidget.white(
                                label: 'Pular',
                                onTap: () {
                                  onSelected;
                                }),
                          ),
                        if (value == widget.questions.length)
                          Expanded(
                            child: NextButtonWidget.green(
                              label: 'Confirmar',
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ResultPage(
                                              result: controller.qtdAnwserRight,
                                              title: widget.title,
                                              lenght: widget.questions.length,
                                            )));
                              },
                            ),
                          ),
                      ],
                    ))),
      ),
    );
  }
}
