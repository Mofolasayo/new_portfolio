import 'package:flutter/material.dart';
import 'package:new_portfolio/util/constants.dart';
import 'package:new_portfolio/util/moving_containers.dart';
import 'package:new_portfolio/util/screen_sizer.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        width: ScreenSizer.deviceWidth(context),
        color: lightBackground,
        child: MovingContainers());
  }
}
