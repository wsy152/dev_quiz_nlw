import 'package:DevQuiz/core/core.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget() : super(
    preferredSize: Size.fromHeight(250),
    child: Container(
      height: 250,


      child: Stack(

        children: [
          Container(
            height: 161,
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            width: double.maxFinite,
            decoration: BoxDecoration(gradient: AppGradients.linear,

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                    TextSpan(text: 'Ola, ',style: AppTextStyles.title,
                    children: [
                      TextSpan(text: 'Edvaldo Santana',style: AppTextStyles.titleBold)
                      ]
                    ),
                ),
                Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                    image: NetworkImage('https://avatars.githubusercontent.com/u/35712346?v=4'),
                    )),
                ),


              ],
            ),
          ),
          Align(

              alignment: Alignment(0.0,1.0),
              child: ScoreCardWidget(),)
        ],
      ),
    )
  );

}
