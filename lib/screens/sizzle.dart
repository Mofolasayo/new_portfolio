import 'package:flutter/material.dart';
import 'package:new_portfolio/screens/calculator_app.dart';
import 'package:new_portfolio/util/constants.dart';
import 'package:new_portfolio/util/my_widgets.dart';
import 'package:new_portfolio/util/screen_sizer.dart';
import 'package:new_portfolio/util/video_player.dart';
import 'package:url_launcher/url_launcher.dart';

//final Uri _url = Uri.parse('https://flutter.dev');
class Sizzle extends StatelessWidget {
  const Sizzle({super.key});

  @override
  Widget build(BuildContext context) {
    String projectDescription = '''
Sizzle is a  recipe app that showcases a thorough understanding of using various Flutter Widgets within Flutter such as Forms, Lists, Grid Views, Scaffolds, Buttons, Text, Images, Columns, Rows and a whole lot more. It serves as a practical example of applying core Flutter concepts such as Widgets, State Management, Authentication, Network Requests, Responsive Design, Navigation and much more.
The app leverages:
API Integration: Connects to a recipe API to fetch a vast collection of recipes with ingredients, instructions, alongside images.
User Authentication: Implements secure login and registration functionalities.
Flutter Development: Built with Flutter for a smooth and native user experience across Android devices. The app utilizes Flutter's rich widgets and functionalities for a visually appealing and interactive interface which allows users to Browse a wide variety of recipes based on categories and view detailed recipe information, including ingredients, instructions, and images of their selected dish.''';
    return Scaffold(
        backgroundColor: darkBackground,
        appBar: AppBar(
          backgroundColor: darkBackground,
          title: Text(
            'Sizzle',
            style: TextStyle(color: lightBlueText),
          ),
          iconTheme: IconThemeData(
            color: lightBlueText,
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: SizedBox(
              height: ScreenSizer.deviceHeight(context) * 0.9,
              width: ScreenSizer.deviceWidth(context) * 0.95,
              child: ScreenSizer.isDesktop(context) ||
                      ScreenSizer.isBigTablet(context)
                  ? SizedBox(
                      height: ScreenSizer.deviceHeight(context) * 0.9,
                      width: ScreenSizer.deviceWidth(context) * 0.95,
                      child: Row(
                        children: [
                          Video(
                              height: ScreenSizer.deviceWidth(context) * 0.5,
                              width: 600.0,
                              myUrl: 'assests/videos/Sizzle.mp4'),
                          videoDescription(
                              ScreenSizer.deviceWidth(context) * 0.45,
                              600.0,
                              projectDescription,
                              true,
                              false)
                        ],
                      ))
                  : SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Video(
                              height: ScreenSizer.deviceHeight(context) * 0.8,
                              width: ScreenSizer.deviceWidth(context) * 0.8,
                              myUrl: 'assests/videos/Sizzle.mp4'),
                          SizedBox(
                            height: 60.0,
                          ),
                          Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: videoDescription(
                                  ScreenSizer.deviceWidth(context) * 0.8,
                                  ScreenSizer.deviceHeight(context) * 1.5,
                                  projectDescription,
                                  true,
                                  false),
                            ),
                          ),
                        ],
                      ),
                    )
              /*Row(
              children: [
                Container(
                  height: 600,
                  width: ScreenSizer.deviceWidth(context) * 0.55, //600
                  child: const VideoPlayerScreen(
                      transformScale: 1.2,
                      videoUrl: 'assests/videos/Sizzle.mp4'),
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
                            SizedBox(
                              width: 10,
                            ),
                            toolButton("Rest Api"),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )),*/
              ),
        ));
  }
}

void navigateToSocialMedia(String url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
