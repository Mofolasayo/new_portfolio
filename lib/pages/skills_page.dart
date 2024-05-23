import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_portfolio/util/constants.dart';
import 'package:new_portfolio/util/screen_sizer.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: ScreenSizer.deviceWidth(context),
        color: darkBackground,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("The Language, Tools, and Frameworks I use are: ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Column(
                children: [
                  SvgPicture.string(flutterLogo,
                      height: ScreenSizer.isMobile(context) ? 38 : 46),
                  Text("Flutter", style: TextStyle(color: Colors.white))
                ],
              ),
              Column(
                children: [
                  SvgPicture.string(dartLogo,
                      height: ScreenSizer.isMobile(context) ? 38 : 46),
                  Text("Dart", style: TextStyle(color: Colors.white))
                ],
              ),
              Column(
                children: [
                  SvgPicture.string(gitLogo,
                      height: ScreenSizer.isMobile(context) ? 38 : 46),
                  Text("Git", style: TextStyle(color: Colors.white))
                ],
              ),
              Column(
                children: [
                  SvgPicture.string(gitHubLogo,
                      color: Colors.white,
                      height: ScreenSizer.isMobile(context) ? 38 : 46),
                  Text("GitHub", style: TextStyle(color: Colors.white, fontSize: ScreenSizer.isMobile(context) ? 13 : 16)), 
                ],
              ),
              Column(
                children: [
                  SvgPicture.string(figmaLogo,
                      height: ScreenSizer.isMobile(context) ? 38 : 46),
                  Text("Figma", style: TextStyle(color: Colors.white))
                ],
              ),
            ]),
          ],
        ));
  }
}
