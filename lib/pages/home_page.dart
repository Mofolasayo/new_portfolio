import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_portfolio/pages/about_page.dart';
import 'package:new_portfolio/pages/contact_page.dart';
import 'package:new_portfolio/pages/projects_page.dart';
import 'package:new_portfolio/pages/skills_page.dart';
import 'package:new_portfolio/pages/welcome_page.dart';
import 'package:new_portfolio/util/constants.dart';
import 'package:new_portfolio/util/screen_sizer.dart';
import 'package:new_portfolio/util/urlLauncher.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> pages = [
    const WelcomePage(),
    const AboutPage(),
    const SkillsPage(),
    const ProjectPage(),
    const ContactPage(),
  ];
  final pageController = PageController(initialPage: 0);
  int selectedIndex = 0;

  final itemScrollController = ItemScrollController();
  final itemPositionsListener = ItemPositionsListener.create();

  @override
  void dispose() {
    pageController.dispose();

    super.dispose();
  }

  InkWell menuItem({
    required int toPage,
    required String title,
    required bool isSelected,
    required Null Function() onTap,
  }) {
    return InkWell(
      onTap: () => onTap(),
      child: Text(
        title,
        style: GoogleFonts.inter(
          textStyle: TextStyle(
            fontSize: toPage == selectedIndex
                ? ScreenSizer.isMobile(context)
                    ? 20.sp * 1.2
                    : 16 * 1.2
                : ScreenSizer.isSmallTablet(context)
                    ? 16
                    : 18,
            fontWeight:
                toPage == selectedIndex ? FontWeight.bold : FontWeight.w400,
            color: isSelected ? lightBlueText : Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const itemCount = 5;

    var deviceWidth = MediaQuery.of(context).size.width;
    print('device WIdth is $deviceWidth');
    return Scaffold(
        backgroundColor: darkBackground,
        appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: (ScreenSizer.isDesktop(context))
                  ? SvgPicture.string(flutter)
                  : Builder(
                      builder: (context) => IconButton(
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        icon: const Icon(Icons.menu),
                      ),
                    ),
            ),
            leadingWidth: (ScreenSizer.isDesktop(context)) ? 40 : 50,
            iconTheme: IconThemeData(color: lightBlueText),
            backgroundColor: darkBackground,
            title: ScreenSizer.isDesktop(context)
                ? LayoutBuilder(builder: (context, constraints) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          //color: Colors.red,
                          width: deviceWidth * 0.35,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              for (int i = 0; i < itemCount; i++)
                                menuItem(
                                    toPage: i,
                                    title: [
                                      'Home',
                                      'About',
                                      'Skills',
                                      'Projects',
                                      'Contact'
                                    ][i],
                                    isSelected: selectedIndex == i,
                                    onTap: () {
                                      setState(() {
                                        selectedIndex =
                                            i; // Update the selected index
                                      });
                                      itemScrollController.scrollTo(
                                          index: i,
                                          duration: const Duration(seconds: 2),
                                          curve: Curves.easeInOut);
                                    }),
                            ],
                          ),
                        )
                      ],
                    );
                  })
                : GestureDetector(
                    //not working properly
                    onTap: () {
                      launchURL(
                          'https://1drv.ms/b/c/7f2fe24a911e30d6/EQqZtxuDUypDjs8UkQlKDHgBmtoLdZq07Y6HJlVzsv81xQ?e=narSo1');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Resume",
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    fontSize: 16, color: lightBlueText))),
                        SizedBox(
                          width: 10,
                        ),
                        SvgPicture.string(
                          download,
                          color: lightBlueText,
                        ),
                      ],
                    ),
                  )),
        drawer: ScreenSizer.isDesktop(context)
            ? null
            : Drawer(
                backgroundColor: lightBackground,
                width: ScreenSizer.isMobile(context)
                    ? deviceWidth * 0.5
                    : deviceWidth * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //padding: EdgeInsets.zero,
                  children: [
                    for (int i = 0; i < itemCount; i++)
                      menuItem(
                          toPage: i,
                          title: [
                            'Home',
                            'About',
                            'Skills',
                            'Projects',
                            'Contact'
                          ][i],
                          isSelected: selectedIndex == i,
                          onTap: () {
                            setState(() {
                              selectedIndex = i; // Update the selected index
                            });
                            itemScrollController.scrollTo(
                                index: i,
                                duration: const Duration(seconds: 2),
                                curve: Curves.easeInOut);
                            Navigator.pop(context);
                          }),
                    Container(
                      // color: Colors.yellow,
                      width: deviceWidth * 0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                              onTap: () {
                                launchURL('https://x.com/moe_thetechgirl/');
                              },
                              child: SvgPicture.string(xIcon)),
                          InkWell(
                              onTap: () {
                                launchURL('https://github.com/Mofolasayo/');
                              },
                              child: SvgPicture.string(github)),
                          InkWell(
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
                ),
              ),
        body: ScrollablePositionedList.builder(
          initialScrollIndex: 0,
          shrinkWrap: true,
          itemPositionsListener: itemPositionsListener,
          itemScrollController: itemScrollController,
          itemCount: pages.length,
          itemBuilder: (context, index) {
            final page = pages[index];

            return page;
          },
        ));
  }
}
