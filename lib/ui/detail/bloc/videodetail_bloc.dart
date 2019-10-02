import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:youtube_search/Model/detail/youtube_video_error.dart';
import 'package:youtube_search/Network/Repository.dart';
import './bloc.dart';

class VideodetailBloc extends Bloc<VideodetailEvent, VideoDetailState> {
  Repository _repository;

  VideodetailBloc(this._repository);

  void getTheVideo(String id) {
    dispatch(ShowVideoEvent((b) => b..id = id));
  }

  @override
  VideoDetailState get initialState => VideoDetailState.initial();

  @override
  Stream<VideoDetailState> mapEventToState(
    VideodetailEvent event,
  ) async* {
    if (event is ShowVideoEvent) {
      yield VideoDetailState.loading();
      try {
        final video = await _repository.fetchVideoDetail(id: event.id);
        yield VideoDetailState.success(video.snippet);
      } on YoutubeNotFoundVideoError catch (e) {
        yield VideoDetailState.failure(e.message);
      }
    }
  }
}
