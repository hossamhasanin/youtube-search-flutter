// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SearchState extends SearchState {
  @override
  final bool isLoading;
  @override
  final String errorMess;
  @override
  final bool hasReachedEndOfResults;
  @override
  final BuiltList<SearchItem> searchResults;

  factory _$SearchState([void Function(SearchStateBuilder) updates]) =>
      (new SearchStateBuilder()..update(updates)).build();

  _$SearchState._(
      {this.isLoading,
      this.errorMess,
      this.hasReachedEndOfResults,
      this.searchResults})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('SearchState', 'isLoading');
    }
    if (errorMess == null) {
      throw new BuiltValueNullFieldError('SearchState', 'errorMess');
    }
    if (hasReachedEndOfResults == null) {
      throw new BuiltValueNullFieldError(
          'SearchState', 'hasReachedEndOfResults');
    }
  }

  @override
  SearchState rebuild(void Function(SearchStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchStateBuilder toBuilder() => new SearchStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchState &&
        isLoading == other.isLoading &&
        errorMess == other.errorMess &&
        hasReachedEndOfResults == other.hasReachedEndOfResults &&
        searchResults == other.searchResults;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, isLoading.hashCode), errorMess.hashCode),
            hasReachedEndOfResults.hashCode),
        searchResults.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchState')
          ..add('isLoading', isLoading)
          ..add('errorMess', errorMess)
          ..add('hasReachedEndOfResults', hasReachedEndOfResults)
          ..add('searchResults', searchResults))
        .toString();
  }
}

class SearchStateBuilder implements Builder<SearchState, SearchStateBuilder> {
  _$SearchState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  String _errorMess;
  String get errorMess => _$this._errorMess;
  set errorMess(String errorMess) => _$this._errorMess = errorMess;

  bool _hasReachedEndOfResults;
  bool get hasReachedEndOfResults => _$this._hasReachedEndOfResults;
  set hasReachedEndOfResults(bool hasReachedEndOfResults) =>
      _$this._hasReachedEndOfResults = hasReachedEndOfResults;

  ListBuilder<SearchItem> _searchResults;
  ListBuilder<SearchItem> get searchResults =>
      _$this._searchResults ??= new ListBuilder<SearchItem>();
  set searchResults(ListBuilder<SearchItem> searchResults) =>
      _$this._searchResults = searchResults;

  SearchStateBuilder();

  SearchStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _errorMess = _$v.errorMess;
      _hasReachedEndOfResults = _$v.hasReachedEndOfResults;
      _searchResults = _$v.searchResults?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SearchState;
  }

  @override
  void update(void Function(SearchStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchState build() {
    _$SearchState _$result;
    try {
      _$result = _$v ??
          new _$SearchState._(
              isLoading: isLoading,
              errorMess: errorMess,
              hasReachedEndOfResults: hasReachedEndOfResults,
              searchResults: _searchResults?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'searchResults';
        _searchResults?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SearchState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
