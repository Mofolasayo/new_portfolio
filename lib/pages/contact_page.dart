import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_portfolio/util/constants.dart';
import 'package:new_portfolio/util/screen_sizer.dart';
import 'package:new_portfolio/util/urlLauncher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: ScreenSizer.deviceWidth(context),
        color: darkBackground,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0, bottom: 10),
                  child: Text('Want to connect with me?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  //color: Colors.blue,
                  width: 500,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.string(mailIcon, height: 25),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 0),
                        child: Text("osikoyamofolasayo@gmail.com",
                            style: TextStyle(
                                color: Colors.white, fontSize: 22.sp)),
                      ),
                      //SvgPicture.string(copyIcon, height: 28),
                      IconButton(
                        icon: SvgPicture.string(copyIcon, height: 28),
                        onPressed: () {
                          final email = 'osikoyamofolasayo@gmail.com';
                          Clipboard.setData(ClipboardData(text: email));
                          //Future.delayed(Duration(seconds: 2), () => text = null);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                backgroundColor: darkBackground,
                                content:
                                    const Center(child: Text('Email copied!'))),
                          );
                        },
                      )
                    ],
                  ),
                ),
                Container(
                  //color: Colors.green,
                  width: 500,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.string(phoneIcon, height: 25),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 0),
                        child: Text("+2348104942229",
                            style: TextStyle(
                                color: Colors.white, fontSize: 22.sp)),
                      ),
                      IconButton(
                        icon: SvgPicture.string(copyIcon, height: 28),
                        onPressed: () {
                          final phoneNumber = '+2348104942229';
                          Clipboard.setData(ClipboardData(text: phoneNumber));
                          //Future.delayed(Duration(seconds: 2), () => text = null);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                backgroundColor: darkBackground,
                                content: const Center(
                                    child: Text('Phone number copied!'))),
                          );
                        },
                      )
                      //SvgPicture.string(copyIcon, height: 28),
                    ],
                  ),
                ),
                /*SizedBox(
                  height: 30,
                ),*/
                /*Text(
                  "You can also find me on these platforms!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w300),
                ),*/
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: ScreenSizer.isMobile(context)
                      ? ScreenSizer.deviceWidth(context) * 0.25
                      : ScreenSizer.deviceWidth(context) * 0.15,
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
                      //SvgPicture.string(figma)
                    ],
                  ),
                )
              ],
            ),
            Container(
              color: darkBackground,
              height: 30,
              width: ScreenSizer.deviceWidth(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Made by Mofolasayo with Flutter",
                      style: TextStyle(color: lightBlueText, fontSize: 18.sp)),
                  SvgPicture.string(
                    blueHeart,
                    color: Colors.blue,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
