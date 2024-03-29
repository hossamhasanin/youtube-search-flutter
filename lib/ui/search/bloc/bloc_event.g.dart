// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SearchInitiated extends SearchInitiated {
  @override
  final String query;

  factory _$SearchInitiated([void Function(SearchInitiatedBuilder) updates]) =>
      (new SearchInitiatedBuilder()..update(updates)).build();

  _$SearchInitiated._({this.query}) : super._() {
    if (query == null) {
      throw new BuiltValueNullFieldError('SearchInitiated', 'query');
    }
  }

  @override
  SearchInitiated rebuild(void Function(SearchInitiatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchInitiatedBuilder toBuilder() =>
      new SearchInitiatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchInitiated && query == other.query;
  }

  @override
  int get hashCode {
    return $jf($jc(0, query.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchInitiated')..add('query', query))
        .toString();
  }
}

class SearchInitiatedBuilder
    implements Builder<SearchInitiated, SearchInitiatedBuilder> {
  _$SearchInitiated _$v;

  String _query;
  String get query => _$this._query;
  set query(String query) => _$this._query = query;

  SearchInitiatedBuilder();

  SearchInitiatedBuilder get _$this {
    if (_$v != null) {
      _query = _$v.query;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchInitiated other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SearchInitiated;
  }

  @override
  void update(void Function(SearchInitiatedBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchInitiated build() {
    final _$result = _$v ?? new _$SearchInitiated._(query: query);
    replace(_$result);
    return _$result;
  }
}

class _$FetchNextResultPage extends FetchNextResultPage {
  @override
  final BuiltList<SearchItem> previousResults;

  factory _$FetchNextResultPage(
          [void Function(FetchNextResultPageBuilder) updates]) =>
      (new FetchNextResultPageBuilder()..update(updates)).build();

  _$FetchNextResultPage._({this.previousResults}) : super._() {
    if (previousResults == null) {
      throw new BuiltValueNullFieldError(
          'FetchNextResultPage', 'previousResults');
    }
  }

  @override
  FetchNextResultPage rebuild(
          void Function(FetchNextResultPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FetchNextResultPageBuilder toBuilder() =>
      new FetchNextResultPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FetchNextResultPage &&
        previousResults == other.previousResults;
  }

  @override
  int get hashCode {
    return $jf($jc(0, previousResults.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FetchNextResultPage')
          ..add('previousResults', previousResults))
        .toString();
  }
}

class FetchNextResultPageBuilder
    implements Builder<FetchNextResultPage, FetchNextResultPageBuilder> {
  _$FetchNextResultPage _$v;

  ListBuilder<SearchItem> _previousResults;
  ListBuilder<SearchItem> get previousResults =>
      _$this._previousResults ??= new ListBuilder<SearchItem>();
  set previousResults(ListBuilder<SearchItem> previousResults) =>
      _$this._previousResults = previousResults;

  FetchNextResultPageBuilder();

  FetchNextResultPageBuilder get _$this {
    if (_$v != null) {
      _previousResults = _$v.previousResults?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FetchNextResultPage other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FetchNextResultPage;
  }

  @override
  void update(void Function(FetchNextResultPageBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FetchNextResultPage build() {
    _$FetchNextResultPage _$result;
    try {
      _$result = _$v ??
          new _$FetchNextResultPage._(previousResults: previousResults.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'previousResults';
        previousResults.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FetchNextResultPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
