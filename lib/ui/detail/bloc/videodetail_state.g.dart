// GENERATED CODE - DO NOT MODIFY BY HAND

part of videodetail_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VideoDetailState extends VideoDetailState {
  @override
  final bool isLoading;
  @override
  final YoutubeSnippet video;
  @override
  final String error;

  factory _$VideoDetailState(
          [void Function(VideoDetailStateBuilder) updates]) =>
      (new VideoDetailStateBuilder()..update(updates)).build();

  _$VideoDetailState._({this.isLoading, this.video, this.error}) : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('VideoDetailState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('VideoDetailState', 'error');
    }
  }

  @override
  VideoDetailState rebuild(void Function(VideoDetailStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VideoDetailStateBuilder toBuilder() =>
      new VideoDetailStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideoDetailState &&
        isLoading == other.isLoading &&
        video == other.video &&
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, isLoading.hashCode), video.hashCode), error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VideoDetailState')
          ..add('isLoading', isLoading)
          ..add('video', video)
          ..add('error', error))
        .toString();
  }
}

class VideoDetailStateBuilder
    implements Builder<VideoDetailState, VideoDetailStateBuilder> {
  _$VideoDetailState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  YoutubeSnippetBuilder _video;
  YoutubeSnippetBuilder get video =>
      _$this._video ??= new YoutubeSnippetBuilder();
  set video(YoutubeSnippetBuilder video) => _$this._video = video;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  VideoDetailStateBuilder();

  VideoDetailStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _video = _$v.video?.toBuilder();
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VideoDetailState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$VideoDetailState;
  }

  @override
  void update(void Function(VideoDetailStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$VideoDetailState build() {
    _$VideoDetailState _$result;
    try {
      _$result = _$v ??
          new _$VideoDetailState._(
              isLoading: isLoading, video: _video?.build(), error: error);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'video';
        _video?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'VideoDetailState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
