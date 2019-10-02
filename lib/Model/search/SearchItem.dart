library search_item;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:youtube_search/Model/search/Id.dart';
import 'package:youtube_search/Model/search/ItemData.dart';
import 'package:youtube_search/Model/search/serializers.dart';

part 'SearchItem.g.dart';

abstract class SearchItem implements Built<SearchItem, SearchItemBuilder> {
  Id get id;
  @BuiltValueField(wireName: "snippet")
  ItemData get itemData;

  SearchItem._();

  factory SearchItem([updates(SearchItemBuilder b)]) = _$SearchItem;

  String toJson() {
    return json.encode(serializers.serializeWith(SearchItem.serializer, this));
  }

  static SearchItem fromJson(String jsonString) {
    return serializers.deserializeWith(
        SearchItem.serializer, json.decode(jsonString));
  }

  static Serializer<SearchItem> get serializer => _$searchItemSerializer;
}
