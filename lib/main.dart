import 'package:flutter/material.dart';
import 'package:youtube_demo/screens/home.dart';
import 'package:youtube_demo/screens/main_screen.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,theme: ThemeData.dark(),
    home: HomeScreen(),
  ));
}