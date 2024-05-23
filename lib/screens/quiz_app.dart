import 'package:flutter/material.dart';
import 'package:new_portfolio/screens/calculator_app.dart';
import 'package:new_portfolio/util/screen_sizer.dart';
import 'package:new_portfolio/util/video_player.dart';
import 'package:new_portfolio/util/constants.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackground,
      appBar: AppBar(
        backgroundColor: darkBackground,
        title: Text(
          'Quiz App',
          style: TextStyle(color: lightBlueText),
        ),
        iconTheme: IconThemeData(
          color: lightBlueText,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: SizedBox(
            height: ScreenSizer.deviceHeight(context) * 0.9,
            width: ScreenSizer.deviceWidth(context) * 0.95,
            child: Row(
              children: [
                Container(
                  height: 600,
                  width: ScreenSizer.deviceWidth(context) * 0.55,
                  child: const VideoPlayerScreen(
                      transformScale: 1.2,
                      videoUrl: 'assests/videos/quizApp.mp4'),
                ),
                Container(
                  height: 600,
                  width: ScreenSizer.deviceWidth(context) * 0.4,
                  //color: Colors.yellow,
                  child: Column(
                    children: [
                      const Text(
                        '''This interactive Flutter quiz app challenges users with a variety of questions to test their knowledge. Here's what it offers:

Multiple Choice Format: Presents users with multiple answer choices for each question, promoting active participation and critical thinking.
Real-time Feedback: Users receive immediate feedback on their selections, indicating if their answers are correct or incorrect.
Answer Tracking: The app keeps track of both chosen and incorrect answers, allowing users to analyze their mistakes and improve their understanding.
Final Score Calculation: Upon completing the quiz, users receive a final score summarizing their performance.''',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          height: 2,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            toolButton("Flutter"),
                            SizedBox(
                              width: 10,
                            ),
                            toolButton("Dart"),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
