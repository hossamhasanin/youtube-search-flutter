import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart' as Kiwi;
import 'package:youtube_search/Model/search/model_search.dart';
import 'package:youtube_search/ui/detail/widget/detail_page.dart';
import 'package:youtube_search/ui/search/Widgets/search_bar.dart';
import 'package:youtube_search/ui/search/bloc/search_bloc.dart';
import 'package:youtube_search/ui/search/bloc/search_state.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _searchBloc = Kiwi.Container().resolve<SearchBloc>();
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      builder: (context) => _searchBloc,
      child: _buildMainScaffold(),
    );
  }

  Widget _buildMainScaffold() {
    return Scaffold(
      appBar: _buildMainAppBar(),
      body: BlocBuilder(
        bloc: _searchBloc,
        builder: (BuildContext context, SearchState state) {
          if (state.isInitiated) {
            return _showCenteredMessage("Search a video", Icons.ondemand_video);
          }

          if (state.isLoading) {
            return _showCircularProgressBar();
          }

          if (state.isSuccess) {
            return _buildVideosList(state);
          } else {
            return _showCenteredMessage(state.errorMess, Icons.error);
          }
        },
      ),
    );
  }

  Widget _buildMainAppBar() {
    return AppBar(
      title: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5.0)),
        child: Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: SearchField(),
        ),
      ),
    );
  }

  Widget _showCenteredMessage(String mess, IconData icon) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(icon, size: 40, color: Colors.black.withOpacity(.5)),
          Text(
            mess,
            style: TextStyle(color: Colors.black.withOpacity(.5), fontSize: 20),
          )
        ],
      ),
    );
  }

  Widget _buildVideosList(SearchState state) {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) =>
          _handelScrollingToTheEndOfTheList(notification, state.searchResults),
      child: ListView.builder(
        itemCount: _calculateTheListItemCount(state),
        controller: _scrollController,
        itemBuilder: (context, index) {
          return index >= state.searchResults.length
              ? _showCircularProgressBar()
              : _prepareClickableListCard(state.searchResults[index]);
        },
      ),
    );
  }

  Widget _showCircularProgressBar() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _prepareClickableListCard(SearchItem item) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (_) {
            return DetailPage(
              videoId: item.id.videoId,
            );
          },
        ));
      },
      child: _showVideoListCard(item.itemData),
    );
  }

  Widget _showVideoListCard(ItemData result) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 16 / 9,
              child:
                  Image.network(result.thumbnails.high.url, fit: BoxFit.cover),
            ),
            SizedBox(height: 5),
            Text(
              result.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(result.description),
            SizedBox(height: 5)
          ],
        ),
      ),
    );
  }

  int _calculateTheListItemCount(SearchState state) {
    int itemCount = 0;
    if (state.hasReachedEndOfResults) {
      itemCount = state.searchResults.length;
    } else {
      itemCount = state.searchResults.length + 1;
    }
    return itemCount;
  }

  bool _handelScrollingToTheEndOfTheList(
      ScrollNotification notification, BuiltList<SearchItem> results) {
    if (notification is ScrollEndNotification &&
        _scrollController.position.extentAfter == 0) {
      _searchBloc.nextResultPage(results);
    }
    return false;
  }

  @override
  void dispose() {
    _searchBloc.dispose();
    super.dispose();
  }
}
