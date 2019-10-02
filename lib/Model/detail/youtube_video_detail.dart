library youtube_video_detail;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:youtube_search/Model/detail/youtube_video_snippet.dart';
import 'package:youtube_search/Model/search/serializers.dart';

part 'youtube_video_detail.g.dart';

abstract class YoutubeVideoDetail
    implements Built<YoutubeVideoDetail, YoutubeVideoDetailBuilder> {
  String get id;
  YoutubeSnippet get snippet;

  YoutubeVideoDetail._();

  factory YoutubeVideoDetail([updates(YoutubeVideoDetailBuilder b)]) =
      _$YoutubeVideoDetail;

  String toJson() {
    return json
        .encode(serializers.serializeWith(YoutubeVideoDetail.serializer, this));
  }

  static YoutubeVideoDetail fromJson(String jsonString) {
    return serializers.deserializeWith(
        YoutubeVideoDetail.serializer, json.decode(jsonString));
  }

  static Serializer<YoutubeVideoDetail> get serializer =>
      _$youtubeVideoDetailSerializer;
}
