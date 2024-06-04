import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_portfolio/util/animated_text.dart';
import 'package:new_portfolio/util/constants.dart';
import 'package:new_portfolio/util/screen_sizer.dart';
import 'package:new_portfolio/util/urlLauncher.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight;
    if (ScreenSizer.isDesktop(context)) {
      screenHeight = 500;
    } else if (ScreenSizer.isBigTablet(context)) {
      screenHeight = 450;
    } else if (ScreenSizer.isSmallTablet(context) ||
        ScreenSizer.isBigMobile(context)) {
      screenHeight = ScreenSizer.deviceHeight(context) * 1.0;
    } else {
      screenHeight = ScreenSizer.deviceHeight(context) * 0.95;
    }
    return Container(
        height: screenHeight,

        /*ScreenSizer.isDesktop(context)
            ? 500
            : ScreenSizer.deviceHeight(context) * 0.87,*/
        width: ScreenSizer.deviceWidth(context),
        color: darkBackground,
        child:
            ScreenSizer.isDesktop(context) || ScreenSizer.isBigTablet(context)
                ? desktopBigTablet()
                : Mobile());
  }
}

class Mobile extends StatelessWidget {
  const Mobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0, left: 25, right: 25),
      child: Column(children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 270,
              width: 270,
              color: lightBackground,
            ),
            const Positioned(
              top: -20.0,
              left: 15.0,
              // right: 10,
              child: profileImage(
                height: 280,
                width: 240,
              ),
            ),
          ],
        ),
        const SizedBox(height: 25),
        Container(
          width: ScreenSizer.deviceWidth(context) * 0.9,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedText(
                myFontWeight: FontWeight.bold,
                textHeight: ScreenSizer.isMobile(context)
                    ? ScreenSizer.deviceHeight(context) * 0.06
                    : ScreenSizer.deviceHeight(context) * 0.1,
                fontSize40: ScreenSizer.isMobile(context)
                    ? 20
                    : ScreenSizer.isBigMobile(context)
                        ? 25
                        : 30,
                textWidth: ScreenSizer.deviceWidth(context) * 0.9,
              ),
              Container(
                  //color: Colors.red,
                  width: ScreenSizer.deviceWidth(context) * 0.9,
                  height: ScreenSizer.isSmallTablet(context) ||
                          ScreenSizer.isBigMobile(context)
                      ? ScreenSizer.deviceHeight(context) * 0.14
                      : ScreenSizer.deviceHeight(context) * 0.2,
                  child: Text(
                    description,
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
                  )),
            ],
          ),
        ),
        Container(
          width: ScreenSizer.deviceWidth(context) * 0.9,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              myLocation(13, 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  available(13.5),
                  Container(
                    //color: Colors.red,
                    width: ScreenSizer.deviceWidth(context) * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            launchURL('https://x.com/moe_thetechgirl/');
                          },
                          child:
                              SvgPicture.string(xIcon, height: 18, width: 20),
                        ),
                        InkWell(
                          onTap: () {
                            launchURL('https://github.com/Mofolasayo/');
                          },
                          child:
                              SvgPicture.string(github, height: 30, width: 20),
                        ),
                        GestureDetector(
                          onTap: () {
                            launchURL(
                                'https://www.linkedin.com/in/mofolasayo-osikoya-b53a832a0/');
                          },
                          child: SvgPicture.string(linkedIn,
                              height: 18, width: 20),
                        ),
                        GestureDetector(
                          onTap: () {
                            launchURL('');
                          },
                          child:
                              SvgPicture.string(figma, height: 25, width: 20),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),
            ],
          ),
        ),
      ]),
    );
  }
}

class desktopBigTablet extends StatelessWidget {
  const desktopBigTablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 90,
              //color: Colors.red,
            ),
            AnimatedText(
              myFontWeight: FontWeight.bold,
              textHeight: ScreenSizer.isDesktop(context)
                  ? ScreenSizer.deviceHeight(context) * 0.15
                  : ScreenSizer.deviceHeight(context) * 0.1,
              fontSize40: ScreenSizer.isDesktop(context) ? 45 : 35,
              textWidth: ScreenSizer.deviceWidth(context) * 0.6,
            ),
            Container(
              height: ScreenSizer.isDesktop(context) ? 100 : 80,
              width: ScreenSizer.isDesktop(context) ? 800 : 600,
              //color: Colors.red,
              child: Text(description,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: ScreenSizer.isDesktop(context) ? 16 : 14,
                      fontWeight: FontWeight.w500)),
            ),
            myLocation(ScreenSizer.isDesktop(context) ? 16 : 14,
                ScreenSizer.isDesktop(context) ? 24 : 20),
            Container(
              // color: Colors.yellow,
              width: 300,
              height: 45,
              child: available(ScreenSizer.isDesktop(context) ? 16 : 14),
            ),
            Container(
                //color: Colors.green,
                width: ScreenSizer.deviceWidth(context) * 0.3,
                height: 50,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        launchURL(
                            'https://1drv.ms/b/c/7f2fe24a911e30d6/EQqZtxuDUypDjs8UkQlKDHgBmtoLdZq07Y6HJlVzsv81xQ?e=narSo1');
                      },
                      child: Container(
                        height: 40,
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: lightBackground),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Resume ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            SvgPicture.string(download),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: ScreenSizer.deviceWidth(context) * 0.15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              launchURL('https://x.com/moe_thetechgirl/');
                            },
                            child: SvgPicture.string(
                              xIcon,
                            ),
                          ),
                          GestureDetector(
                              onTap: () {
                                launchURL('https://github.com/Mofolasayo/');
                              },
                              child: SvgPicture.string(github)),
                          GestureDetector(
                              onTap: () {
                                launchURL(
                                    'https://www.linkedin.com/in/mofolasayo-osikoya-b53a832a0/');
                              },
                              child: SvgPicture.string(linkedIn)),
                          SvgPicture.string(figma)
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
        Stack(
          children: [
            Container(
              height: ScreenSizer.isDesktop(context) ? 320 : 280,
              width: ScreenSizer.isDesktop(context) ? 280 : 240,
              color: lightBackground,
            ),
            Transform.translate(
              offset: const Offset(-25, -25),
              child: profileImage(
                height: ScreenSizer.isDesktop(context) ? 320 : 280,
                width: ScreenSizer.isDesktop(context) ? 280 : 240,
              ),
            ),
          ],
        )
      ],
    );
  }
}

Widget available(double fontSize) {
  return Row(
    children: [
      SvgPicture.string(greenDot),
      Text(" Available for new projects",
          style: TextStyle(
              color: Colors.white,
              fontSize: fontSize,
              fontWeight: FontWeight.w500)),
    ],
  );
}

Widget myLocation(double fontSize, double height) {
  return Container(
    //color: Colors.yellow,
    width: 300,
    height: 40,
    child: Row(
      children: [
        SvgPicture.string(location, height: height),
        Text(" Lagos, Nigeria",
            style: TextStyle(
                color: Colors.white,
                fontSize: fontSize,
                fontWeight: FontWeight.w500)),
      ],
    ),
  );
}

class profileImage extends StatelessWidget {
  const profileImage({
    super.key,
    required this.height,
    required this.width,
  });
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      height: height,
      width: width,
      //color: Colors.red,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assests/image/profileImage2.png'))),
    );
  }
}
