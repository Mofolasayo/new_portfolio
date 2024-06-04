import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:new_portfolio/util/constants.dart';
import 'package:new_portfolio/util/screen_sizer.dart';
import 'package:new_portfolio/util/video_player.dart';

/*Widget iVideo(width, height, myUrl) {
  //return myVideo();
}*/

class Video extends StatelessWidget {
  Video({
    super.key,
    required this.height,
    required this.width,
    required this.myUrl,
  });
  final double height;
  final double width;
  final String myUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkBackground,
      height: height,
      width: width,
      child: VideoPlayerScreen(
          transformScale:
              ScreenSizer.isDesktop(context) || ScreenSizer.isBigTablet(context)
                  ? 1.2
                  : 1.2,
          videoUrl: myUrl),
    );
  }
}

Widget videoDescription(width, height, text, bool showApi, bool showProvider) {
  return Container(
    height: height,
    width: width,
    //color: Colors.yellow,
    child: Column(
      children: [
        AnimatedTextKit(animatedTexts: [
          TyperAnimatedText(
            text,
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              height: 2.0,
            ),
          )
        ]),
        /*Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            height: 2,
          ),
        ),*/
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              toolButton("Flutter"),
              SizedBox(
                width: 10.0,
              ),
              toolButton("Dart"),
              SizedBox(
                width: 10.0,
              ),
              if (showApi == true) toolButton("Rest Api"),
              const SizedBox(
                width: 10.0,
              ),
              if (showProvider == true) toolButton("Provider"),
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
    height: 28.0,
    width: 78.0,
    decoration: BoxDecoration(
      color: lighterBackground,
      borderRadius: BorderRadius.circular(12.0),
    ),
    child: Text(
      text,
      style: TextStyle(color: Colors.white),
    ),
  );
}
