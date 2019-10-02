import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:built_collection/built_collection.dart';
import 'package:youtube_search/Model/detail/youtube_video_error.dart';
import 'package:youtube_search/Model/detail/youtube_video_response.dart';
import 'package:youtube_search/Model/search/YoutubeSearchResults.dart';
import 'package:youtube_search/Model/search/model_search.dart';
import 'package:youtube_search/Network/api_key.dart';

const int MAX_RESULTS = 5;

class YoutubeDataSource {
  final http.Client client;
  final _baseSearchUrl =
      "https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=$MAX_RESULTS&type=video&key=$API_KEY";

  final _videoDetailUrl =
      "https://www.googleapis.com/youtube/v3/videos?part=snippet&key=$API_KEY";
  YoutubeDataSource(this.client);

  Future<YoutubeSearchResults> seachVideos(
      {String query, String pageToken = ""}) async {
    final urlRaw = _baseSearchUrl +
        "&q=$query" +
        (pageToken.isNotEmpty ? "&pageToken=$pageToken" : "");

    final urlEncoded = Uri.encodeFull(urlRaw);

    final response = await client.get(urlEncoded);

    print(response.statusCode.toString() + " status codek");
    if (response.statusCode == 200) {
      print("before");
      YoutubeSearchResults r = YoutubeSearchResults.fromJson(response.body);
      print("id " + r.items[0].itemData.title);
      return YoutubeSearchResults.fromJson(response.body);
    } else {
      throw YoutubeSearchError(json.decode(response.body)["error"]["message"]);
    }
  }

  Future<YoutubeVideoResponse> fetchVideoDetail({String id}) async {
    final rawUrl = _videoDetailUrl + "&id=$id";
    final encodedUrl = Uri.encodeFull(rawUrl);
    final response = await client.get(encodedUrl);

    if (response.statusCode == 200) {
      return YoutubeVideoResponse.fromJson(response.body);
    } else {
      throw YoutubeNotFoundVideoError(
          json.decode(response.body)["error"]["message"]);
    }
  }
}
