import 'package:flutter/material.dart';
import 'package:new_portfolio/screens/calculator_app.dart';
import 'package:new_portfolio/util/constants.dart';
import 'package:new_portfolio/util/screen_sizer.dart';
import 'package:new_portfolio/util/video_player.dart';
import 'package:url_launcher/url_launcher.dart';

//final Uri _url = Uri.parse('https://flutter.dev');
class Sizzle extends StatelessWidget {
  const Sizzle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackground,
      appBar: AppBar(
        backgroundColor: darkBackground,
        title: Text(
          'TikTok App',
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
            child: Row(
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
            )),
      ),
    );
  }
}

void navigateToSocialMedia(String url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
