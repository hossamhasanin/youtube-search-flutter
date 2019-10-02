library youtube_video_snippet;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:youtube_search/Model/search/Thumbnails.dart';
import 'package:youtube_search/Model/search/serializers.dart';

part 'youtube_video_snippet.g.dart';

abstract class YoutubeSnippet
    implements Built<YoutubeSnippet, YoutubeSnippetBuilder> {
  String get title;
  String get description;
  BuiltList<String> get tags;
  Thumbnails get thumbnails;

  YoutubeSnippet._();

  factory YoutubeSnippet([updates(YoutubeSnippetBuilder b)]) = _$YoutubeSnippet;

  String toJson() {
    return json
        .encode(serializers.serializeWith(YoutubeSnippet.serializer, this));
  }

  static YoutubeSnippet fromJson(String jsonString) {
    return serializers.deserializeWith(
        YoutubeSnippet.serializer, json.decode(jsonString));
  }

  static Serializer<YoutubeSnippet> get serializer =>
      _$youtubeSnippetSerializer;
}
