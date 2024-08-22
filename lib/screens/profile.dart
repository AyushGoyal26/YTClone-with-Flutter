import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          CircleAvatar(
            child: Icon(Icons.person,size: 75,),minRadius: 20,maxRadius: 40,
          ),
        Text("Hello Username")
        ],
      )
    );
  }
}