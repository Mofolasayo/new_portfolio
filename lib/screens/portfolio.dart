import 'package:flutter/material.dart';
import 'package:new_portfolio/util/constants.dart';
import 'package:new_portfolio/util/my_widgets.dart';
import 'package:new_portfolio/util/screen_sizer.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    String projectDescription = '''
This personal portfolio, built with Flutter, showcases my skills and experience in a dynamic and engaging way. Here's a glimpse:
Visually Appealing: A well-designed interface highlights my work and achievements.
Interactive Features: Smooth animations and transitions enhance the user experience.
Flutter Expertise: Demonstrates my proficiency in building web-platform applications with Flutter.
''';
    return Scaffold(
      backgroundColor: darkBackground,
      appBar: AppBar(
        backgroundColor: darkBackground,
        title: Text(
          'Portfolio',
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
                              height: ScreenSizer.deviceWidth(context) * 0.55,
                              width: 600,
                              myUrl: 'assests/videos/portfolio.mp4'),
                          videoDescription(
                              ScreenSizer.deviceWidth(context) * 0.4,
                              300.0,
                              projectDescription,
                              false,
                              false)
                        ],
                      ))
                  : SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Video(
                              height: ScreenSizer.deviceHeight(context) * 0.8,
                              /*height: ScreenSizer.isMobile(context) ||
                                      ScreenSizer.isBigMobile(context)
                                  ? ScreenSizer.deviceWidth(context) * 0.7
                                  : ScreenSizer.deviceWidth(context) * 0.7,*/
                              width: ScreenSizer.deviceWidth(context) * 0.8,
                              myUrl: 'assests/videos/portfolio.mp4'),
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
                                500.0,
                                projectDescription,
                                false,
                                false),
                          ),
                        ],
                      ),
                    )),
    );
  }
}
