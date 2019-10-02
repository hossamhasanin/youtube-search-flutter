library youtube_search_result;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:youtube_search/Model/search/SearchItem.dart';
import 'package:youtube_search/Model/search/serializers.dart';

part 'YoutubeSearchResults.g.dart';

abstract class YoutubeSearchResults
    implements Built<YoutubeSearchResults, YoutubeSearchResultsBuilder> {
  String get nextPageToken;
  BuiltList<SearchItem> get items;

  YoutubeSearchResults._();

  factory YoutubeSearchResults([updates(YoutubeSearchResultsBuilder b)]) =
      _$YoutubeSearchResults;

  String toJson() {
    return json.encode(
        serializers.serializeWith(YoutubeSearchResults.serializer, this));
  }

  static YoutubeSearchResults fromJson(String jsonString) {
    return serializers.deserializeWith(
        YoutubeSearchResults.serializer, json.decode(jsonString));
  }

  static Serializer<YoutubeSearchResults> get serializer =>
      _$youtubeSearchResultsSerializer;
}
