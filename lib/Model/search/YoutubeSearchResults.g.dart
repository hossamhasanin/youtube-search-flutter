// GENERATED CODE - DO NOT MODIFY BY HAND

part of youtube_search_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<YoutubeSearchResults> _$youtubeSearchResultsSerializer =
    new _$YoutubeSearchResultsSerializer();

class _$YoutubeSearchResultsSerializer
    implements StructuredSerializer<YoutubeSearchResults> {
  @override
  final Iterable<Type> types = const [
    YoutubeSearchResults,
    _$YoutubeSearchResults
  ];
  @override
  final String wireName = 'YoutubeSearchResults';

  @override
  Iterable<Object> serialize(
      Serializers serializers, YoutubeSearchResults object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'nextPageToken',
      serializers.serialize(object.nextPageToken,
          specifiedType: const FullType(String)),
      'items',
      serializers.serialize(object.items,
          specifiedType:
              const FullType(BuiltList, const [const FullType(SearchItem)])),
    ];

    return result;
  }

  @override
  YoutubeSearchResults deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new YoutubeSearchResultsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'nextPageToken':
          result.nextPageToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SearchItem)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$YoutubeSearchResults extends YoutubeSearchResults {
  @override
  final String nextPageToken;
  @override
  final BuiltList<SearchItem> items;

  factory _$YoutubeSearchResults(
          [void Function(YoutubeSearchResultsBuilder) updates]) =>
      (new YoutubeSearchResultsBuilder()..update(updates)).build();

  _$YoutubeSearchResults._({this.nextPageToken, this.items}) : super._() {
    if (nextPageToken == null) {
      throw new BuiltValueNullFieldError(
          'YoutubeSearchResults', 'nextPageToken');
    }
    if (items == null) {
      throw new BuiltValueNullFieldError('YoutubeSearchResults', 'items');
    }
  }

  @override
  YoutubeSearchResults rebuild(
          void Function(YoutubeSearchResultsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  YoutubeSearchResultsBuilder toBuilder() =>
      new YoutubeSearchResultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is YoutubeSearchResults &&
        nextPageToken == other.nextPageToken &&
        items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, nextPageToken.hashCode), items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('YoutubeSearchResults')
          ..add('nextPageToken', nextPageToken)
          ..add('items', items))
        .toString();
  }
}

class YoutubeSearchResultsBuilder
    implements Builder<YoutubeSearchResults, YoutubeSearchResultsBuilder> {
  _$YoutubeSearchResults _$v;

  String _nextPageToken;
  String get nextPageToken => _$this._nextPageToken;
  set nextPageToken(String nextPageToken) =>
      _$this._nextPageToken = nextPageToken;

  ListBuilder<SearchItem> _items;
  ListBuilder<SearchItem> get items =>
      _$this._items ??= new ListBuilder<SearchItem>();
  set items(ListBuilder<SearchItem> items) => _$this._items = items;

  YoutubeSearchResultsBuilder();

  YoutubeSearchResultsBuilder get _$this {
    if (_$v != null) {
      _nextPageToken = _$v.nextPageToken;
      _items = _$v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(YoutubeSearchResults other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$YoutubeSearchResults;
  }

  @override
  void update(void Function(YoutubeSearchResultsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$YoutubeSearchResults build() {
    _$YoutubeSearchResults _$result;
    try {
      _$result = _$v ??
          new _$YoutubeSearchResults._(
              nextPageToken: nextPageToken, items: items.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'YoutubeSearchResults', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
