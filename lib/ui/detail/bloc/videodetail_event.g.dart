// GENERATED CODE - DO NOT MODIFY BY HAND

part of videodetail_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ShowVideoEvent extends ShowVideoEvent {
  @override
  final String id;

  factory _$ShowVideoEvent([void Function(ShowVideoEventBuilder) updates]) =>
      (new ShowVideoEventBuilder()..update(updates)).build();

  _$ShowVideoEvent._({this.id}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('ShowVideoEvent', 'id');
    }
  }

  @override
  ShowVideoEvent rebuild(void Function(ShowVideoEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShowVideoEventBuilder toBuilder() =>
      new ShowVideoEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShowVideoEvent && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ShowVideoEvent')..add('id', id))
        .toString();
  }
}

class ShowVideoEventBuilder
    implements Builder<ShowVideoEvent, ShowVideoEventBuilder> {
  _$ShowVideoEvent _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  ShowVideoEventBuilder();

  ShowVideoEventBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShowVideoEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ShowVideoEvent;
  }

  @override
  void update(void Function(ShowVideoEventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ShowVideoEvent build() {
    final _$result = _$v ?? new _$ShowVideoEvent._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
