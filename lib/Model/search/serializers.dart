library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:youtube_search/Model/detail/youtube_video_detail.dart';
import 'package:youtube_search/Model/detail/youtube_video_response.dart';
import 'package:youtube_search/Model/detail/youtube_video_snippet.dart';
import 'model_search.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  YoutubeSearchResults,
  ItemData,
  SearchItem,
  Thumbnail,
  Thumbnails,
  Id,
  YoutubeVideoResponse,
  YoutubeVideoDetail,
  YoutubeSnippet
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
