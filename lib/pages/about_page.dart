import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_portfolio/util/constants.dart';
import 'package:new_portfolio/util/screen_sizer.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> with TickerProviderStateMixin {
  bool _visible = true;
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _visible = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSizer.isDesktop(context)
          ? ScreenSizer.deviceHeight(context) * 0.7
          : ScreenSizer.isMobile(context)
              ? ScreenSizer.deviceHeight(context) * 0.9
              : ScreenSizer.deviceHeight(context) * 0.85,
      /*ScreenSizer.isMobile(context)
          ? 500
          : ScreenSizer.isTablet(context)
              ? 400
              : 350,*/
      width: ScreenSizer.deviceWidth(context),
      color: lightBackground,
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5.0),
              child: Text("Still curious? Here's more about me...",
                  style: TextStyle(
                      fontSize: ScreenSizer.isDesktop(context) ? 30 : 20,
                      fontWeight: ScreenSizer.isMobile(context)
                          ? FontWeight.bold
                          : FontWeight.w600,
                      color: Colors.white)),
            ),
            AnimatedOpacity(
              opacity: _visible ? 0.0 : 1.0,
              duration: const Duration(seconds: 10),
              child: Container(
                // color: Colors.red,
                /*height: ScreenSizer.isMobile(context)
                    ? 400
                    : ScreenSizer.isTablet(context)
                        ? 300
                        : 250,*/
                height: ScreenSizer.isDesktop(context)
                    ? ScreenSizer.deviceHeight(context) * 0.5
                    : ScreenSizer.isMobile(context)
                        ? ScreenSizer.deviceHeight(context) * 0.7
                        : ScreenSizer.isSmallTablet(context) ||
                                ScreenSizer.isBigMobile(context)
                            ? ScreenSizer.deviceHeight(context) * 0.6
                            : ScreenSizer.deviceHeight(context) * 0.4,
                width: ScreenSizer.deviceWidth(context) * 0.89,
                child: Text(
                  '''As a skilled Flutter developer, I possess a strong foundation in Dart programming and mobile development principles. My passion for coding and eagerness to learn make me an ideal candidate for any fast-paced development environment. I take pride in creating beautiful, user-friendly mobile applications that offer an exceptional user experience.\n\nCurrently, I am pursuing my Bachelor's degree in Computer Science at the University of the People, where I am constantly expanding my knowledge and honing my skills. My expertise lies in creating interactive, animated web pages and mobile applications that are not only visually appealing but also easy to navigate.\n\nMy goal as a Flutter developer is to provide innovative solutions to real-world problems, using my skills to create mobile applications that offer seamless performance and functionality. I am confident that my experience and expertise make me a valuable addition to any development team, and I look forward to continuing to grow in this exciting field.''',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: ScreenSizer.isDesktop(context)
                          ? 16
                          : ScreenSizer.isMobile(context) ||
                                  ScreenSizer.isBigMobile(context)
                              ? 13
                              : ScreenSizer.isBigMobile(context)
                                  ? 14
                                  : 15),
                ),
              ),
            ),
            //SizedBox(height: 40),c
          ],
        ),
      ),
    );
  }
}
