import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:structured_pinterest/utils/constants/video_constants.dart';
import 'package:structured_pinterest/view/dummydb.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({super.key});

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  int videoIndex = 0;
  late VideoPlayerController _controller;
  late PageController _pageController;
  Future<void>? _initializeVideoPlayerFuture;
  Future<void> _initializeVideoPlayer() async {
    _controller = VideoPlayerController.asset(Dummydb.videoList[videoIndex]);
    await _controller.initialize();
    _controller.setLooping(true);
    _controller.play();

    setState(() {
      _initializeVideoPlayerFuture = _controller.initialize();
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _initializeVideoPlayer();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Dummydb.videoList.length,
        controller: _pageController,
        onPageChanged: (index) {
          videoIndex = index;
          setState(() {});
          _controller.dispose();
          _initializeVideoPlayer();
        },
        itemBuilder: (context, index) {
          return FutureBuilder(
              future: _initializeVideoPlayer(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: GestureDetector(
                        onTap: () {
                          if (_controller.value.isPlaying) {
                            _controller.pause();
                          } else {
                            _controller.play();
                          }
                        },
                        child: VideoPlayer(_controller)),
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              });
        },
      ),
    );
  }
}
