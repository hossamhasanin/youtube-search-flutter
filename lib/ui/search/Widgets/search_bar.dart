import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_search/ui/search/bloc/search_bloc.dart';

class SearchField extends StatefulWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _controller.selection =
            TextSelection(baseOffset: 0, extentOffset: _controller.text.length);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      focusNode: _focusNode,
      decoration: InputDecoration(
          hintText: "Search a video",
          icon: Icon(
            Icons.search,
            color: Colors.black.withOpacity(.5),
          )),
      onSubmitted: (supmiteValue) {
        if (supmiteValue.isNotEmpty) {
          BlocProvider.of<SearchBloc>(context).intialtSearch(supmiteValue);
        }
      },
    );
  }
}
