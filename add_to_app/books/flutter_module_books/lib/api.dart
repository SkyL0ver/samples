// Autogenerated from Pigeon (v0.1.17), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import
// @dart = 2.8
import 'dart:async';
import 'dart:typed_data' show Uint8List, Int32List, Int64List, Float64List;

import 'package:flutter/services.dart';

class Book {
  String title;
  String subtitle;
  String author;
  String summary;
  String publishDate;
  int pageCount;

  // ignore: unused_element
  Object encode() {
    final Map<Object, Object> pigeonMap = <Object, Object>{};
    pigeonMap['title'] = title;
    pigeonMap['subtitle'] = subtitle;
    pigeonMap['author'] = author;
    pigeonMap['summary'] = summary;
    pigeonMap['publishDate'] = publishDate;
    pigeonMap['pageCount'] = pageCount;
    return pigeonMap;
  }

  // ignore: unused_element
  static Book decode(Object message) {
    final Map<Object, Object> pigeonMap = message as Map<Object, Object>;
    return Book()
      ..title = pigeonMap['title'] as String
      ..subtitle = pigeonMap['subtitle'] as String
      ..author = pigeonMap['author'] as String
      ..summary = pigeonMap['summary'] as String
      ..publishDate = pigeonMap['publishDate'] as String
      ..pageCount = pigeonMap['pageCount'] as int;
  }
}

abstract class FlutterBookApi {
  void displayBookDetails(Book arg);
  static void setup(FlutterBookApi api) {
    {
      const BasicMessageChannel<Object> channel = BasicMessageChannel<Object>(
          'dev.flutter.pigeon.FlutterBookApi.displayBookDetails',
          StandardMessageCodec());
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object message) async {
          if (message == null) {
            return;
          }
          final Book input = Book.decode(message);
          api.displayBookDetails(input);
          return;
        });
      }
    }
  }
}

class HostBookApi {
  Future<void> cancel() async {
    const BasicMessageChannel<Object> channel = BasicMessageChannel<Object>(
        'dev.flutter.pigeon.HostBookApi.cancel', StandardMessageCodec());
    final Map<Object, Object> replyMap =
        await channel.send(null) as Map<Object, Object>;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object, Object> error =
          replyMap['error'] as Map<Object, Object>;
      throw PlatformException(
        code: error['code'] as String,
        message: error['message'] as String,
        details: error['details'],
      );
    } else {
      // noop
    }
  }

  Future<void> finishEditingBook(Book arg) async {
    final Object encoded = arg.encode();
    const BasicMessageChannel<Object> channel = BasicMessageChannel<Object>(
        'dev.flutter.pigeon.HostBookApi.finishEditingBook',
        StandardMessageCodec());
    final Map<Object, Object> replyMap =
        await channel.send(encoded) as Map<Object, Object>;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object, Object> error =
          replyMap['error'] as Map<Object, Object>;
      throw PlatformException(
        code: error['code'] as String,
        message: error['message'] as String,
        details: error['details'],
      );
    } else {
      // noop
    }
  }
}
