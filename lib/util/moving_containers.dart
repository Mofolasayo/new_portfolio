import 'package:flutter/material.dart';
import 'package:new_portfolio/screens/calculator_app.dart';
import 'package:new_portfolio/screens/portfolio.dart';
import 'package:new_portfolio/screens/quiz_app.dart';
import 'package:new_portfolio/screens/sizzle.dart';
import 'package:new_portfolio/screens/tik_tok.dart';
import 'package:new_portfolio/screens/word_generator.dart';

class MovingContainers extends StatefulWidget {
  @override
  _MovingContainersState createState() => _MovingContainersState();
}

class _MovingContainersState extends State<MovingContainers>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 20), // Slower pace
      vsync: this,
    )..repeat();

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> imagesWithTitles = [
      {'path': 'assests/image/calculatorApp.jpg', 'title': 'Calculator App'},
      {'path': 'assests/image/portfolio.jpg', 'title': 'Portfolio'},
      {'path': 'assests/image/Sizzle.jpg', 'title': 'Sizzle'},
      {'path': 'assests/image/quizApp.jpg', 'title': 'Quiz App'},
      {'path': 'assests/image/tikTok.jpg', 'title': 'TikTok'},
      {'path': 'assests/image/wordGenerator.jpg', 'title': 'Word Generator'},
    ];
    final List<Widget> pages = [
      const CalculatorApp(),
      const Portfolio(),
      const Sizzle(),
      const QuizApp(),
      const TikTok(),
      const WordGenerator(),
    ];
    final double screenWidth = MediaQuery.of(context).size.width;
    final double containerWidth = 300;
    final double totalContainerWidth = 6 * containerWidth + 40;
    final double containerHeight = 380;
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Center(
          child: Stack(
            children: List.generate(imagesWithTitles.length, (index) {
              final double startX = screenWidth + (containerWidth + 20) * index;
              final double endX =
                  -containerWidth * (6 - index) - 20 * (4 - index);
              final double dx = startX - (startX - endX) * _animation.value;
              //print('Image path: ${imagesWithTitles[index]['path']}');
              return Positioned(
                left: dx,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => pages[index]));
                    },
                    child: SizedBox(
                      height: containerHeight + 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: containerWidth,
                            height: containerHeight,
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            //color: Colors.blue[(index + 1) * 100],
                            decoration: BoxDecoration(
                                // color: Colors.blue,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                    image: AssetImage(imagesWithTitles[index]
                                        ['path'] as String),
                                    fit: BoxFit.fitWidth)),
                          ),
                          Text(
                            imagesWithTitles[index]['title']!,
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
/*Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double containerWidth = 300;
    final double totalContainerWidth = 6 * containerWidth + 40;
    final double containerHeight = 350;
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Center(
          child: Stack(
            children: List.generate(6, (index) {
              final double startX = screenWidth + (containerWidth + 20) * index;
              final double endX =
                  -containerWidth * (6 - index) - 20 * (4 - index);
              final double dx = startX - (startX - endX) * _animation.value;

              return Positioned(
                left: dx,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    width: containerWidth,
                    height: containerHeight,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    //color: Colors.blue[(index + 1) * 100],
                    decoration: BoxDecoration(
                        // color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                            image:
                                AssetImage('assests/image/calculatorApp.jpg'),
                            fit: BoxFit.fitWidth)),
                    /*child: Image.asset(
                      images[index % images.length],
                      fit: BoxFit.cover,
                    ),*/ // Different colors for each container
                    /*child: Center(
                      child: containerContents[index % containerContents.length],
                    ),*/
                  ),
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
*/
