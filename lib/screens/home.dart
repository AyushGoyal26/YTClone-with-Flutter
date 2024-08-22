import 'package:flutter/material.dart';
import 'package:youtube_demo/screens/player.dart';
import 'package:youtube_demo/services/trending.dart';
import 'package:get_time_ago/get_time_ago.dart';
import 'package:numeral/numeral.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var data;
  var videolist;
  Trending obj=Trending();
  @override
  void initState() {
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:FutureBuilder(future: obj.getdata(), builder: (context,AsyncSnapshot<dynamic>snapshot){
        if(snapshot.hasData){
          data=snapshot.data["items"];
               return SingleChildScrollView(child:Column(children: [
                ...data.map((element){
                  return Card(
                    child:Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Column(
                        children:[
                      InkWell(onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (c)=>Player(element["id"])));
                      },child: Image.network(element["snippet"]["thumbnails"]["high"]["url"])),
                      Row(children: [
                      CircleAvatar(),
                      Expanded(child: Text(element["snippet"]["title"],style: TextStyle(fontSize: 20)))
                        ])
                      ,Row(children: [
                        // Text("CHANNEL NAME <>"),
                        Text("    "+(element["snippet"]["channelTitle"]))
                        ,Text((int.parse(element["statistics"]["viewCount"])).numeral()+" views   "),
                        Text(GetTimeAgo.parse(DateTime.parse(element["snippet"]["publishedAt"])))])
                        ]
                      ),
                    )
                  );
                }
        )],));
        }
        return CircularProgressIndicator();

        }  
        
        )
    ));
  }
}