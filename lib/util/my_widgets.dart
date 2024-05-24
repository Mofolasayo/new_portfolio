import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:new_portfolio/util/constants.dart';
import 'package:new_portfolio/util/video_player.dart';

Widget Video(width, height, myUrl) {
  return Container(
    height: height,
    width: width,
    child: VideoPlayerScreen(transformScale: 1.2, videoUrl: myUrl),
  );
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
              fontSize: 16,
              height: 2,
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
                width: 10,
              ),
              toolButton("Dart"),
              SizedBox(
                width: 10,
              ),
              if (showApi == true) toolButton("Rest Api"),
              const SizedBox(
                width: 10,
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
}
