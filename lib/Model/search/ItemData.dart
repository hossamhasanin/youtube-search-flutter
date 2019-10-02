library item_data;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:youtube_search/Model/search/Thumbnails.dart';
import 'package:youtube_search/Model/search/serializers.dart';

part 'ItemData.g.dart';

abstract class ItemData implements Built<ItemData, ItemDataBuilder> {
  String get title;
  String get description;
  Thumbnails get thumbnails;

  ItemData._();

  factory ItemData([updates(ItemDataBuilder b)]) = _$ItemData;

  String toJson() {
    return json.encode(serializers.serializeWith(ItemData.serializer, this));
  }

  static ItemData fromJson(String jsonString) {
    return serializers.deserializeWith(
        ItemData.serializer, json.decode(jsonString));
  }

  static Serializer<ItemData> get serializer => _$itemDataSerializer;
}
