import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';
import "package:kiwi/kiwi.dart" as Kiwi;
import 'package:youtube_search/Model/detail/youtube_video_snippet.dart';
import 'package:youtube_search/ui/detail/bloc/bloc.dart';

class DetailPage extends StatefulWidget {
  final String videoId;

  DetailPage({Key key, this.videoId}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final _bloc = Kiwi.Container().resolve<VideodetailBloc>();

  @override
  void initState() {
    _bloc.getTheVideo(widget.videoId);
    super.initState();
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      builder: (_) => _bloc,
      child: Scaffold(
        body: BlocBuilder(
          bloc: _bloc,
          builder: (context, VideoDetailState state) {
            return CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  expandedHeight: 180,
                  // this has to be true to show the normal app bar while scrolling
                  pinned: true,
                  flexibleSpace: _collapsingAppBar(state),
                ),
                _buildDetailBody(state)
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _collapsingAppBar(VideoDetailState state) {
    if (state.isLoading) {
      return FlexibleSpaceBar();
    }

    if (state.isSuccess) {
      return FlexibleSpaceBar(
        title: Text(state.video.title,
            maxLines: 1, overflow: TextOverflow.ellipsis),
        background: Stack(
          children: <Widget>[
            Image.network(
              state.video.thumbnails.high.url,
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: [
                      0.15,
                      0.5
                    ],
                    colors: [
                      Colors.black.withOpacity(0.7),
                      Colors.transparent
                    ]),
              ),
            ),
          ],
        ),
      );
    } else {
      return FlexibleSpaceBar(
        background: _showCenteredMessage(state.error, Icons.error_outline),
      );
    }
  }

  Widget _buildDetailBody(VideoDetailState state) {
    if (state.isLoading) {
      return SliverFillRemaining(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    if (state.isSuccess) {
      return SliverPadding(
        padding: const EdgeInsets.all(8.0),
        sliver: SliverList(
          delegate: SliverChildListDelegate(<Widget>[
            SizedBox(height: 5.0),
            Text(
              state.video.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                width: MediaQuery.of(context).size.width * 2,
                child: Wrap(
                  spacing: 10,
                  children: _getTagsAsChipWidgets(state.video),
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Description',
              style: Theme.of(context).textTheme.title,
            ),
            SizedBox(height: 5),
            Text(state.video.description),
          ]),
        ),
      );
    } else {
      return SliverFillRemaining(
        child: _showCenteredMessage(state.error, Icons.error_outline),
      );
    }
  }

  List<Widget> _getTagsAsChipWidgets(YoutubeSnippet video) {
    return video.tags.map((tag) {
      return Chip(
        label: Text(tag),
      );
    }).toList();
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
}
