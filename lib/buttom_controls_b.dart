import 'dart:math';

import 'package:flutter/material.dart';
import 'package:music_app/theme.dart';

class BottomControls extends StatelessWidget {
  const BottomControls({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Material( //???

        color: accentColor,
        child: Padding(
          padding: EdgeInsets.only(top:50,bottom: 20),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              new RichText(
                text: new TextSpan(
                  text: '',
                  children: [
                    new TextSpan(
                      text: 'song title \n',
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4.0,
                        height: 1.5,
                      ),
                    ),

                    new TextSpan(
                      text: 'artist name',
                      style: new TextStyle(
                        color: Colors.white.withOpacity(0.75),
                        fontSize: 20.0,
                        letterSpacing: 3.0,
                        height: 1.5,
                      ),
                    ),


                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top:60.0,bottom: 80.0),
                child: new Row(
                  children: <Widget>[
                    new Expanded(child:new Container(),),

                    new PriviousButton(),

                    new Expanded(child: new Container(),),

                    new PlayPauseButton(),

                    new Expanded(child: new Container(),),

                    new Nextbutton(),

                    new Expanded(child: new Container(),),
                  ],

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PlayPauseButton extends StatelessWidget {
  const PlayPauseButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new RawMaterialButton(
      shape: new CircleBorder(),
      fillColor: Colors.white,
      splashColor: lightAccentColor,
      highlightColor: lightAccentColor.withOpacity(0.5),
      elevation: 10.0,
      highlightElevation: 5.0,
      onPressed: (){

      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.play_arrow,
          color: darkAccentColor,
          size: 40.0,
        ),
      ),
    );
  }
}

class PriviousButton extends StatelessWidget {
  const PriviousButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new IconButton(
      splashColor: lightAccentColor,
      highlightColor: Colors.transparent,
      icon: new Icon(
        Icons.skip_previous,
        color: Colors.white,
        size: 35,
      ),
      onPressed: (){},
    );
  }
}

class Nextbutton extends StatelessWidget {
  const Nextbutton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new IconButton(
      splashColor: lightAccentColor,
      highlightColor: Colors.transparent,
      icon: new Icon(
        Icons.skip_next,
        color: Colors.white,
        size: 35,
      ),
      onPressed: (){},
    );
  }
}





class CircleClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    // TODO: implement getClip
    return new Rect.fromCircle(
      center: new Offset(size.width / 2, size.height / 2),//圆心
      radius: min(size.width, size.height) / 2,
    );
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}