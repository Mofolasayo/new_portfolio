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
            Text("The Skills, Tools, and Technologies I use are: ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Column(
                children: [
                  SvgPicture.string(flutterLogo),
                  Text("Flutter", style: TextStyle(color: Colors.white))
                ],
              ),
              Column(
                children: [
                  SvgPicture.string(dartLogo),
                  Text("Dart", style: TextStyle(color: Colors.white))
                ],
              ),
              Column(
                children: [
                  SvgPicture.string(gitLogo),
                  Text("Git", style: TextStyle(color: Colors.white))
                ],
              ),
              Column(
                children: [
                  SvgPicture.string(
                    gitHubLogo,
                    color: Colors.white,
                  ),
                  Text("GitHub", style: TextStyle(color: Colors.white))
                ],
              ),
              Column(
                children: [
                  SvgPicture.string(figmaLogo),
                  Text("Figma", style: TextStyle(color: Colors.white))
                ],
              ),
            ]),
          ],
        ));
  }
}
