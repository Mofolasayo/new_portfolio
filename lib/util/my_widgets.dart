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
}
