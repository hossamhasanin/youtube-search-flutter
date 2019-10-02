library search_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:youtube_search/Model/search/SearchItem.dart';

part 'search_state.g.dart';

abstract class SearchState implements Built<SearchState, SearchStateBuilder> {
  bool get isLoading;
  String get errorMess;
  bool get hasReachedEndOfResults;
  @nullable
  BuiltList<SearchItem> get searchResults;

  bool get isInitiated =>
      !isLoading && searchResults.isEmpty && errorMess == "";

  bool get isSuccess =>
      !isLoading && searchResults.isNotEmpty && errorMess == "";

  SearchState._();

  factory SearchState([updates(SearchStateBuilder b)]) = _$SearchState;

  factory SearchState.initialte() {
    return SearchState((b) => b
      .._isLoading = false
      .._searchResults = ListBuilder<SearchItem>()
      .._errorMess = ""
      .._hasReachedEndOfResults = false);
  }

  factory SearchState.loading() {
    return SearchState((b) => b
      .._isLoading = true
      .._searchResults = ListBuilder<SearchItem>()
      .._errorMess = ""
      .._hasReachedEndOfResults = false);
  }

  factory SearchState.success(BuiltList<SearchItem> searchResults) {
    return SearchState((b) => b
      .._isLoading = false
      .._searchResults = (ListBuilder<SearchItem>()..replace(searchResults))
      .._errorMess = ""
      .._hasReachedEndOfResults = false);
  }

  factory SearchState.failure(String error, bool hasReachedEndOfResults) {
    return SearchState((b) => b
      .._isLoading = false
      .._searchResults = ListBuilder<SearchItem>()
      .._errorMess = error
      .._hasReachedEndOfResults = hasReachedEndOfResults);
  }
}
