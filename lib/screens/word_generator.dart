import 'package:flutter/material.dart';
import 'package:new_portfolio/screens/calculator_app.dart';
import 'package:new_portfolio/util/constants.dart';
import 'package:new_portfolio/util/my_widgets.dart';
import 'package:new_portfolio/util/screen_sizer.dart';
import 'package:new_portfolio/util/video_player.dart';

class WordGenerator extends StatelessWidget {
  const WordGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    String myDescription = '''
This creative Flutter app, built with responsiveness in mind, explores unique word combinations for fun and inspiration. This app makes use of the provider package for state management. Here's what it offers:
Word Merging: Generates novel, potentially cool-sounding names by combining two randomly chosen words from the English words package. Examples include "mainbrake," "graypine.""lightyear"
Interactive Discovery: With a tap, you can generate a new name, keeping things fresh and exciting.
Favorites List: it stores and keeps track of 'favorite' names on a dedicated page for future reference or inspiration.
Responsive Design: The app adapts seamlessly to different screen sizes, ensuring a smooth user experience across various devices.
''';
    return Scaffold(
      backgroundColor: darkBackground,
      appBar: AppBar(
        backgroundColor: darkBackground,
        title: Text(
          'Word Generator',
          style: TextStyle(color: lightBlueText),
        ),
        iconTheme: IconThemeData(
          color: lightBlueText,
        ),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child:
              ScreenSizer.isDesktop(context) || ScreenSizer.isBigTablet(context)
                  ? SizedBox(
                      height: ScreenSizer.deviceHeight(context) * 0.9,
                      width: ScreenSizer.deviceWidth(context) * 0.95,
                      child: Row(
                        children: [
                          Video(
                              height: ScreenSizer.deviceWidth(context) * 0.5,
                              width: 600.0,
                              myUrl: 'assests/videos/wordGenerator.mp4'),
                          videoDescription(
                              ScreenSizer.deviceWidth(context) * 0.45,
                              300.0,
                              myDescription,
                              false,
                              true)
                        ],
                      ))
                  : SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Video(
                              height: ScreenSizer.deviceHeight(context) * 0.8,
                              width: ScreenSizer.deviceWidth(context) * 0.8,
                              myUrl: 'assests/videos/wordGenerator.mp4'),
                          SizedBox(
                            height: 70.0,
                          ),
                          Center(
                            child: videoDescription(
                                /*ScreenSizer.isMobile(context) ||
                                        ScreenSizer.isBigMobile(context)
                                    ? ScreenSizer.deviceWidth(context) * 0.8
                                    : ScreenSizer.deviceWidth(context) * 0.6,*/
                                ScreenSizer.deviceWidth(context) * 0.9,
                                ScreenSizer.deviceHeight(context) * 1.5,
                                myDescription,
                                false,
                                true),
                          ),
                        ],
                      ),
                    )
          /*SizedBox(
            height: ScreenSizer.deviceHeight(context) * 0.9,
            width: ScreenSizer.deviceWidth(context) * 0.95,
            child: Row(
              children: [
                Container(
                  height: 600,
                  width: ScreenSizer.deviceWidth(context) * 0.55, //600
                  child: const VideoPlayerScreen(
                      transformScale: 1.2,
                      videoUrl: 'assests/videos/wordGenerator.mp4'),
                ),
                Container(
                  height: 300,
                  width: ScreenSizer.deviceWidth(context) * 0.4,
                  //color: Colors.yellow,
                  child: Column(
                    children: [
                      Text(
                        "I have built a simple user-friendly calculator app using Flutter specifically for the Android Operating System. This app is designed to offer basic arithmetic operations including addition, subtraction, multiplication, and division. The user interface is intuitive and the app effectively handles user input, providing a seamless and efficient calculation experience.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          height: 2,
                        ),
                      ),
                      Row(
                        children: [
                          toolButton("Flutter"),
                          const SizedBox(
                            width: 10,
                          ),
                          toolButton("Dart"),
                          const SizedBox(
                            width: 10,
                          ),
                          toolButton("Provider"),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )),*/
          ),
    );
  }
}
