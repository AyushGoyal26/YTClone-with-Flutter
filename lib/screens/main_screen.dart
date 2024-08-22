import 'package:flutter/material.dart';
import 'package:youtube_demo/screens/home.dart';
import 'package:youtube_demo/screens/profile.dart';
import 'package:youtube_demo/services/trending.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List screens=[Home(),Text("SHORTS"),Profile()];
  int currentIndex=0;
  Trending obj=Trending();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/e/ef/Youtube_logo.png"),
        title: Text(
          "YouTube",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        ),
        leadingWidth: 40,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.cast_connected)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(currentIndex:currentIndex,items:  [BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.subscriptions),label: "Subscriptions"),
      BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "Profile"),
      ],
      onTap: (value) {
        currentIndex=value;
        setState(() {
          
        });
      },
    
      ) , body:screens[currentIndex],
  );}
}