import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_portfolio/util/animated_text.dart';
import 'package:new_portfolio/util/constants.dart';
import 'package:new_portfolio/util/screen_sizer.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: ScreenSizer.isDesktop(context)
            ? 500
            : ScreenSizer.deviceHeight(context) * 0.87,
        width: ScreenSizer.deviceWidth(context),
        color: darkBackground,
        child: ScreenSizer.isDesktop(context)
            ? Row(
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
                        textHeight: ScreenSizer.deviceHeight(context) * 0.15,
                        fontSize40: 45.sp,
                        textWidth: ScreenSizer.deviceWidth(context) * 0.58,
                      ),
                      Container(
                        height: 100,
                        width: 800,
                        //color: Colors.red,
                        child: Text(description,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                      ),
                      myLocation(16, 24),
                      Container(
                        //color: Colors.yellow,
                        width: 300,
                        height: 45,
                        child: available(16),
                      ),
                      Container(
                          //color: Colors.green,
                          width: ScreenSizer.deviceWidth(context) * 0.3,
                          height: 50,
                          child: Row(
                            children: [
                              Container(
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
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16.sp),
                                    ),
                                    SvgPicture.string(download),
                                  ],
                                ),
                              ),
                              Container(
                                width: ScreenSizer.deviceWidth(context) * 0.15,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SvgPicture.string(xIcon),
                                    SvgPicture.string(github),
                                    SvgPicture.string(linkedIn),
                                    SvgPicture.string(figma)
                                  ],
                                ),
                              ),
                            ],
                          )),

                      /*Container(
                height: 70,
                color: Colors.red,
              ),*/
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 320,
                        width: 280,
                        color: lightBackground,
                      ),
                      Transform.translate(
                        offset: const Offset(-25, -25),
                        child: profileImage(
                          height: 320,
                          width: 280,
                        ),
                      ),
                    ],
                  )
                ],
              )
            : Padding(
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
                  SizedBox(height: 25),
                  AnimatedText(
                    myFontWeight: FontWeight.bold,
                    textHeight: ScreenSizer.deviceHeight(context) * 0.06,
                    fontSize40: 20,
                    textWidth: ScreenSizer.deviceWidth(context) * 0.9,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          //color: Colors.red,
                          width: ScreenSizer.deviceWidth(context) * 0.9,
                          height: ScreenSizer.deviceHeight(context) * 0.18,
                          child: Text(description,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13.8,
                                  height: 1.5,
                                  fontWeight: FontWeight.w500))),
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
                                SvgPicture.string(xIcon, height: 18, width: 20),
                                SvgPicture.string(github,
                                    height: 30, width: 20),
                                SvgPicture.string(linkedIn,
                                    height: 18, width: 20),
                                SvgPicture.string(figma, height: 25, width: 20)
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),
                    ],
                  ),
                ]),
              ));
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
              image: AssetImage('assests/image/profileImage1.jpg'))),
    );
  }
}
