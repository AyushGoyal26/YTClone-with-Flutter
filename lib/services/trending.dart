import 'package:dio/dio.dart';
class Trending{
  final dio=Dio();
  String Channel_path="https://youtube.googleapis.com/youtube/v3/channels?part=snippet%2CcontentDetails%2Cstatistics&id=";
  String key="AIzaSyBYmXVily6poIHjOteE-D2xEzETie6zDRc";
  String path="https://youtube.googleapis.com/youtube/v3/videos?part=snippet%2CcontentDetails%2Cstatistics&part=player&chart=mostPopular&maxResults=100&regionCode=IN&key=";
  String id_path=("https://youtube.googleapis.com/youtube/v3/videos?part=snippet%2CcontentDetails%2Cstatistics%2Cplayer&chart=mostPopular&regionCode=IN&key=AIzaSyBYmXVily6poIHjOteE-D2xEzETie6zDRc");
 getdata()async{
  final response = await dio.get(path+key);
  return response.data;
  
}
}

