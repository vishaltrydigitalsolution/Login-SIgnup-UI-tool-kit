import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
class GridPages extends StatelessWidget {
   GridPages({super.key});
late VideoPlayerController _controller;
  @override

  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(title: Text(''),
        backgroundColor: Colors.white,

      ),
      body: GridView.count(crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: EdgeInsets.all(16),
        children:[
          Container(
              color: Colors.red, child: Center(child: Text('Item 1'))),
        ],

      )
    );
  }
}
