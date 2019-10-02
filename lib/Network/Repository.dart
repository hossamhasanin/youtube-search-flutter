import 'package:built_collection/built_collection.dart';
import 'package:youtube_search/Model/detail/youtube_video_detail.dart';
import 'package:youtube_search/Model/detail/youtube_video_error.dart';
import 'package:youtube_search/Model/detail/youtube_video_response.dart';
import 'package:youtube_search/Model/detail/youtube_video_snippet.dart';
import 'package:youtube_search/Model/search/SearchItem.dart';
import 'package:youtube_search/Model/search/model_search.dart';
import 'package:youtube_search/Network/YoutubeDataSource.dart';

class Repository {
  YoutubeDataSource _youtubeDataSource;

  String _pagesQuery;
  String _nextPageToken;

  Repository(this._youtubeDataSource);

  Future<BuiltList<SearchItem>> searchVideos(
      {String query, String pageToken}) async {
    YoutubeSearchResults result = await _youtubeDataSource.seachVideos(
        query: query, pageToken: pageToken);
    if (result.items.isEmpty) throw NoItemsException();
    _cashePageResult(query: query, nextPageToken: result.nextPageToken);
    return result.items;
  }

  Future<BuiltList<SearchItem>> fetchNextPage() async {
    if (_pagesQuery == null) {
      throw NoPageQueryException();
    }

    if (_nextPageToken == null) {
      throw MissingPageTokenException();
    }

    print(_nextPageToken);
    YoutubeSearchResults nextPageResult = await _youtubeDataSource.seachVideos(
        query: _pagesQuery, pageToken: _nextPageToken);

    if (nextPageResult.items.isNotEmpty) {
      _cashePageResult(
          query: _pagesQuery, nextPageToken: nextPageResult.nextPageToken);
      return nextPageResult.items;
    } else {
      throw NoItemsException();
    }
  }

  Future<YoutubeVideoDetail> fetchVideoDetail({String id}) async {
    final result = await _youtubeDataSource.fetchVideoDetail(id: id);
    if (result.items.isEmpty) {
      throw YoutubeNotFoundVideoError("This video is not found");
    }
    return result.items[0];
  }

  void _cashePageResult({String query, String nextPageToken}) {
    this._pagesQuery = query;
    this._nextPageToken = nextPageToken;
  }
}

class NoItemsException implements Exception {
  final message = "No items found";
}

class NoPageQueryException implements Exception {
  final message = "No page query";
}

class MissingPageTokenException implements Exception {
  final message = "No page token";
}
