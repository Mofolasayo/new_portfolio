import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_portfolio/pages/home_page.dart';
import 'package:new_portfolio/util/screen_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Size designSize;
    if (ScreenSizer.isDesktop(context)) {
      designSize = const Size(1440, 6522);
    } else if (ScreenSizer.isSmallTablet(context)) {
      designSize = const Size(750, 8500);
    } else {
      designSize = const Size(500, 9382);
    }
    return ScreenUtilInit(
      designSize: designSize,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'My Portfolio',
          theme: ThemeData(
            primarySwatch: Colors.lightBlue,
            //textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: const HomePage(),
    );
  }
}
/* return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );*/