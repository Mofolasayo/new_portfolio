import 'package:flutter/material.dart';

class MovingContainers extends StatefulWidget {
  @override
  _MovingContainersState createState() => _MovingContainersState();
}

class _MovingContainersState extends State<MovingContainers>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  final List<String> images = [
    'assests/image/calculatorApp.jpg'
        'assests/image/portfolio.jpg'
        'assests/image/Sizzle.jpg'
        'assests/image/quizApp.jpg'
        'assests/image/tikTok.jpg'
        'assests/image/wordGenerator.jpg'
  ];

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
                            image: AssetImage(images[index % images.length]),
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
