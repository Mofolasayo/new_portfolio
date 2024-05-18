import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_portfolio/util/constants.dart';
import 'package:new_portfolio/util/screen_sizer.dart';

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
                        padding: const EdgeInsets.only(left: 8.0, right: 10),
                        child: Text("osikoyamofolasayo@gmail.com",
                            style: TextStyle(
                                color: Colors.white, fontSize: 22.sp)),
                      ),
                      SvgPicture.string(copyIcon, height: 28),
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
                        padding: const EdgeInsets.only(left: 8.0, right: 10),
                        child: Text("+2348104942229",
                            style: TextStyle(
                                color: Colors.white, fontSize: 22.sp)),
                      ),
                      SvgPicture.string(copyIcon, height: 28),
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
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: ScreenSizer.deviceWidth(context) * 0.15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.string(xIcon),
                      SvgPicture.string(github),
                      SvgPicture.string(linkedIn),
                      //SvgPicture.string(figma)
                    ],
                  ),
                )
              ],
            ),
            Container(
              color: lightBackground,
              height: 30,
              width: ScreenSizer.deviceWidth(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Made by Mofolasayo with Flutter ",
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
