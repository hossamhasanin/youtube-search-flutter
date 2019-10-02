import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:youtube_search/Model/search/SearchItem.dart';
import 'package:youtube_search/Model/search/YoutubeSearchError.dart';
import 'package:youtube_search/Model/search/YoutubeSearchResults.dart';
import 'package:youtube_search/Network/Repository.dart';
import 'package:youtube_search/ui/search/bloc/bloc_event.dart';
import 'package:youtube_search/ui/search/bloc/search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  Repository _repository;

  SearchBloc(this._repository) : super();

  void intialtSearch(String query) {
    dispatch(SearchInitiated((b) => b..query = query));
  }

  void nextResultPage(BuiltList<SearchItem> previosResults) {
    dispatch(
        FetchNextResultPage((b) => b..previousResults.addAll(previosResults)));
  }

  @override
  SearchState get initialState => SearchState.initialte();

  @override
  Stream<SearchState> mapEventToState(
    SearchEvent event,
  ) async* {
    if (event is SearchInitiated) {
      yield* mapSearchEvent(event);
    } else if (event is FetchNextResultPage) {
      yield* mapFetchNextPage(event);
    }
  }

  Stream<SearchState> mapSearchEvent(SearchInitiated event) async* {
    if (event.query.isEmpty) {
      yield SearchState.initialte();
    } else {
      yield SearchState.loading();

      try {
        final results =
            await _repository.searchVideos(query: event.query, pageToken: "");
        yield SearchState.success(results);
      } on NoItemsException catch (e) {
        yield SearchState.failure(e.message, false);
      } on YoutubeSearchError catch (e) {
        yield SearchState.failure(e.message, false);
      }
    }
  }

  Stream<SearchState> mapFetchNextPage(FetchNextResultPage event) async* {
    try {
      final nextPageResults = await _repository.fetchNextPage();
      yield SearchState.success(event.previousResults + nextPageResults);
    } on NoPageQueryException catch (e) {
      yield SearchState.failure(e.message, false);
    } on MissingPageTokenException catch (e) {
      // In this i am setting the hasReachedEndOfResults to true
      yield SearchState.failure(e.message, true);
    } on NoItemsException catch (e) {
      yield SearchState.failure(e.message, false);
    }
  }
}
