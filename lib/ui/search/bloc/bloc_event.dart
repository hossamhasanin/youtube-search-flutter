library search_event;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:youtube_search/Model/search/model_search.dart';

part 'bloc_event.g.dart';

abstract class SearchEvent {}

abstract class SearchInitiated extends SearchEvent
    implements Built<SearchInitiated, SearchInitiatedBuilder> {
  String get query;

  SearchInitiated._();

  factory SearchInitiated([updates(SearchInitiatedBuilder b)]) =
      _$SearchInitiated;
}

abstract class FetchNextResultPage extends SearchEvent
    implements Built<FetchNextResultPage, FetchNextResultPageBuilder> {
  BuiltList<SearchItem> get previousResults;

  FetchNextResultPage._();

  factory FetchNextResultPage([updates(FetchNextResultPageBuilder b)]) =
      _$FetchNextResultPage;
}
