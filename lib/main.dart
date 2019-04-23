import 'dart:math';

import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import './bottom_controls.dart';
import 'songs.dart';
import 'theme.dart';
import 'Myhome.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Music Player',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}


