// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_item;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchItem> _$searchItemSerializer = new _$SearchItemSerializer();

class _$SearchItemSerializer implements StructuredSerializer<SearchItem> {
  @override
  final Iterable<Type> types = const [SearchItem, _$SearchItem];
  @override
  final String wireName = 'SearchItem';

  @override
  Iterable<Object> serialize(Serializers serializers, SearchItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(Id)),
      'snippet',
      serializers.serialize(object.itemData,
          specifiedType: const FullType(ItemData)),
    ];

    return result;
  }

  @override
  SearchItem deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id.replace(serializers.deserialize(value,
              specifiedType: const FullType(Id)) as Id);
          break;
        case 'snippet':
          result.itemData.replace(serializers.deserialize(value,
              specifiedType: const FullType(ItemData)) as ItemData);
          break;
      }
    }

    return result.build();
  }
}

class _$SearchItem extends SearchItem {
  @override
  final Id id;
  @override
  final ItemData itemData;

  factory _$SearchItem([void Function(SearchItemBuilder) updates]) =>
      (new SearchItemBuilder()..update(updates)).build();

  _$SearchItem._({this.id, this.itemData}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('SearchItem', 'id');
    }
    if (itemData == null) {
      throw new BuiltValueNullFieldError('SearchItem', 'itemData');
    }
  }

  @override
  SearchItem rebuild(void Function(SearchItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchItemBuilder toBuilder() => new SearchItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchItem && id == other.id && itemData == other.itemData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), itemData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchItem')
          ..add('id', id)
          ..add('itemData', itemData))
        .toString();
  }
}

class SearchItemBuilder implements Builder<SearchItem, SearchItemBuilder> {
  _$SearchItem _$v;

  IdBuilder _id;
  IdBuilder get id => _$this._id ??= new IdBuilder();
  set id(IdBuilder id) => _$this._id = id;

  ItemDataBuilder _itemData;
  ItemDataBuilder get itemData => _$this._itemData ??= new ItemDataBuilder();
  set itemData(ItemDataBuilder itemData) => _$this._itemData = itemData;

  SearchItemBuilder();

  SearchItemBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id?.toBuilder();
      _itemData = _$v.itemData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SearchItem;
  }

  @override
  void update(void Function(SearchItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchItem build() {
    _$SearchItem _$result;
    try {
      _$result =
          _$v ?? new _$SearchItem._(id: id.build(), itemData: itemData.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'id';
        id.build();
        _$failedField = 'itemData';
        itemData.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SearchItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
