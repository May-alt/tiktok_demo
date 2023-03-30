import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerBody extends StatefulWidget {
 final String videoUrl;


   VideoPlayerBody(
       {
         Key? key,
        required this.videoUrl
       }) : super(key: key);

  @override
  State<VideoPlayerBody> createState() => _VideoPlayerBodyState(videoUrl);
}

class _VideoPlayerBodyState extends State<VideoPlayerBody> {

   _VideoPlayerBodyState(this.videoUrl);

  late VideoPlayerController _controller;
  final String videoUrl;

  @override
  void initState() {
   // _controller = VideoPlayerController.asset(videoUrl)..initialize().then((_) {
     _controller = VideoPlayerController.asset(videoUrl)..initialize().then((_) {
      setState(() {
         _controller.play();
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayer(_controller);
    // return _controller.value.isInitialized
    //     ?
    // VideoPlayer(_controller)
    //     : Center(child:CircularProgressIndicator(color: Colors.red,));
  }
}
