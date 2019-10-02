// GENERATED CODE - DO NOT MODIFY BY HAND

part of youtube_video_detail;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<YoutubeVideoDetail> _$youtubeVideoDetailSerializer =
    new _$YoutubeVideoDetailSerializer();

class _$YoutubeVideoDetailSerializer
    implements StructuredSerializer<YoutubeVideoDetail> {
  @override
  final Iterable<Type> types = const [YoutubeVideoDetail, _$YoutubeVideoDetail];
  @override
  final String wireName = 'YoutubeVideoDetail';

  @override
  Iterable<Object> serialize(Serializers serializers, YoutubeVideoDetail object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'snippet',
      serializers.serialize(object.snippet,
          specifiedType: const FullType(YoutubeSnippet)),
    ];

    return result;
  }

  @override
  YoutubeVideoDetail deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new YoutubeVideoDetailBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'snippet':
          result.snippet.replace(serializers.deserialize(value,
              specifiedType: const FullType(YoutubeSnippet)) as YoutubeSnippet);
          break;
      }
    }

    return result.build();
  }
}

class _$YoutubeVideoDetail extends YoutubeVideoDetail {
  @override
  final String id;
  @override
  final YoutubeSnippet snippet;

  factory _$YoutubeVideoDetail(
          [void Function(YoutubeVideoDetailBuilder) updates]) =>
      (new YoutubeVideoDetailBuilder()..update(updates)).build();

  _$YoutubeVideoDetail._({this.id, this.snippet}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('YoutubeVideoDetail', 'id');
    }
    if (snippet == null) {
      throw new BuiltValueNullFieldError('YoutubeVideoDetail', 'snippet');
    }
  }

  @override
  YoutubeVideoDetail rebuild(
          void Function(YoutubeVideoDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  YoutubeVideoDetailBuilder toBuilder() =>
      new YoutubeVideoDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is YoutubeVideoDetail &&
        id == other.id &&
        snippet == other.snippet;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), snippet.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('YoutubeVideoDetail')
          ..add('id', id)
          ..add('snippet', snippet))
        .toString();
  }
}

class YoutubeVideoDetailBuilder
    implements Builder<YoutubeVideoDetail, YoutubeVideoDetailBuilder> {
  _$YoutubeVideoDetail _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  YoutubeSnippetBuilder _snippet;
  YoutubeSnippetBuilder get snippet =>
      _$this._snippet ??= new YoutubeSnippetBuilder();
  set snippet(YoutubeSnippetBuilder snippet) => _$this._snippet = snippet;

  YoutubeVideoDetailBuilder();

  YoutubeVideoDetailBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _snippet = _$v.snippet?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(YoutubeVideoDetail other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$YoutubeVideoDetail;
  }

  @override
  void update(void Function(YoutubeVideoDetailBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$YoutubeVideoDetail build() {
    _$YoutubeVideoDetail _$result;
    try {
      _$result =
          _$v ?? new _$YoutubeVideoDetail._(id: id, snippet: snippet.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'snippet';
        snippet.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'YoutubeVideoDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
