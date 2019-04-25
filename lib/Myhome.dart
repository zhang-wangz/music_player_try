
import 'package:flutter/material.dart';
import 'package:fluttery/gestures.dart';
import 'package:fluttery_audio/fluttery_audio.dart';
import 'songs.dart';
import 'theme.dart';
import 'buttom_controls_b.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor:Colors.transparent,
        elevation: 0.0, // 不知道干什么用的,类似阴影
        leading: new IconButton(
            icon: new Icon(
              Icons.arrow_back_ios,
            ),
            color: const Color(0xFFDDDDDD),
            onPressed: (){}
        ),

        title: new Text(" "),

        actions: <Widget>[
          new IconButton(
              icon: new Icon(
                Icons.menu,
              ),
              color: const Color(0xFFDDDDDD),
              onPressed: (){}
          ),
        ],
      ),
      body: new Column(
        children: <Widget>[
          //seek bar
          new Expanded(
            child: Center(
              child: Container(
                width: 125,
                height: 125,
                child: RadioSeekerBar(

                  
                  child: ClipOval(
                    clipper: new CircleClipper(),
                    child: new Image.network(
                      demoPlaylist.songs[0].albumArtUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),



          //visualizer
          new Container(
            width: double.infinity,
            height: 125.0,
          ),

          //song title,arist name,and controls
          new BottomControls(),

        ],
      ),
    );
  }
}


class RadioSeekerBar extends StatefulWidget {
  final double trackWidth;
  final Color trackColor;
  final double progressWidth;
  final Color progressColor;
  final double progressPercent;
  final double thumbSize;
  final Color thumbColor;
  final double thumbPosition;
  final Widget child;


  RadioSeekerBar({
    this.trackWidth=3.0,
    this.trackColor = Colors.grey,
    this.progressWidth = 5.0,
    this.progressColor = Colors.black,
    this.progressPercent = 0.0,
    this.thumbSize = 10.0,
    this.thumbColor = Colors.black,
    this.thumbPosition = 0.0,
    this.child,
  });



  @override
  _RadioSeekerBarState createState() => _RadioSeekerBarState();
}

class _RadioSeekerBarState extends State<RadioSeekerBar> {


  @override
  Widget build(BuildContext context) {
    return new CustomPaint(
        painter: new RadioSeekerBarPainter(
          trackColor: widget.thumbColor,
          trackWidth: widget.progressWidth,
          progressWidth: widget.progressWidth,
          progressColor: widget.progressColor,
          progressPercent: widget.progressPercent,
          thumbColor: widget.thumbColor,
          thumbPosition: widget.thumbPosition,
          thumbSize: widget.thumbSize,

        ),
      child: widget.child,
    );
  }
}

class RadioSeekerBarPainter  extends CustomPainter{
  final double trackWidth;
  final Paint trackPaint;
  final double progressWidth;
  final double progressPercent;
  final Paint progressPaint;
  final double thumbSize;
  final Paint thumbPaint;
  final double thumbPosition;


  RadioSeekerBarPainter({
    @required this.trackWidth,
    @required trackColor,
    @required this.progressWidth,
    @required progressColor,
    @required this.progressPercent,
    @required this.thumbSize ,
    @required thumbColor,
    @required this.thumbPosition,
  }) : trackPaint = new Paint()
      ..color = trackColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = trackWidth,
      progressPaint = new Paint()
      ..color = progressColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = progressWidth
      ..strokeCap = StrokeCap.round,
      thumbPaint = new Paint()
      ..color = thumbColor
      ..style = PaintingStyle.fill;


  @override //40:44
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    canvas.drawCircle(
     //   c,
   //     radius,
        trackPaint,
    ),
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}


