// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class VideoPlayer extends StatefulWidget {
//   const VideoPlayer({super.key, required this.videoUrl});
//   final String videoUrl;
//   @override
//   State<VideoPlayer> createState() => _VideoPlayerState();
// }

// class _VideoPlayerState extends State<VideoPlayer> {
//   late VideoPlayerController _videoPlayerController;
//   late Future<void> _initializeVideoPlayerFuture;
//   @override
//   void initState() {
//     _videoPlayerController = VideoPlayerController.networkUrl(widget.videoUrl);
//     _initializeVideoPlayerFuture = _videoPlayerController.initialize().then(
//       (value) {
//         _videoPlayerController.play();
//         _videoPlayerController.setLooping(true);
//         setState(() {});
//       },
//     );
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _videoPlayerController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({super.key});

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
