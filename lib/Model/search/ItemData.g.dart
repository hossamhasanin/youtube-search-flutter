// GENERATED CODE - DO NOT MODIFY BY HAND

part of item_data;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ItemData> _$itemDataSerializer = new _$ItemDataSerializer();

class _$ItemDataSerializer implements StructuredSerializer<ItemData> {
  @override
  final Iterable<Type> types = const [ItemData, _$ItemData];
  @override
  final String wireName = 'ItemData';

  @override
  Iterable<Object> serialize(Serializers serializers, ItemData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'thumbnails',
      serializers.serialize(object.thumbnails,
          specifiedType: const FullType(Thumbnails)),
    ];

    return result;
  }

  @override
  ItemData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ItemDataBuilder();

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
        case 'thumbnails':
          result.thumbnails.replace(serializers.deserialize(value,
              specifiedType: const FullType(Thumbnails)) as Thumbnails);
          break;
      }
    }

    return result.build();
  }
}

class _$ItemData extends ItemData {
  @override
  final String title;
  @override
  final String description;
  @override
  final Thumbnails thumbnails;

  factory _$ItemData([void Function(ItemDataBuilder) updates]) =>
      (new ItemDataBuilder()..update(updates)).build();

  _$ItemData._({this.title, this.description, this.thumbnails}) : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('ItemData', 'title');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('ItemData', 'description');
    }
    if (thumbnails == null) {
      throw new BuiltValueNullFieldError('ItemData', 'thumbnails');
    }
  }

  @override
  ItemData rebuild(void Function(ItemDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemDataBuilder toBuilder() => new ItemDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemData &&
        title == other.title &&
        description == other.description &&
        thumbnails == other.thumbnails;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, title.hashCode), description.hashCode),
        thumbnails.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ItemData')
          ..add('title', title)
          ..add('description', description)
          ..add('thumbnails', thumbnails))
        .toString();
  }
}

class ItemDataBuilder implements Builder<ItemData, ItemDataBuilder> {
  _$ItemData _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  ThumbnailsBuilder _thumbnails;
  ThumbnailsBuilder get thumbnails =>
      _$this._thumbnails ??= new ThumbnailsBuilder();
  set thumbnails(ThumbnailsBuilder thumbnails) =>
      _$this._thumbnails = thumbnails;

  ItemDataBuilder();

  ItemDataBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _description = _$v.description;
      _thumbnails = _$v.thumbnails?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ItemData;
  }

  @override
  void update(void Function(ItemDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ItemData build() {
    _$ItemData _$result;
    try {
      _$result = _$v ??
          new _$ItemData._(
              title: title,
              description: description,
              thumbnails: thumbnails.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'thumbnails';
        thumbnails.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ItemData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
