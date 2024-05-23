import 'package:flutter/material.dart';
import 'package:new_portfolio/util/constants.dart';
import 'package:new_portfolio/util/moving_containers.dart';
import 'package:new_portfolio/util/screen_sizer.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 573,
      width: ScreenSizer.deviceWidth(context),
      color: lightBackground,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Text(
              "My Projects",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 500, child: MovingContainers()),
        ],
      ),
    );
  }
}
