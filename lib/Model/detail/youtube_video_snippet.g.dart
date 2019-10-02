// GENERATED CODE - DO NOT MODIFY BY HAND

part of youtube_video_snippet;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<YoutubeSnippet> _$youtubeSnippetSerializer =
    new _$YoutubeSnippetSerializer();

class _$YoutubeSnippetSerializer
    implements StructuredSerializer<YoutubeSnippet> {
  @override
  final Iterable<Type> types = const [YoutubeSnippet, _$YoutubeSnippet];
  @override
  final String wireName = 'YoutubeSnippet';

  @override
  Iterable<Object> serialize(Serializers serializers, YoutubeSnippet object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'tags',
      serializers.serialize(object.tags,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'thumbnails',
      serializers.serialize(object.thumbnails,
          specifiedType: const FullType(Thumbnails)),
    ];

    return result;
  }

  @override
  YoutubeSnippet deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new YoutubeSnippetBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
        case 'thumbnails':
          result.thumbnails.replace(serializers.deserialize(value,
              specifiedType: const FullType(Thumbnails)) as Thumbnails);
          break;
      }
    }

    return result.build();
  }
}

class _$YoutubeSnippet extends YoutubeSnippet {
  @override
  final String title;
  @override
  final String description;
  @override
  final BuiltList<String> tags;
  @override
  final Thumbnails thumbnails;

  factory _$YoutubeSnippet([void Function(YoutubeSnippetBuilder) updates]) =>
      (new YoutubeSnippetBuilder()..update(updates)).build();

  _$YoutubeSnippet._({this.title, this.description, this.tags, this.thumbnails})
      : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('YoutubeSnippet', 'title');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('YoutubeSnippet', 'description');
    }
    if (tags == null) {
      throw new BuiltValueNullFieldError('YoutubeSnippet', 'tags');
    }
    if (thumbnails == null) {
      throw new BuiltValueNullFieldError('YoutubeSnippet', 'thumbnails');
    }
  }

  @override
  YoutubeSnippet rebuild(void Function(YoutubeSnippetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  YoutubeSnippetBuilder toBuilder() =>
      new YoutubeSnippetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is YoutubeSnippet &&
        title == other.title &&
        description == other.description &&
        tags == other.tags &&
        thumbnails == other.thumbnails;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, title.hashCode), description.hashCode), tags.hashCode),
        thumbnails.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('YoutubeSnippet')
          ..add('title', title)
          ..add('description', description)
          ..add('tags', tags)
          ..add('thumbnails', thumbnails))
        .toString();
  }
}

class YoutubeSnippetBuilder
    implements Builder<YoutubeSnippet, YoutubeSnippetBuilder> {
  _$YoutubeSnippet _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  ListBuilder<String> _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String> tags) => _$this._tags = tags;

  ThumbnailsBuilder _thumbnails;
  ThumbnailsBuilder get thumbnails =>
      _$this._thumbnails ??= new ThumbnailsBuilder();
  set thumbnails(ThumbnailsBuilder thumbnails) =>
      _$this._thumbnails = thumbnails;

  YoutubeSnippetBuilder();

  YoutubeSnippetBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _description = _$v.description;
      _tags = _$v.tags?.toBuilder();
      _thumbnails = _$v.thumbnails?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(YoutubeSnippet other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$YoutubeSnippet;
  }

  @override
  void update(void Function(YoutubeSnippetBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$YoutubeSnippet build() {
    _$YoutubeSnippet _$result;
    try {
      _$result = _$v ??
          new _$YoutubeSnippet._(
              title: title,
              description: description,
              tags: tags.build(),
              thumbnails: thumbnails.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tags';
        tags.build();
        _$failedField = 'thumbnails';
        thumbnails.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'YoutubeSnippet', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
