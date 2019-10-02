import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import 'package:youtube_search/Model/search/YoutubeSearchError.dart';
import 'package:youtube_search/Model/search/YoutubeSearchResults.dart';
import 'package:youtube_search/Network/YoutubeDataSource.dart';

class MockitoClient extends Mock implements http.Client {}

void main() {
  String fixture(String name) =>
      File("test/data/$name.json").readAsStringSync();

  MockitoClient mockitoClient;
  YoutubeDataSource youtubeDataSource;

  setUp(() {
    mockitoClient = MockitoClient();
    youtubeDataSource = YoutubeDataSource(mockitoClient);
  });

  group('searchVideos', () {
    test(
      'returns YoutubeSearchResult when the call completes successfully',
      () async {
        when(
          mockitoClient.get(
            argThat(
              startsWith('https://www.googleapis.com/youtube/v3/search'),
            ),
          ),
        ).thenAnswer(
          (_) async => http.Response(
            fixture('search_results'),
            200,
            headers: {'content-type': 'application/json; charset=utf-8'},
          ),
        );

        YoutubeSearchResults result = await youtubeDataSource.seachVideos(
          query: 'resocoder',
          pageToken: 'abcd',
        );

        expect(result, TypeMatcher<YoutubeSearchResults>());
        expect(result.items.length, 2);
        expect(result.items[0].itemData.title,
            startsWith('Android Kotlin: Forecast App 01'));
      },
    );

    test('throws an error on bad request', () async {
      when(
        mockitoClient.get(
          argThat(
            startsWith('https://www.googleapis.com/youtube/v3/search'),
          ),
        ),
      ).thenAnswer(
        (_) async => http.Response(fixture('error_result'), 400),
      );

      expect(
        () => youtubeDataSource.seachVideos(
          query: 'resocoder',
          pageToken: 'abcd',
        ),
        throwsA(TypeMatcher<YoutubeSearchError>()),
      );
    });
  });
}
