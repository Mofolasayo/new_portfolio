import 'package:flutter/material.dart';
import 'package:new_portfolio/util/constants.dart';
import 'package:new_portfolio/util/my_widgets.dart';
import 'package:new_portfolio/util/screen_sizer.dart';

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackground,
      appBar: AppBar(
        backgroundColor: darkBackground,
        title: Text(
          'Calculator App',
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
                          Video(ScreenSizer.deviceWidth(context) * 0.55, 600,
                              'assests/videos/calculatorApp.mp4'),
                          videoDescription(
                              ScreenSizer.deviceWidth(context) * 0.4,
                              300,
                              "I have built a simple user-friendly calculator app using Flutter specifically for the Android Operating System. This app is designed to offer basic arithmetic operations including addition, subtraction, multiplication, and division. The user interface is intuitive and the app effectively handles user input, providing a seamless and efficient calculation experience.",
                              false,
                              false)
                        ],
                      ))
                  : SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Video(
                              ScreenSizer.isMobile(context) ||
                                      ScreenSizer.isBigMobile(context)
                                  ? ScreenSizer.deviceWidth(context) * 0.8
                                  : ScreenSizer.deviceWidth(context) * 0.7,
                              500,
                              'assests/videos/calculatorApp.mp4'),
                          SizedBox(
                            height: 70,
                          ),
                          Center(
                            child: videoDescription(
                                /*ScreenSizer.isMobile(context) ||
                                        ScreenSizer.isBigMobile(context)
                                    ? ScreenSizer.deviceWidth(context) * 0.8
                                    : ScreenSizer.deviceWidth(context) * 0.6,*/
                                ScreenSizer.deviceWidth(context) * 0.9,
                                350,
                                "I have built a simple user-friendly calculator app using Flutter specifically for the Android Operating System. This app is designed to offer basic arithmetic operations including addition, subtraction, multiplication, and division. The user interface is intuitive and the app effectively handles user input, providing a seamless and efficient calculation experience.",
                                false,
                                false),
                          ),
                        ],
                      ),
                    )),
    );
  }
}

/*Widget Video(width, height, myUrl) {
  return Container(
    height: height,
    width: width,
    child: VideoPlayerScreen(transformScale: 1.2, videoUrl: myUrl),
  );
}

Widget videoDescription(width, height) {
  return Container(
    height: height,
    width: width,
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
  );
}

Widget toolButton(String text) {
  return Container(
    alignment: Alignment.center,
    height: 28,
    width: 78,
    decoration: BoxDecoration(
      color: darkGrey,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Text(
      text,
      style: TextStyle(color: Colors.white),
    ),
  );
}*/
