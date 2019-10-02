library videodetail_state;

import 'package:built_value/built_value.dart';
import 'package:youtube_search/Model/detail/youtube_video_snippet.dart';

part 'videodetail_state.g.dart';

abstract class VideoDetailState
    implements Built<VideoDetailState, VideoDetailStateBuilder> {
  bool get isLoading;
  @nullable
  YoutubeSnippet get video;
  String get error;

  bool get isInitiating => !isLoading && video == null && error.isEmpty;
  bool get isSuccess => !isLoading && video != null && error.isEmpty;

  VideoDetailState._();

  factory VideoDetailState([updates(VideoDetailStateBuilder b)]) =
      _$VideoDetailState;

  factory VideoDetailState.initial() {
    return VideoDetailState((b) => b
      .._isLoading = false
      ..video = null
      ..error = "");
  }

  factory VideoDetailState.loading() {
    return VideoDetailState((b) => b
      .._isLoading = true
      ..video = null
      ..error = "");
  }

  factory VideoDetailState.success(YoutubeSnippet video) {
    return VideoDetailState((b) => b
      .._isLoading = false
      ..video.replace(video)
      ..error = "");
  }

  factory VideoDetailState.failure(String error) {
    return VideoDetailState((b) => b
      .._isLoading = false
      ..video = null
      ..error = error);
  }
}
