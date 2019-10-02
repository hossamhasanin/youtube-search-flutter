library videodetail_event;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'videodetail_event.g.dart';

abstract class VideodetailEvent {}

abstract class ShowVideoEvent extends VideodetailEvent
    implements Built<ShowVideoEvent, ShowVideoEventBuilder> {
  String get id;

  ShowVideoEvent._();

  factory ShowVideoEvent([updates(ShowVideoEventBuilder b)]) = _$ShowVideoEvent;
}
