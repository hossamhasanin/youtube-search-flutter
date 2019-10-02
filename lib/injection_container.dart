import 'package:kiwi/kiwi.dart' as Kiwi;
import 'package:http/http.dart' as http;
import 'package:youtube_search/Network/Repository.dart';
import 'package:youtube_search/Network/YoutubeDataSource.dart';
import 'package:youtube_search/ui/detail/bloc/bloc.dart';
import 'package:youtube_search/ui/search/bloc/search_bloc.dart';

void injectDependencies() {
  Kiwi.Container()
    ..registerInstance(http.Client())
    ..registerFactory((c) => YoutubeDataSource(c.resolve()))
    ..registerFactory((c) => Repository(c.resolve()))
    ..registerFactory((c) => SearchBloc(c.resolve()))
    ..registerFactory((c) => VideodetailBloc(c.resolve()));
}
