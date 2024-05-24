import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_portfolio/util/constants.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
    required this.fontSize40,
    required this.textWidth,
    required this.textHeight,
    required this.myFontWeight,
  });

  final double fontSize40;
  final double textWidth;
  final double textHeight;
  final FontWeight myFontWeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      //alignment: Alignment.center,
      height: textHeight, //140
      width: textWidth, //850
      //color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello, I am",
            style: GoogleFonts.inter(
                textStyle: TextStyle(
                    fontSize: fontSize40,
                    fontWeight: myFontWeight,
                    color: Colors.white)),
          ),
          AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              TyperAnimatedText(
                ' Mofolasayo Osikoya',
                textStyle: GoogleFonts.inter(
                    textStyle: TextStyle(
                        fontSize: fontSize40,
                        color: const Color.fromARGB(255, 129, 156, 245),
                        fontWeight: myFontWeight)),
              ),
              //Color.fromARGB(255, 157, 178, 247)
              TyperAnimatedText(
                ' a flutter developer',
                textStyle: GoogleFonts.inter(
                    textStyle: TextStyle(
                        color: const Color.fromARGB(255, 129, 156, 245),
                        fontSize: fontSize40,
                        fontWeight: myFontWeight)),
              ),
            ],
            totalRepeatCount: 4,
            pause: const Duration(milliseconds: 1000),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),
        ],
      ),
    );
  }
}
