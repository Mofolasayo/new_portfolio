import 'package:flutter/material.dart';
import 'package:new_portfolio/util/constants.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen(
      {super.key, required this.videoUrl, required this.transformScale});
  final String videoUrl;
  final double transformScale;
  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoUrl)
      ..initialize().then((_) {
        setState(() {});
      });
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      backgroundColor: lightBackground,
      body: _controller.value.isInitialized
          ? Stack(
              alignment: Alignment.center,
              children: [
                //Transform.scale(scale: 1.5, child:  wrapping the VideoPlayer(_controller)
                Container(
                  //color: Colors.red,
                  width: 600,
                  height: 600,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: SizedBox(
                      width: 500,
                      height: 500,
                      child: Transform.scale(
                        scale: widget.transformScale, //1.6,
                        child: AspectRatio(
                            aspectRatio: _controller.value.aspectRatio,
                            child: VideoPlayer(_controller)),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    _isPlaying ? Icons.pause : Icons.play_arrow,
                  ),
                  onPressed: () {
                    setState(() {
                      if (_isPlaying) {
                        _controller.pause();
                      } else {
                        _controller.play();
                      }
                      _isPlaying = !_isPlaying;
                    });
                  },
                ),
              ],
            )
          : CircularProgressIndicator(),
    );
  }
}
