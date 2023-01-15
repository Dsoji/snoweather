import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class SunPage extends StatefulWidget {
  const SunPage({super.key});

  @override
  State<SunPage> createState() => _SunPageState();
}

class _SunPageState extends State<SunPage> {
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset("assets/rainy.mp4")
      ..initialize().then((_) {
        setState(() {});
      });
    controller.setLooping(true);
    controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      VideoPlayer(controller),
    ]));
  }
}
