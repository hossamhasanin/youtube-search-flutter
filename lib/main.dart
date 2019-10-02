import 'package:flutter/material.dart';
import 'package:youtube_search/ui/search/search_page.dart';
import 'injection_container.dart';

void main() {
  injectDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.blue.shade600,
          accentColor: Colors.blueAccent.shade400),
      home: SearchPage(),
    );
  }
}
