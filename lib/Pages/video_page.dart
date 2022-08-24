import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

import '../models/movie.dart';

class Videopage extends StatefulWidget {
  final Movie movie;
  const Videopage(this.movie, {Key? key}) : super(key: key);

  @override
  State<Videopage> createState() => _VideopageState();
}

class _VideopageState extends State<Videopage> {
  late final VideoPlayerController _controller =
      VideoPlayerController.network(widget.movie.videoUrl!);

  late final ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.landscapeRight,
    //   DeviceOrientation.landscapeLeft,
    // ]);
    _controller.initialize().then((_) {
      // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
      setState(() {});
    });

    _chewieController = ChewieController(
      videoPlayerController: _controller,
      aspectRatio: 8 / 8,
      autoInitialize: true,
      autoPlay: true,
      looping: false,
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: const TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.landscapeRight,
    //   DeviceOrientation.landscapeLeft,
    //   DeviceOrientation.portraitUp,
    //   DeviceOrientation.portraitDown,
    // ]);
    _controller.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: _controller.value.isInitialized
              ? Chewie(controller: _chewieController)
              : Container(),
        ),
      ),
    );
  }
}
